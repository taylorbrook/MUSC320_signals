---
phase: 01-noise-sculpture-demo
plan: 01
subsystem: synthesis
tags: [maxmsp, maxpat, noise-sculpture, synthesis, am, additive, line-automation, live-gain, clip]

# Dependency graph
requires: []
provides:
  - "Complete 3-voice noise sculpture synthesis engine (patches/noise-sculpture-demo.maxpat)"
  - "Looping 15-second line~ automation system with metro-driven retrigger"
  - "Output safety chain: live.gain~ -> clip~ -0.9 0.9 -> dac~"
  - "Toggle-based start/stop with click-free fade-out"
affects: [01-02-PLAN, 02-build-up-series, 04-annotation-polish]

# Tech tracking
tech-stack:
  added: [Max 9.1.2, .maxpat JSON format]
  patterns: [multi-segment line~ automation, unipolar LFO via *~ 0.5 +~ 0.5, detuned oscillator beating, metro-driven looping envelopes, live.gain~ with parameter_initial, clip~ safety limiter]

key-files:
  created: [patches/noise-sculpture-demo.maxpat]
  modified: []

key-decisions:
  - "Amplitude line~ messages tuned to start/end near 0.05 (not 0) for click-free retrigger at metro boundaries"
  - "Stereo clip~ pair (one per live.gain~ channel) rather than single mono clip~ for complete output safety"
  - "Voice 2 detuning via +~ 2 on frequency line~ signal (ring modulation creating 2 Hz beating)"
  - "Voice 3 detuning via +~ 3 on frequency line~ signal (additive synthesis with 3 Hz beating)"

patterns-established:
  - "Automation engine: toggle -> select 0 1 -> start/stop chains with t object for ordered execution"
  - "Voice architecture: frequency line~ -> oscillator -> amplitude shaping -> *~ voice level -> mix bus"
  - "Output chain: +~ mix -> live.gain~ (stereo, -12 dB default) -> clip~ -0.9 0.9 -> dac~"
  - "line~ message format: start near end value for seamless looping, total ramp time = metro interval"

# Metrics
duration: 6min
completed: 2026-02-14
---

# Phase 1 Plan 1: Noise Sculpture Synthesis Engine Summary

**3-voice evolving noise sculpture with line~-driven 15-second automation loops, AM/beating/additive synthesis, and live.gain~ -> clip~ output safety chain**

## Performance

- **Duration:** 6 min
- **Started:** 2026-02-14T04:01:22Z
- **Completed:** 2026-02-14T04:07:19Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments
- Built complete 3-voice synthesis engine: rhythmic noise (noise~ gated by unipolar LFO), tonal AM/beating (detuned cycle~ multiplication), evolving drone (detuned cycle~ addition)
- Implemented looping automation system with 6 line~ objects driven by metro 15000 via trigger fan-out, producing continuously evolving timbral and amplitude changes
- Established output safety chain with stereo clip~ -0.9 0.9 limiters and live.gain~ at -12 dB default
- Toggle start/stop with ordered execution: stop metro first then fade amplitudes; start metro which immediately triggers all automation messages

## Task Commits

Each task was committed atomically:

1. **Task 1: Create the noise sculpture .maxpat with full synthesis engine and output chain** - `a3acc59` (feat)

## Files Created/Modified
- `patches/noise-sculpture-demo.maxpat` - Complete 3-voice noise sculpture synthesis engine with automation and output safety (74 objects, 67 patchlines)

## Decisions Made
- **Amplitude message start/end tuning:** Plan's original amplitude messages ended at high values (e.g., 0.9) which would cause clicks when metro retriggers and the message restarts at 0. Changed all amplitude messages to start and end near 0.05 for seamless looping. This is a sonic quality improvement within the plan's stated flexibility ("the executor should tune them for musical quality").
- **Stereo clip~ pair:** Added a second clip~ object so both live.gain~ output channels pass through safety limiters, not just the left channel. This provides complete output protection.
- **Frequency messages return to start value:** Tuned frequency line~ messages to end near their starting values (e.g., V2 freq ends at 185 which is also its start value) to avoid pitch jumps at retrigger boundaries.

## Deviations from Plan

### Auto-fixed Issues

**1. [Rule 1 - Bug] Fixed amplitude message retrigger clicks**
- **Found during:** Task 1 (line~ message design)
- **Issue:** Plan's amplitude messages (e.g., "0, 0.8 4000, 1. 3000, 0.5 5000, 0.9 3000") ended at 0.9 but restarted at 0, creating a discontinuity that would produce audible clicks every 15 seconds
- **Fix:** Redesigned amplitude messages to ramp down to 0.05 at the end of each cycle (e.g., "0.05, 0.8 3500, 1. 3000, 0.5 4500, 0.05 4000") so retrigger transitions are inaudible
- **Files modified:** patches/noise-sculpture-demo.maxpat
- **Verification:** Message start values match end values within 0.05; total ramp times still sum to 15000ms
- **Committed in:** a3acc59 (Task 1 commit)

**2. [Rule 2 - Missing Critical] Added stereo clip~ for complete output safety**
- **Found during:** Task 1 (output stage design)
- **Issue:** Plan specified a single clip~ in the output chain, but live.gain~ outputs stereo (2 channels). A single clip~ would only protect one channel.
- **Fix:** Added a second clip~ -0.9 0.9 (obj-66) for the right channel of live.gain~, ensuring both channels are safely limited before reaching dac~
- **Files modified:** patches/noise-sculpture-demo.maxpat
- **Verification:** Both dac~ inlets receive signal exclusively from clip~ objects
- **Committed in:** a3acc59 (Task 1 commit)

---

**Total deviations:** 2 auto-fixed (1 bug, 1 missing critical safety)
**Impact on plan:** Both fixes are essential for audio safety and sonic quality. No scope creep -- both are within the plan's stated design intent.

## Issues Encountered
None - the synthesis architecture was well-specified in the plan and research documents.

## User Setup Required
None - no external service configuration required.

## Next Phase Readiness
- Synthesis engine is complete and ready for Plan 02 (UI, scopes, sliders, Presentation Mode layout)
- Patch opens in Presentation Mode by default (openinpresentation: 1)
- live.gain~ and toggle already have presentation attributes set for Plan 02 to build on
- Space reserved in patching layout for scopes and sliders (voices spread across x 30-850, mix bus at x 250)

## Self-Check: PASSED

- [x] patches/noise-sculpture-demo.maxpat exists
- [x] .planning/phases/01-noise-sculpture-demo/01-01-SUMMARY.md exists
- [x] Commit a3acc59 exists in git log

---
*Phase: 01-noise-sculpture-demo*
*Completed: 2026-02-14*
