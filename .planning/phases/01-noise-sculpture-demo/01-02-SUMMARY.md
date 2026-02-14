---
phase: 01-noise-sculpture-demo
plan: 02
subsystem: ui
tags: [maxmsp, maxpat, presentation-mode, slider, sig~, live-scope, number~, control-signals]

# Dependency graph
requires:
  - phase: 01-noise-sculpture-demo/01
    provides: "3-voice synthesis engine with automation and output safety chain"
provides:
  - "Presentation Mode UI with toggle, 4 labeled sliders, main scope, 3 voice scopes, live.gain~, ezdac~"
  - "Float slider → sig~ pattern for all 4 performance controls (no pack/line~ scaling chains)"
  - "Control signal visualization section showing 6 phasor automation scopes in Presentation Mode"
  - "number~ monitors on all slider sig~ outputs for value readout"
  - "Complete performance-ready noise sculpture demo patch"
affects: [02-build-up-series, 03-lecture-outline, 04-annotation-polish]

# Tech tracking
tech-stack:
  added: []
  patterns: [float-slider-sig~, number~-monitoring, live.scope~-in-presentation, control-signal-visualization, !-1.-inversion]

key-files:
  created: []
  modified: [patches/noise-sculpture-demo.maxpat]

key-decisions:
  - "Slider pattern: floatoutput=1 with min/size for direct range → sig~ (no /127. scaling, no pack/line~ ramping)"
  - "Mix slider uses !- 1. for control-domain inversion before sig~ (noise level + tone level = 1)"
  - "Phasor automation scopes added to Presentation Mode as 'control signals' section for pedagogical value"
  - "Scope tap points moved to cycle~ output (before *~ scaling) to show clean oscillator waveforms"
  - "Voice 3 detuned partial amplitude increased from 0.5 to 0.7 for richer drone beating"

patterns-established:
  - "Slider pattern: slider(floatoutput=1, min, size) → sig~ → destination (simple, no intermediate math)"
  - "Signal monitoring: sig~ output fans to both destination and number~(mode=2) for value display"
  - "Presentation Mode layout: controls top → title → main scope → voice scopes → control signals bottom"
  - "Control signal visualization: phasor scopes visible in Presentation Mode so students see modulation"

# Metrics
duration: 25min
completed: 2026-02-13
---

# Phase 1 Plan 2: Presentation Mode UI, Performance Controls, and Control Signal Visualization

**Performance-ready Presentation Mode UI with float→sig~ sliders, 4+6 scope displays, number~ monitors, and control signal visualization section**

## Performance

- **Duration:** ~25 min (including human verification and manual improvements)
- **Started:** 2026-02-13
- **Completed:** 2026-02-13
- **Tasks:** 2 (1 auto + 1 human-verify with manual improvements)
- **Files modified:** 1

## Accomplishments
- Built complete Presentation Mode UI: toggle, 4 labeled horizontal sliders, 1 large main output scope, 3 small voice scopes, live.gain~ meter, ezdac~ DSP toggle, title, background panels
- Replaced initial slider→/127.→math→pack→line~ chains with cleaner slider(floatoutput)→sig~ pattern per instructor preference
- Added control signal visualization section: 6 phasor automation scopes visible in Presentation Mode with "control signals" title and background panel — students can see the slow modulation shaping the sound
- Added number~ monitors (display mode) on all 4 slider sig~ outputs for parameter value readout
- Tuned Voice 3 detuned partial amplitude (*~ 0.5 → *~ 0.7) and moved scope tap points to cycle~ output for cleaner waveform display

## Task Commits

1. **Task 1: Add performance sliders, scope displays, and Presentation Mode layout** - `42f451c` through `848badd` (feat, multiple iterations with human feedback)
2. **Task 2: Human verification in Max 9** - Instructor verified and improved patch directly

## Files Created/Modified
- `patches/noise-sculpture-demo.maxpat` - Complete performance-ready demo with Presentation Mode UI, 4 float sliders, 10 scope displays, number~ monitors, and control signal visualization

## Decisions Made
- **Float slider → sig~ pattern:** Instructor preference over the planned /127.→math→pack→line~ chain. Simpler, more pedagogically transparent — students see a direct value-to-signal conversion
- **Control signal visualization:** Instructor added 6 phasor automation scopes to Presentation Mode. This wasn't in the original plan but adds significant pedagogical value — students can visually correlate slow modulation with sound changes
- **number~ monitors:** Added to all slider sig~ outputs so the instructor can see exact parameter values during the demo
- **Scope tap points:** Moved from post-scaling (*~) to post-cycle~ to show clean oscillator waveforms
- **Voice 3 amplitude tuning:** Detuned partial at 0.7 (was 0.5) for richer drone character

## Deviations from Plan

### Auto-fixed Issues

**1. Slider chain simplification (instructor-directed)**
- **Found during:** Human verification (Task 2)
- **Issue:** Original slider→/127.→math→pack→line~ chains were overly complex
- **Fix:** Replaced with slider(floatoutput=1, min, size) → sig~ for all 4 sliders
- **Files modified:** patches/noise-sculpture-demo.maxpat
- **Verification:** All sliders produce correct range values and audible changes

**2. Control signal visualization (instructor addition)**
- **Found during:** Human verification (Task 2)
- **Issue:** No way to see the automation signals driving the voices
- **Fix:** Added 6 phasor scopes to Presentation Mode with title and background panel
- **Files modified:** patches/noise-sculpture-demo.maxpat
- **Verification:** Scopes display in Presentation Mode below voice scopes

---

**Total deviations:** 2 (both instructor-directed improvements)
**Impact on plan:** Significant improvements to pedagogical value and code clarity. Slider pattern is simpler; control signals add a new teaching dimension.

## Issues Encountered
None — all changes were improvements identified during human verification.

## User Setup Required
None - no external service configuration required.

## Next Phase Readiness
- Complete noise sculpture demo patch ready for Phase 2 (Build-Up Series)
- Established patterns to carry forward: float slider→sig~, number~ monitoring, scope visualization
- Control signal visualization section should be referenced in Phase 3 lecture outline talking points
- Phase 4 annotation pass should document the control signals section and slider→sig~ pattern

## Self-Check: PASSED

- [x] patches/noise-sculpture-demo.maxpat exists and is valid JSON
- [x] 4 sliders with floatoutput=1 and presentation=1
- [x] 10 live.scope~ objects (4 main scopes + 6 phasor scopes)
- [x] No signal objects (*~, +~, noise~, cycle~, sig~) have presentation=1
- [x] live.gain~ has presentation=1
- [x] ezdac~ has presentation=1
- [x] toggle has presentation=1

---
*Phase: 01-noise-sculpture-demo*
*Completed: 2026-02-13*
