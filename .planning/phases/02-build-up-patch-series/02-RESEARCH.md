# Phase 2: Build-Up Patch Series - Research

**Researched:** 2026-02-14
**Domain:** Max/MSP pedagogical patch series design, .maxpat JSON authoring, concept-per-patch progression, demo deconstruction
**Confidence:** HIGH

## Summary

Phase 2 decomposes the completed noise sculpture demo into a numbered series of 7 self-contained .maxpat files, each introducing exactly one MSP concept and producing audible output. The demo patch (noise-sculpture-demo.maxpat) uses a specific set of MSP objects and patterns that dictate the decomposition order: dac~/ezdac~ for audio output, cycle~ for tone generation, sig~/number~ for control-signal bridging, noise~ with *~ for noise shaping, line~ with *~ for envelopes, phasor~ with cycle~ for LFO automation, and the complete 3-voice architecture with mixing and safety chain.

The critical constraint is that every build-up patch must be fully self-contained (no shared abstractions, no inter-patch dependencies) and must produce audible output. This means each patch needs its own complete output chain: sound source -> amplitude control -> live.gain~ -> clip~ safety -> dac~. The duplication is deliberate and pedagogically valuable -- students see the output chain pattern reinforced in every patch.

The demo patch uses phasor~ (6 instances) for all automation, not metro + line~ as originally planned. This was accepted by the instructor during Phase 1 verification. The build-up series must introduce phasor~ as a concept, which naturally fits as the "automation/modulation" step. The 7-patch progression maps cleanly to the 5 required topics (TOPC-01 through TOPC-05) plus two additional patches: one for modulation/automation (using the demo's phasor~ pattern) and one for the full rebuild.

**Primary recommendation:** Build 7 patches following the progression: (01) engaging signals with dac~/ezdac~, (02) cycle~ tone generation, (03) sig~/number~ control-signal bridge, (04) noise~ with *~ amplitude scaling, (05) line~ envelopes, (06) phasor~ modulation and multi-voice mixing, (07) complete noise sculpture rebuild. Every patch includes the live.gain~ -> clip~ -> dac~ safety chain and scope~ visualization.

## Standard Stack

### Core

| Technology | Version | Purpose | Why Standard |
|------------|---------|---------|--------------|
| Max | 9.1.1 | Runtime for .maxpat files | Current stable. Demo patch already validated in Max 9. All MSP objects used are stable since Max 5. **Confidence: HIGH** |
| .maxpat JSON format | fileversion 1 | Patch file format | JSON-based, hand-writable. Phase 1 established all needed patterns and validated by round-trip. **Confidence: HIGH** |

### MSP Objects Used Across Build-Up Series

| Object | First Appears | Purpose | Notes |
|--------|--------------|---------|-------|
| dac~ | Patch 01 | Audio output (2-channel) | Terminal object in every signal network |
| ezdac~ | Patch 01 | DSP toggle button + audio output | UI element for turning audio on/off; students click to hear |
| cycle~ | Patch 02 | Cosine wave oscillator | Frequency in Hz via left inlet; used for tones, LFOs, and phase-driven waveshaping |
| sig~ | Patch 03 | Convert control number to constant signal | Bridge between Max messages and MSP signal domain |
| number~ | Patch 03 | Display signal value / generate constant signal | Mode 2 = display only; shows signal values updating at ~4 Hz |
| noise~ | Patch 04 | White noise generator | Full-bandwidth, full-amplitude; MUST be scaled by *~ before output |
| *~ | Patch 02 | Signal multiplication (amplitude control) | Used for: amplitude scaling, AM/ring mod, envelope application, mixing |
| +~ | Patch 06 | Signal addition (voice summing, frequency offset) | Used for: mixing voices, adding detuning offset, DC offset for unipolar LFO |
| line~ | Patch 05 | Audio-rate linear ramp generator | Receives value-time pairs; key for click-free amplitude changes |
| phasor~ | Patch 06 | Sawtooth ramp 0-1 (automation driver) | Drives cycle~ phase input for smooth cyclical modulation |
| live.gain~ | Every patch | Master volume with metering | -12 dB default via parameter_initial; stereo pass-through |
| clip~ | Every patch | Hard safety limiter | clip~ -0.9 0.9 on both channels before dac~; infrastructure, not teaching object |
| live.scope~ | Most patches | Signal visualization | Shows waveform so students see what they hear |

### Control-Rate Objects (from students' Weeks 1-6 vocabulary)

| Object | Purpose in Build-Up Series |
|--------|---------------------------|
| toggle | On/off control |
| message | Store line~ target-time pairs; "start"/"stop" messages |
| comment | Annotations (the primary teaching tool in every patch) |
| loadbang | Initialize patch state on open (slider defaults, gain level) |
| sel / select | Route toggle 0/1 to separate start/stop chains |
| t / trigger | Ordered execution of multiple outputs |
| slider | Parameter control (floatoutput=1 with min/size for direct range) |
| !- | Control-domain subtraction (mix inversion: !- 1.) |
| panel | Background color regions for visual grouping |

### Alternatives Considered

| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| 7 patches | 5 patches (one per topic) | Would require some patches to introduce 2+ concepts. 7 patches with one concept each is clearer and matches the BILD-01 requirement of ~07 patches. **Use 7 patches.** |
| Separate ezdac~ and dac~ demo | Combined in same patch | Patch 01 should show both: ezdac~ as the "easy way" (click to hear), dac~ with start/stop messages as the "under the hood" way. Shows the same concept two ways. **Combine in one patch.** |
| live.scope~ (used in demo) | scope~ (classic object) | Demo patch uses live.scope~ throughout. Build-up patches should match to maintain consistency and so the final rebuild looks identical to the demo. **Use live.scope~.** |

## Architecture Patterns

### Recommended Patch Series Structure

```
patches/
    noise-sculpture-demo.maxpat          # Already exists (Phase 1)
    01-hello-signal.maxpat               # TOPC-03: dac~, ezdac~, Audio Status
    02-first-tone.maxpat                 # TOPC-04 (partial): cycle~, *~, frequency/amplitude
    03-control-meets-signal.maxpat       # TOPC-02: sig~, number~, control vs signal
    04-noise-and-amplitude.maxpat        # TOPC-04 (partial): noise~, *~ scaling
    05-envelopes.maxpat                  # TOPC-05: line~, *~ as envelope
    06-modulation-and-mixing.maxpat      # TOPC-01 + advanced: phasor~, +~, multi-voice mixing
    07-noise-sculpture-rebuild.maxpat    # BILD-04: complete rebuild resembling demo
```

### Topic-to-Patch Mapping

| Topic Requirement | Covered In | How |
|-------------------|-----------|-----|
| TOPC-01: Digital audio basics, how Max/MSP represents signals | Patches 01 + 06 | Patch 01 introduces "what is a signal" with dac~/ezdac~; Patch 06 shows sample-rate continuous automation with phasor~. Comment annotations throughout series reinforce the concept. |
| TOPC-02: Signal operators (~) differ from control data operators | Patch 03 | Side-by-side comparison: slider -> number box (control) vs slider -> sig~ -> number~ (signal). Students see the same value in both domains. |
| TOPC-03: Engaging signals: Audio Status, adc~, dac~, ezdac~, ezadc~ | Patch 01 | The "hello world" of MSP. cycle~ 440 -> gain -> dac~. Click ezdac~ to hear. Double-click dac~ to see Audio Status. |
| TOPC-04: Basic signal operators: live.gain~, cycle~, sig~, noise~, number~, +~, *~ | Patches 02, 03, 04 | Each patch introduces a subset. Patch 02: cycle~, *~, live.gain~. Patch 03: sig~, number~. Patch 04: noise~. |
| TOPC-05: Simple envelopes using line~ and *~ | Patch 05 | line~ receives value-time pairs, output multiplies the signal via *~. Toggle triggers envelope. Retriggerable. |

### Pattern 1: Universal Output Chain (Every Patch)

**What:** Every build-up patch includes the same output safety chain at the bottom of the patch, regardless of what sound source is at the top.

**When to use:** Every single patch, no exceptions.

**Structure:**
```
[sound source(s)]
    |
    v
live.gain~ (stereo, -12 dB default, parameter_initial)
    |           |
    v           v
clip~ -0.9 0.9  clip~ -0.9 0.9
    |           |
    v           v
  dac~ inlet 1   dac~ inlet 2

  ezdac~ (visible, for clicking to toggle DSP)
```

**JSON pattern (verified from Phase 1 demo patch):**
```json
{
    "box": {
        "maxclass": "live.gain~",
        "id": "obj-gain",
        "numinlets": 2,
        "numoutlets": 5,
        "outlettype": ["signal", "signal", "", "float", "list"],
        "patching_rect": [200.0, 400.0, 48.0, 136.0],
        "parameter_enable": 1,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_initial": [-12.0],
                "parameter_initial_enable": 1,
                "parameter_longname": "Volume",
                "parameter_mmax": 6.0,
                "parameter_mmin": -70.0,
                "parameter_modmode": 0,
                "parameter_shortname": "Vol",
                "parameter_type": 0,
                "parameter_unitstyle": 4
            }
        }
    }
}
```

**Confidence: HIGH** -- this exact JSON structure is validated and working in the Phase 1 demo patch.

### Pattern 2: Concept-Per-Patch with Audible Output

**What:** Each patch introduces exactly one new MSP concept on top of the previous patch's foundation. The new concept produces an audible difference -- the student can hear what the new object does.

**When to use:** All 7 build-up patches.

**Critical rule:** No silent intermediate steps. If a patch introduces sig~, the student must hear sig~ doing something (e.g., sig~ controlling cycle~ frequency from a slider). If a patch introduces noise~, the student must hear noise. This is BILD-03.

**Pedagogical progression (each step answers the question the previous step raised):**
```
01: "How do I hear anything from MSP?"          -> Hear a tone
02: "What makes that tone? Can I change it?"     -> Change frequency and amplitude
03: "How do I connect Max controls to signals?"  -> Slider controls the tone
04: "What about non-tonal sound?"                -> Hear noise, control its loudness
05: "How do I shape sound over time?"            -> Fade in/out with envelope
06: "How do I make it evolve continuously?"      -> Phasor automation, multiple voices mixed
07: "Can I build the whole demo from these?"     -> Complete noise sculpture
```

### Pattern 3: Signal Flow Layout Convention

**What:** All patches use consistent top-to-bottom layout matching Cycling '74 tutorial convention and the demo patch.

**Layout:**
```
[Title comment + concept label at top]

[Sound source(s): cycle~, noise~]          (top)
        |
[Processing: *~, +~]                      (middle)
        |
[Modulation/envelope: line~, phasor~]     (middle-bottom)
        |
[Scope display: live.scope~]              (above output)
        |
[Output chain: live.gain~ -> clip~ -> dac~] (bottom)

[Comments/annotations: to the right of objects]
```

### Pattern 4: Incremental Complexity (Each Patch Builds on Previous)

**What:** Later patches include the concepts from earlier patches, but each patch is self-contained. Patch 04 contains cycle~, *~, sig~, AND noise~ -- but noise~ is the new concept. The earlier objects are present with brief annotations ("cycle~ -- see patch 02 for details").

**Why:** Students who skip ahead or review out of order can still understand any individual patch. But students who follow in order see each new concept layered onto familiar territory.

### Anti-Patterns to Avoid

- **Silent patches:** A patch that introduces an object but produces no sound. Every patch must be audible when DSP is on. If teaching sig~, use it to control a cycle~ that produces sound.
- **Multi-concept patches:** A patch that introduces both noise~ AND line~ at once. One concept per patch, no exceptions.
- **Shared abstractions:** Using an abstraction file that multiple patches depend on. Every patch must be a single self-contained .maxpat file.
- **Inconsistent output chains:** Using gain~ in one patch and live.gain~ in another. Use the exact same output chain pattern in every patch.
- **Missing scope~:** Not including visual feedback. Scope~ should appear in most patches to reinforce the visual-sonic connection.
- **Auto-starting DSP:** Using loadbang to start DSP. Let the student click ezdac~ manually. Loadbang should only set safe defaults (slider values, gain level).

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Audio safety in each patch | Manual *~ amplitude management alone | live.gain~ (at -12 dB) + clip~ -0.9 0.9 stereo pair + dac~ | Demo patch established this exact pattern. Consistency across all 7 patches prevents any patch from being unsafe. |
| Smooth parameter changes | Direct number -> cycle~ frequency inlet | sig~ (for constant) or line~ (for ramping) | Direct number input to signal inlets works but can cause clicks. sig~ provides clean conversion; line~ provides smooth ramping. |
| Unipolar LFO (0 to 1) | Manual offset calculation | cycle~ -> *~ 0.5 -> +~ 0.5 | Demo uses this exact pattern for Voice 1 LFO. Produces 0-to-1 range from cycle~'s -1-to-1 output. Standard MSP idiom. |
| DSP toggle UI | Separate toggle + message "startdsp" | ezdac~ | ezdac~ is a self-contained DSP toggle button. Click to start/stop. Visual feedback (speaker icon lights up). Simpler for students. |

**Key insight:** The build-up patches are simpler than the demo -- each is a subset. The challenge is not finding the right objects (they are all known from the demo) but decomposing the demo into the right pedagogical order and ensuring every intermediate patch makes sound.

## Common Pitfalls

### Pitfall 1: Build-Up Patch Produces No Sound

**What goes wrong:** A patch opens, DSP is on, but nothing comes out. The student sees objects but hears silence.

**Why it happens:** Missing connections in the signal chain, or the sound source has no amplitude control set to a non-zero value. Common in patches that teach concepts "about" signals without actually generating audio.

**How to avoid:**
- Every patch must have a complete signal chain from source to dac~.
- Use loadbang to set initial values that produce audible output (not zero/silence).
- Patch 01 (hello signal) should produce sound immediately when ezdac~ is clicked -- a sustained cycle~ 440 tone.
- Test every patch by opening it fresh and clicking ezdac~. Sound must come out.

**Warning signs:** Any patch where the signal chain has a gap (e.g., cycle~ not connected to *~ not connected to live.gain~).

### Pitfall 2: Inconsistent live.gain~ Parameter Names Across Patches

**What goes wrong:** Max throws an error or silently ignores parameter_initial because two live.gain~ objects in different patches share the same parameter_longname ("Master Volume"). When both patches are open simultaneously, parameter name collision occurs.

**Why it happens:** live.gain~ requires unique parameter_longname values across all open patches. Max's parameter system is global.

**How to avoid:**
- Give each patch's live.gain~ a unique parameter_longname: "Volume 01", "Volume 02", etc.
- Or use a consistent naming scheme: "Build-01 Vol", "Build-02 Vol", etc.
- The demo patch already uses "Master Volume" -- build-up patches must use different names.

**Warning signs:** live.gain~ slider not responding, or jumping to unexpected values when multiple patches are open.

### Pitfall 3: Patch 07 Does Not Match the Demo

**What goes wrong:** The final build-up patch (07) sounds noticeably different from the opening demo, undermining the "we rebuilt it from scratch" narrative.

**Why it happens:** Small differences in parameter values, phasor~ rates, automation scaling, or voice levels accumulate to a different overall sound character.

**How to avoid:**
- Patch 07 should use the exact same object configuration, parameter values, and phasor~ rates as the demo patch.
- Copy the signal processing architecture directly from noise-sculpture-demo.maxpat.
- The only acceptable differences: layout/positioning, comment text, possibly simplified UI (no Presentation Mode needed if the demo already provides the polished UI).
- A/B test by opening both patches and switching between them with DSP on.

**Warning signs:** Side-by-side listening reveals different timbral character, different modulation rates, or different loudness.

### Pitfall 4: Scope~ Not Showing Useful Waveforms

**What goes wrong:** scope~ displays show a flat line, or a blur of noise that provides no pedagogical value.

**Why it happens:** Scope tap point is at the wrong place in the signal chain (e.g., after amplitude scaling to near-zero, or on raw noise without any shaping). The demo patch learned this lesson: scope tap points were moved to cycle~ output (before *~ scaling) for clean waveform display.

**How to avoid:**
- Place scope~ after the signal source but before heavy amplitude scaling.
- For cycle~ tones: tap the cycle~ output directly to show the clean cosine wave.
- For noise~: scope~ shows noise character but is less pedagogically useful than for periodic signals. Consider placing scope~ after *~ envelope multiplication to show the envelope shape imposed on noise.
- Use the same live.scope~ object (not classic scope~) as the demo for visual consistency.

**Warning signs:** Scope shows flat line (signal too quiet) or solid block (signal too complex/fast to resolve).

### Pitfall 5: Build-Up Patches Accidentally Use Objects Not Yet Introduced

**What goes wrong:** Patch 03 uses line~ even though line~ is not introduced until Patch 05. A student studying Patch 03 encounters an unexplained object.

**Why it happens:** When building patches that need smooth parameter changes, it is natural to reach for line~ even before it is the focus concept. The slider -> sig~ pattern avoids this for parameter control, but amplitude fading is harder without line~.

**How to avoid:**
- Strict object budget per patch. Each patch may only use objects introduced in that patch or earlier patches:
  - Patch 01: dac~, ezdac~, cycle~ (for the test tone), *~ (for amplitude), live.gain~, clip~, live.scope~
  - Patch 02: + cycle~ with frequency/amplitude parameters
  - Patch 03: + sig~, number~
  - Patch 04: + noise~
  - Patch 05: + line~
  - Patch 06: + phasor~, +~
  - Patch 07: all objects
- Exception: clip~ and live.gain~ appear in every patch as safety infrastructure, not as teaching objects. They are introduced once (Patch 01) and silently reused.

**Warning signs:** An object appears in a patch before its introduction patch.

### Pitfall 6: Concept Ordering Fails to Produce Audible Output

**What goes wrong:** The planned concept order creates a patch that cannot produce sound. For example, if noise~ were introduced before *~ (amplitude control), the noise patch would need *~ to be safe but *~ has not been taught yet.

**Why it happens:** Some MSP objects are dangerous without amplitude control (*~ is needed before noise~ reaches dac~). The concept order must account for safety dependencies, not just pedagogical logic.

**How to avoid:**
- The proposed order handles this: Patch 01 already introduces *~ as part of the basic "hear a tone" chain (cycle~ -> *~ 0.5 -> live.gain~ -> dac~). By Patch 04 (noise~), students have seen *~ three times.
- *~ is introduced as a utility in Patch 01-02, not as a "concept." Its deeper meaning (amplitude modulation, ring modulation) emerges in Patches 04-06.
- Similarly, live.gain~ appears in every patch but is only deeply explained in Patch 02 where amplitude is the focus.

**Warning signs:** A patch in the series that requires an object the student has not seen yet.

## Code Examples

### Example 1: Patch 01 -- Minimal "Hello Signal" Patch

The simplest possible MSP patch that produces audible output:

```
[Signal flow]

cycle~ 440 -----> *~ 0.5 -----> live.gain~ --> clip~ -0.9 0.9 --> dac~
                                     |              clip~ -0.9 0.9 --> dac~
                                     v
                               live.scope~

ezdac~ (visible, click to toggle DSP)
```

**Objects:** cycle~ 440, *~ 0.5, live.gain~, clip~ (x2), dac~, ezdac~, live.scope~
**Sound:** A steady 440 Hz sine tone at moderate volume.
**Teaching:** "Click ezdac~ to turn on DSP. You hear a tone. Double-click dac~ to see the Audio Status panel. This is the MSP equivalent of the Max Audio Status window."
**Annotations:** Label every object. "cycle~ 440 -- generates a cosine wave at 440 Hz (A above middle C)." "ezdac~ -- click this to start/stop audio processing (like a power switch for MSP)."

### Example 2: Patch 02 -- First Tone (Frequency and Amplitude)

Introduces cycle~ parameters and *~ as amplitude control:

```
[Signal flow]

cycle~ -----> *~ -----> live.gain~ --> clip~ stereo --> dac~
  ^            ^
  |            |
 440          0.5        (typed arguments -- explain what they mean)

Also show: cycle~ 220, cycle~ 880 side by side for frequency comparison
```

**New concept:** Changing cycle~ frequency changes pitch. Changing *~ factor changes loudness.
**Sound:** Tones at different pitches and volumes.
**Teaching:** "440 is Hertz -- cycles per second. A4 is 440 Hz. Double it (880) and you go up an octave."

### Example 3: Patch 03 -- Control Meets Signal (sig~ and number~)

The critical bridge between Max and MSP:

```
[Side-by-side comparison]

LEFT SIDE (control domain):               RIGHT SIDE (signal domain):
slider --> number box                      slider --> sig~ --> number~ (mode 2)
  "updates when you move"                    "converts to continuous signal"
                                           sig~ --> cycle~ frequency inlet
                                           cycle~ --> *~ 0.5 --> live.gain~ --> out
```

**New concept:** sig~ converts a Max number into a constant signal. number~ displays a signal's value. The slider controls cycle~ frequency in real time via sig~.
**Sound:** A tone whose pitch changes when the slider moves.
**Teaching:** "In Max, values only update when a message arrives. In MSP, signals flow continuously. sig~ is the bridge -- it takes a Max number and turns it into a steady signal stream."

### Example 4: Patch 05 -- Envelopes with line~ and *~

The core envelope technique:

```
[Signal flow]

cycle~ 330 -----> *~ <-------- line~
                   |               ^
                   v               |
             live.gain~ ...    toggle --> sel 0 1
                                          |     |
                                          v     v
                                      "0 100"  "0, 1. 500, 0. 500"
                                      (fade    (attack-sustain-release:
                                       out)     ramp to 1 in 500ms,
                                                hold, ramp to 0 in 500ms)
```

**New concept:** line~ receives value-time pairs and generates smooth ramps. Multiplying a signal by line~'s output via *~ creates an amplitude envelope -- the sound fades in and out.
**Sound:** A tone that fades in over 500ms when toggle is turned on, and fades out over 100ms when turned off.
**Teaching:** "line~ is the signal version of line (which you already know). It ramps smoothly between values. Multiply the tone by this ramp and you get an envelope -- the sound's volume shape over time."

### Example 5: Patch 06 -- Modulation and Multi-Voice Mixing

Introduces phasor~, +~ for mixing, and the concept of automation:

```
[Voice A: Modulated tone]

phasor~ 0.5 --> cycle~ 0 (phase input) --> *~ 0.5 --> +~ 0.5
                                            (unipolar 0-1 LFO)
                                                |
                                                v
cycle~ 330 ---------> *~ <--- LFO output     (AM: tone amplitude modulated)
                       |
                       v
                      +~ ---------> live.gain~ --> clip~ stereo --> dac~
                       ^
                       |
[Voice B: Detuned drone]
cycle~ 220 -----> +~
cycle~ 223 --> *~ 0.7 --> +~
                (detuned, lower amplitude, summed via +~)
```

**New concepts:** phasor~ generates a 0-to-1 ramp that drives cycle~'s phase input for smooth cyclical modulation. +~ sums two voices together. Multiple voices create richer sound.
**Sound:** A modulated tone (tremolo from phasor~ LFO) plus a beating drone (detuned cycle~ pair). Both voices mixed via +~.
**Teaching:** "phasor~ is like metro for signals -- it generates a repeating ramp. Feed it to cycle~ and you get a smooth, cycling modulation. +~ adds signals together, so we can mix multiple voices into one output."

### Example 6: .maxpat JSON Boilerplate for a Build-Up Patch

Every build-up patch starts with this validated structure:

```json
{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [100.0, 100.0, 900.0, 700.0],
        "default_fontsize": 12.0,
        "boxes": [
            ... objects here ...
        ],
        "lines": [
            ... connections here ...
        ]
    }
}
```

**Key differences from demo patch:**
- `openinpresentation`: omitted (or 0) -- build-up patches show patching view by default so students see the objects
- `rect`: slightly smaller window than demo since build-up patches are simpler
- `description`: include patch number and concept name

**Confidence: HIGH** -- this JSON boilerplate is validated from Phase 1.

## Detailed Patch Decomposition Plan

### Patch 01: Hello Signal (TOPC-03)

**Filename:** `01-hello-signal.maxpat`
**Concept:** Engaging signals -- how to turn on audio and hear something in MSP
**Objects introduced:** dac~, ezdac~, cycle~ (as test tone source), *~ (as basic amplitude scalar), live.gain~, clip~, live.scope~
**Sound:** A sustained 440 Hz tone at safe volume

**What the student sees:**
- cycle~ 440 generates the test tone
- *~ 0.5 scales it to half amplitude
- live.gain~ provides volume control with metering
- clip~ prevents any output exceeding safe levels
- dac~ sends the signal to speakers
- ezdac~ provides a clickable DSP toggle
- live.scope~ shows the cosine waveform
- Double-clicking dac~ opens the Audio Status panel

**Annotations focus:** "What is ezdac~?", "What is dac~?", "What does Audio Status show?", "Why do we need gain control?"

**TOPC-01 coverage:** Comment annotations explain that MSP processes audio as streams of numbers at 44,100 samples per second. The scope~ shows these numbers as a waveform.

### Patch 02: First Tone (TOPC-04 partial)

**Filename:** `02-first-tone.maxpat`
**Concept:** cycle~ as a tone generator, frequency and amplitude as parameters
**Objects introduced:** cycle~ parameters (frequency argument, amplitude via *~)
**Sound:** Multiple tones at different frequencies; amplitude comparison

**What the student sees:**
- cycle~ with different frequency arguments (220, 440, 880) showing octave relationships
- *~ with different scaling factors (0.25, 0.5, 1.0) showing amplitude differences
- live.scope~ showing how frequency changes the waveform density and amplitude changes the height
- Only the primary tone goes to the output chain; comparison tones have their own scope~ displays

**Annotations focus:** "440 = A above middle C", "Double the frequency = up one octave", "Multiply amplitude by 0.5 = half as loud"

### Patch 03: Control Meets Signal (TOPC-02)

**Filename:** `03-control-meets-signal.maxpat`
**Concept:** sig~ and number~ bridge the control-signal divide
**Objects introduced:** sig~, number~ (mode 2 for display)
**Sound:** A tone whose pitch changes via slider -> sig~ -> cycle~ frequency

**What the student sees:**
- Left section: slider -> number box (control domain, students recognize this)
- Right section: same slider -> sig~ -> number~ (signal domain, new)
- sig~ output connected to cycle~ frequency inlet -- slider controls pitch
- live.scope~ shows waveform changing as slider moves

**Annotations focus:** "sig~ converts a single number into a continuous signal", "number~ displays the signal's value (updates ~4 times per second)", "This slider value travels two paths: one familiar (number box), one new (sig~)"

**TOPC-02 coverage:** The side-by-side layout directly shows how signal operators (~) differ from control operators. Comments explain: "In Max, the number box updates only when you change the slider. In MSP, sig~ continuously outputs the value at 44,100 times per second -- that's what the ~ means."

### Patch 04: Noise and Amplitude (TOPC-04 continued)

**Filename:** `04-noise-and-amplitude.maxpat`
**Concept:** noise~ as a non-periodic signal source, *~ as amplitude gating
**Objects introduced:** noise~ (new sound source)
**Sound:** Noise at controlled amplitude; contrast with cycle~ tone

**What the student sees:**
- noise~ connected to *~ for amplitude control (slider -> sig~ -> *~ right inlet)
- cycle~ tone also present (from previous patches) for comparison
- live.scope~ on both noise~ and cycle~ outputs showing the visual difference
- *~ demonstrated as a general-purpose amplitude tool: "same object, same purpose, different source"

**Annotations focus:** "noise~ generates random values at every sample -- this is white noise", "WITHOUT *~ controlling its amplitude, noise~ at full blast would be painfully loud", "scope~ shows the chaos of noise vs the clean wave of cycle~"

### Patch 05: Envelopes (TOPC-05)

**Filename:** `05-envelopes.maxpat`
**Concept:** line~ with *~ creates amplitude envelopes that shape sound over time
**Objects introduced:** line~ (new), sel/select for toggle routing
**Sound:** A tone that fades in when started and fades out when stopped, with a retriggerable envelope shape

**What the student sees:**
- cycle~ 330 -> *~ (envelope) -> output chain
- line~ connected to *~ right inlet (the envelope signal)
- toggle -> sel 0 1 routing to two message boxes:
  - sel 1 -> message "0, 1. 500" (fade in to full amplitude over 500ms)
  - sel 0 -> message "0 100" (fade out to silence over 100ms)
- live.scope~ showing the envelope shape (line~ output) and the resulting shaped tone
- Comment: "line~ is the signal version of 'line' which you already know from Max"

**Annotations focus:** "0, 1. 500 means: start at 0, ramp to 1.0 over 500 milliseconds", "Multiplying the tone by this ramp is like turning a volume knob from off to full over half a second", "Try changing 500 to 2000 -- hear the difference?"

**TOPC-05 explicit coverage:** This patch IS Topic 5. The envelope is the central concept.

### Patch 06: Modulation and Mixing

**Filename:** `06-modulation-and-mixing.maxpat`
**Concept:** phasor~ drives continuous modulation; +~ mixes multiple voices
**Objects introduced:** phasor~ (new), +~ for voice mixing (new in mixing context)
**Sound:** Two voices mixed together: an amplitude-modulated tone (tremolo via phasor~ LFO) and a detuned drone (beating effect)

**What the student sees:**
- Voice A: phasor~ 0.5 -> cycle~ 0 (phase input) -> *~ 0.5 -> +~ 0.5 (unipolar LFO) -> *~ on cycle~ 330 output (tremolo)
- Voice B: cycle~ 220 + cycle~ 223 via +~ (detuned drone with 3 Hz beating)
- Both voices summed via +~ before the output chain
- Multiple live.scope~ displays: one for each voice, one for the LFO signal, one for the mixed output
- Toggle -> line~ master level for start/stop (reusing Patch 05 concept)

**Annotations focus:** "phasor~ generates a repeating ramp from 0 to 1", "Feeding phasor~ to cycle~'s phase inlet creates smooth cyclical modulation", "+~ adds signals just like + adds numbers -- here it mixes two voices into one", "The 3 Hz difference between 220 and 223 creates a gentle beating effect"

### Patch 07: Noise Sculpture Rebuild (BILD-04)

**Filename:** `07-noise-sculpture-rebuild.maxpat`
**Concept:** All concepts combined to recreate the demo
**Objects introduced:** None new -- this patch uses everything from 01-06
**Sound:** Should audibly resemble the opening demo (BILD-04)

**What the student sees:**
- 3-voice architecture matching the demo:
  - Voice 1: noise~ modulated by unipolar LFO cycle~ (noise speed from slider via sig~)
  - Voice 2: Two detuned cycle~ multiplied (ring mod), amplitude from phasor~ automation
  - Voice 3: Two detuned cycle~ summed (additive drone), frequency from phasor~ automation
- 6 phasor~ automation chains (matching demo rates: 0.071, 0.053, 0.041, 0.062, 0.031, 0.047)
- 4 sliders: noise speed, tone pitch, drone mix, drone detune (matching demo)
- Toggle -> sel 0 1 -> line~ master level for start/stop
- Full output chain with live.scope~ displays

**Critical:** Use the exact same parameter values as the demo patch -- phasor~ rates, *~ scaling factors, +~ offsets, voice levels. This ensures BILD-04 compliance (audibly resembles the demo).

## Scope~ Usage Strategy (BILD-06)

| Patch | Scope~ Displays | What They Show | Pedagogical Purpose |
|-------|----------------|----------------|---------------------|
| 01 | 1 | cycle~ 440 output | "This is what a sound wave looks like" |
| 02 | 2-3 | Multiple cycle~ at different frequencies | "Higher frequency = more cycles per screen" |
| 03 | 1 | cycle~ output controlled by sig~ | "Watch the waveform change as you move the slider" |
| 04 | 2 | noise~ vs cycle~ | "Noise looks chaotic; cycle~ looks periodic" |
| 05 | 2 | line~ envelope + shaped tone | "The envelope shapes the tone's amplitude over time" |
| 06 | 3-4 | LFO signal, each voice, mixed output | "The LFO signal shapes the amplitude cyclically" |
| 07 | 4+ | Matching demo layout | "Same signals as the demo -- we built it all" |

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Classic scope~ object | live.scope~ | Max 7+ (Live integration) | live.scope~ has better rendering and can display in Presentation Mode. Demo uses live.scope~ exclusively. Build-up patches must match. |
| gain~ for volume | live.gain~ | Max 5+ | live.gain~ has metering, dB scaling, parameter storage. Standard in all modern Max patches. |
| Manual slider -> /127. -> pack -> line~ | slider (floatoutput=1, min, size) -> sig~ | Phase 1 instructor decision | Simpler, more transparent. Build-up patches MUST use this pattern, not the old scaling chain. |
| metro + line~ for automation | phasor~ -> cycle~ (phase input) | Phase 1 implementation | Demo uses phasor~ for all 6 automation chains. Build-up series must teach phasor~ to reach this architecture. |

## Open Questions

1. **Whether Patch 07 needs Presentation Mode**
   - What we know: The demo patch opens in Presentation Mode by default. Patch 07 is a "rebuild" that should match the demo.
   - What's unclear: Whether Patch 07 should also have Presentation Mode (full UI rebuild) or just the patching-view signal architecture (matching the demo's signal flow without the polished UI).
   - Recommendation: Patch 07 should focus on the signal architecture in patching view. The demo patch IS the Presentation Mode experience. Duplicating the full UI adds complexity without pedagogical value. Students compare Patch 07's "under the hood" view to the demo's polished exterior -- reinforcing the "peek behind the curtain" narrative.

