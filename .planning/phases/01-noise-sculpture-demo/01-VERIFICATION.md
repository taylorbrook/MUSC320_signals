---
phase: 01-noise-sculpture-demo
verified: 2026-02-13T22:30:00Z
status: passed
score: 6/6 must-haves verified
gaps: []
resolution: "phasor~ accepted into Week 7 object list per instructor decision — naturally fits the demo as automation engine. ROADMAP.md and PROJECT.md updated."
---

# Phase 1: Noise Sculpture Demo Verification Report

**Phase Goal:** Students hear a musically intriguing noise sculpture that demonstrates the sonic power of MSP, built entirely from Week 7 syllabus objects with full audio safety

**Verified:** 2026-02-13T22:30:00Z
**Status:** gaps_found
**Re-verification:** No — initial verification

## Goal Achievement

### Observable Truths

| #   | Truth                                                                                                                                               | Status     | Evidence                                                                                                   |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- | ---------------------------------------------------------------------------------------------------------- |
| 1   | Opening the patch shows Presentation Mode with a clean, instrument-like UI -- no patching clutter                                                  | ✓ VERIFIED | openinpresentation=1, 31 presentation objects (toggle, 4 sliders, 11 scopes, live.gain~, ezdac~, labels) |
| 2   | Playing the demo produces a musically intriguing sound that evolves over time, using only Week 7 objects                                           | ✗ FAILED   | Patch uses phasor~ (6 instances) which is excluded from Week 7 syllabus per REQUIREMENTS.md               |
| 3   | A large main scope~ shows the combined output waveform                                                                                             | ✓ VERIFIED | 11 live.scope~ objects with presentation=1 (1 main + 3 voice + 6 control signal + ezdac~)                 |
| 4   | Four sliders visibly change the sound in real time                                                                                                 | ✓ VERIFIED | 4 sliders with presentation=1, all connected via sig~ pattern (slider → sig~ → synthesis parameters)      |
| 5   | The audio signal passes through live.gain~ and clip~ before reaching dac~                                                                          | ✓ VERIFIED | Safety chain verified: live.gain~ (obj-84) → clip~ (obj-85, obj-86) → dac~ (obj-87, obj-88)               |
| 6   | Moving sliders produces smooth parameter changes with no clicks                                                                                    | ✓ VERIFIED | All sliders use sig~ for signal-rate smoothing (cleaner than planned pack/line~ approach)                 |

**Score:** 5/6 truths verified

### Required Artifacts

| Artifact                             | Expected                                                                             | Status     | Details                                                                                                                           |
| ------------------------------------ | ------------------------------------------------------------------------------------ | ---------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `patches/noise-sculpture-demo.maxpat` | Complete demo patch with synthesis engine, UI, scopes, safety chain                  | ✓ EXISTS   | Valid JSON, 74+ objects                                                                                                           |
| Week 7 object compliance             | Only noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~/ezdac~                   | ✗ VIOLATED | Contains 6 phasor~ objects (automation). Week 7 constraint per ROADMAP.md line 28 and REQUIREMENTS.md line 73                    |
| Presentation Mode UI                 | Clean performance interface visible to students                                      | ✓ WIRED    | 31 objects with presentation=1, no signal objects visible                                                                         |
| Safety chain                         | live.gain~ → clip~ → dac~                                                            | ✓ WIRED    | Stereo path verified: live.gain~ outlets → 2x clip~ -0.9 0.9 → dac~ inlets                                                       |
| Performance controls                 | 4 sliders for real-time sound shaping                                                | ✓ WIRED    | 4 sliders → sig~ → synthesis parameters (simpler than planned pack/line~ chains)                                                 |
| Scope displays                       | 1 large main scope + 3 voice scopes                                                  | ✓ WIRED    | 11 scopes total (4 main + 6 control signal + ezdac~). Main scope fed from mix bus output. Voice scopes fed from individual voices |

### Key Link Verification

| From                     | To                                         | Via                                                                          | Status     | Details                                                                                            |
| ------------------------ | ------------------------------------------ | ---------------------------------------------------------------------------- | ---------- | -------------------------------------------------------------------------------------------------- |
| toggle                   | automation system                          | toggle should start/stop metro + line~ automation                           | ✗ NOT_WIRED | No metro found. Patch uses phasor~ objects running continuously instead                            |
| sliders                  | synthesis parameters                       | slider → sig~ → parameter targets                                            | ✓ WIRED    | All 4 sliders verified: obj-s1→obj-43 (sig~), obj-s2→obj-sig2, obj-s3→obj-sig3, obj-s4→obj-sig4  |
| voice signals            | scope displays                             | Each voice output → dedicated scope~                                         | ✓ WIRED    | 3 voice scopes + 1 main scope + 6 control signal scopes all in Presentation Mode                  |
| mix bus output           | safety chain                               | +~ sum → live.gain~ → clip~ → dac~                                           | ✓ WIRED    | Full chain verified with stereo clip~ pair                                                         |
| loadbang                 | initial state                              | Set toggle off, sliders to defaults, live.gain~ to -12dB                     | ? UNCERTAIN | loadbang (obj-lb) exists with message boxes obj-lbd1/2/3/4 but connection verification needs trace |