2. **How many live.scope~ displays per patch for performance**
   - What we know: The demo uses 11 live.scope~ objects without performance issues (validated in Max 9). Build-up patches are simpler and will have fewer scopes.
   - What's unclear: Whether 3-4 scopes in Patches 06/07 cause issues on the classroom machine.
   - Recommendation: Use 2-4 scopes per patch. This is well within safe limits. If performance issues arise, reduce scope calccount.

3. **Whether to include adc~/ezadc~ in Patch 01**
   - What we know: TOPC-03 lists adc~, dac~, ezdac~, ezadc~ as objects for "engaging signals." The demo does not use adc~ (microphone input).
   - What's unclear: Whether to demonstrate adc~ even though it is not used in the demo. Including adc~ risks classroom feedback.
   - Recommendation: Mention adc~/ezadc~ in comment annotations ("adc~ is the input equivalent of dac~ -- it brings microphone audio INTO Max") but do not wire them into the signal chain. Feedback risk and irrelevance to the demo make it a poor candidate for live demonstration.

4. **Whether build-up patches need the !- 1. mix inversion pattern**
   - What we know: The demo uses !- 1. to invert slider 3 (noise/tone mix) so one slider controls both noise level (direct) and tone+drone level (inverted). This is a control-domain trick, not an MSP concept.
   - What's unclear: Whether this pattern should appear in any build-up patch before Patch 07.
   - Recommendation: Introduce it only in Patch 07 (the full rebuild) where the mix slider is needed. In Patch 06, use separate amplitude controls for each voice. The !- 1. pattern is a control-domain convenience, not an MSP teaching point.