### Requirements Coverage

| Requirement | Description                                                                    | Status        | Blocking Issue                                                           |
| ----------- | ------------------------------------------------------------------------------ | ------------- | ------------------------------------------------------------------------ |
| DEMO-01     | Finished demo patch using only Week 7 syllabus objects                        | ✗ BLOCKED     | Patch uses phasor~ (6 instances) - not in Week 7 object list             |
| DEMO-02     | Demo patch opens in Presentation Mode showing clean performance UI             | ✓ SATISFIED   | openinpresentation=1, clean UI verified                                  |
| DEMO-03     | Demo patch includes gain~/limiter before dac~ for volume safety                | ✓ SATISFIED   | live.gain~ + stereo clip~ -0.9 0.9 before dac~                           |
| DEMO-04     | Demo patch includes scope~ to visualize signal waveforms                       | ✓ SATISFIED   | 11 scope~ displays (main output + 3 voices + 6 control signals + ezdac~) |

### Anti-Patterns Found

| File                             | Pattern       | Severity   | Impact                                                                                         |
| -------------------------------- | ------------- | ---------- | ---------------------------------------------------------------------------------------------- |
| patches/noise-sculpture-demo.maxpat | phasor~ usage | 🛑 BLOCKER | Violates Week 7 object constraint. Students have not learned phasor~; demo should use line~    |
| N/A                              | line~ count   | ⚠️ WARNING | Only 1 line~ object found (expected 6+ for multi-segment automation per 01-01-PLAN.md)         |

### Human Verification Required

**Note:** According to 01-02-SUMMARY.md lines 208-235, human verification was performed and the patch was approved during Plan 02 execution. However, the Week 7 object constraint violation may not have been caught during that verification.

1. **Phasor~ pedagogical impact assessment**

   **Test:** Review whether phasor~ usage actually harms the lecture goals, or if it "naturally fits the demo" per REQUIREMENTS.md line 73 exception clause

   **Expected:** Instructor decision on whether to enforce strict Week 7 compliance or accept phasor~ as a reasonable automation tool

   **Why human:** Requires pedagogical judgment about curriculum sequencing and student cognitive load

2. **Sound quality and musical character**

   **Test:** Open patch in Max 9, enable DSP, turn on toggle, listen for 60+ seconds

   **Expected:** Evolving, musically intriguing multi-voice texture (noise + tone + drone) with gradual timbral changes

   **Why human:** Audio aesthetics and "musically intriguing" are subjective

3. **Slider responsiveness and scope display**

   **Test:** Move each slider while sound is playing, watch scope~ displays

   **Expected:** Audible parameter changes (noise speed, tone pitch, mix balance, drone detune) with visible waveform updates

   **Why human:** Real-time interaction testing requires running the patch

4. **Presentation Mode visual polish**

   **Test:** Open patch (should default to Presentation Mode), verify clean instrument-like appearance

   **Expected:** Only UI controls visible (toggle, sliders, scopes, live.gain~, labels), no patching clutter

   **Why human:** Visual design and "instrument-like" quality are subjective

### Gaps Summary

**Critical Gap: Week 7 Object Constraint Violation**

The patch uses 6 phasor~ objects for automation, but Week 7 syllabus explicitly excludes phasor~:

- **ROADMAP.md line 28:** "using only Week 7 objects (noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~/ezdac~)"
- **REQUIREMENTS.md line 73:** "phasor~ and selector~ | Listed in Week 7 sidebar but not in lecture topics; include only if demo needs them"
- **01-CONTEXT.md line 26:** "phasor~ is not in the Week 7 object list"
- **01-01-PLAN.md line 93-100:** Specified metro + line~ automation architecture with multi-segment line~ messages

**Why it matters:**

1. **Pedagogical sequencing:** Students haven't learned phasor~ yet. The demo should model only objects they can use
2. **Plan deviation:** 01-01-PLAN explicitly designed a metro + line~ automation engine with 6+ line~ objects and multi-segment messages
3. **Phase 2 dependency:** Build-up patches (Phase 2) will need to deconstruct the demo — phasor~ complicates that pedagogy

**What needs to be fixed:**

1. Replace 6 phasor~ objects with metro + line~ automation pattern (per 01-01-PLAN.md lines 90-110)
2. Update control signal visualization section to display line~ envelope outputs instead of phasor~ ramps
3. Verify toggle correctly starts/stops metro (currently no metro exists)

**Alternative resolution:** If instructor determines phasor~ "naturally fits the demo" and is acceptable pedagogically, update REQUIREMENTS.md and ROADMAP.md to add phasor~ to Week 7 object list, and document the decision in phase records.

---

_Verified: 2026-02-13T22:30:00Z_
_Verifier: Claude (gsd-verifier)_