5. **TOPC-01 distribution across patches**
   - What we know: TOPC-01 (basic explanation of digital audio and how Max/MSP represents signals) is a conceptual topic, not tied to a single object.
   - What's unclear: Whether TOPC-01 needs a dedicated patch or can be covered via annotations across multiple patches.
   - Recommendation: TOPC-01 is covered primarily through comment annotations in Patch 01 (explaining what signals are, sample rate, continuous vs discrete) and reinforced in Patch 03 (sig~ as the bridge between control and signal domains). It does not need its own standalone patch. The whiteboard diagrams in Phase 3 will carry the deeper conceptual explanation.

## Sources

### Primary (HIGH confidence)
- Phase 1 demo patch (patches/noise-sculpture-demo.maxpat) -- complete signal architecture reverse-engineered and documented above. All object configurations, parameter values, and connection patterns are directly from the validated working patch.
- Phase 1 Research (01-RESEARCH.md) -- synthesis patterns, .maxpat JSON format, safety chain architecture. All verified by round-trip through Max 9.
- Phase 1 Summaries (01-01-SUMMARY.md, 01-02-SUMMARY.md) -- established patterns (float slider -> sig~, scope tap points, stereo clip~, parameter_initial for live.gain~).
- Phase 1 Verification (01-VERIFICATION.md) -- phasor~ accepted into Week 7 object list; Presentation Mode validated.
- Project Architecture Research (.planning/research/ARCHITECTURE.md) -- self-contained patch pattern, concept-per-patch progression, annotation conventions. **Confidence: HIGH**

### Secondary (MEDIUM confidence)
- [MSP Basics Tutorial 1: Test Tone](https://docs.cycling74.com/learn/articles/05_mspbasicchapter01/) -- amplitude safety, gain~ before dac~, cycle~ -> gain~ -> dac~ as minimal viable MSP patch. **Confidence: HIGH** (official Cycling '74 docs)
- [MSP Audio Input and Output](https://docs.cycling74.com/learn/articles/04_mspaudioio/) -- dac~, ezdac~, adc~, Audio Status panel. **Confidence: HIGH** (official Cycling '74 docs)
- [MSP Basics Tutorial 2: Adjustable Oscillator](https://docs.cycling74.com/max7/tutorials/05_mspbasicchapter02) -- line~ with *~ for smooth amplitude changes, message format "$1 50" for 50ms ramp. **Confidence: HIGH** (official Cycling '74 docs)
- [How MSP Works](https://docs.cycling74.com/max7/tutorials/03_msphowmspworks) -- signal vs control rate, sig~ and snapshot~ as bridges, tilde convention. **Confidence: HIGH** (official Cycling '74 docs)
- [MSP Synthesis Tutorial 1: Additive Synthesis](https://docs.cycling74.com/learn/articles/06_synthesischapter01/) -- detuned oscillators, beating, partial amplitude control. **Confidence: HIGH**
- [Max Cookbook: Getting Started with Max and MSP](https://dobrian.github.io/cmp/topics/intro-to-max-and-msp/1.Getting-started-with-Max-and-MSP.html) -- pedagogical patterns for introducing MSP. **Confidence: MEDIUM**
- [Teaching Artists to MaxMSP (Medium article)](https://medium.com/@drawclose/teaching-artists-to-maxmsp-pedagogy-655ca5b2e198) -- guided inquiry pedagogy, progressive disclosure. **Confidence: MEDIUM**

### Tertiary (LOW confidence)
- None. All claims are backed by the validated demo patch or official Cycling '74 documentation.

## Metadata

**Confidence breakdown:**
- Patch decomposition (7-patch series): HIGH -- progression directly follows Cycling '74 official tutorial ordering and maps cleanly to the 5 required topics + modulation + rebuild
- Object configurations: HIGH -- all JSON patterns validated in the Phase 1 demo patch round-trip
- Pedagogical ordering: HIGH -- matches Cycling '74's own MSP tutorial sequence (test tone -> adjustable oscillator -> signals vs control -> etc.)
- BILD-04 compliance (final patch resembles demo): HIGH -- using exact parameter values from the demo patch ensures sonic match
- Audio safety per patch: HIGH -- same output chain pattern as demo, validated working

**Research date:** 2026-02-14
**Valid until:** 2026-03-15 (stable domain; all patterns established and validated in Phase 1)
