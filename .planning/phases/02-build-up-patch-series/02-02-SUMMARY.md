---
phase: 02-build-up-patch-series
plan: 02
subsystem: synthesis
tags: [maxmsp, maxpat, noise, amplitude, envelopes, line~, phasor~, modulation, mixing, multi-voice]

# Dependency graph
requires:
  - phase: 01-noise-sculpture-demo
    provides: "Output safety chain pattern, live.gain~ JSON structure, scope tap points, float slider -> sig~ pattern"
provides:
  - "04-noise-and-amplitude.maxpat: noise~ as signal source, *~ amplitude gating with slider -> sig~"
  - "05-envelopes.maxpat: line~ amplitude envelopes with toggle -> sel -> message control"
  - "06-modulation-and-mixing.maxpat: phasor~ LFO, +~ voice mixing, multi-voice architecture"
  - "TOPC-04 completed (noise~ as signal source)"
  - "TOPC-05 covered (line~ envelopes with *~)"
  - "TOPC-01 reinforced (phasor~ as continuous signal automation)"
affects: [02-03-PLAN, 04-annotation-polish]

# Tech tracking
tech-stack:
  added: []
  patterns: [noise~ amplitude gating via slider -> sig~ -> *~, toggle -> sel 0 1 -> line~ envelope, unipolar LFO via phasor~ -> cycle~ phase -> *~ 0.5 -> +~ 0.5, multi-voice mixing via +~, master level via toggle -> sel -> line~ -> *~]

key-files:
  created: [patches/04-noise-and-amplitude.maxpat, patches/05-envelopes.maxpat, patches/06-modulation-and-mixing.maxpat]
  modified: []

key-decisions:
  - "Patch 04 sums noise and cycle~ comparison tone via +~ before output chain (single live.gain~)"
  - "Patch 05 uses simple on/off envelope (not ASR) -- fade in 500ms, fade out 100ms"
  - "Patch 06 master level uses same toggle -> sel -> line~ pattern as Patch 05 for concept reinforcement"

patterns-established:
  - "Noise amplitude control: noise~ -> *~ with slider -> sig~ on right inlet"
  - "Envelope pattern: toggle -> sel 0 1 -> messages (0, 1. 500 / 0 100) -> line~ -> *~ right inlet"
  - "Unipolar LFO: phasor~ -> cycle~ 0 (phase inlet) -> *~ 0.5 -> +~ 0.5 (0 to 1 range)"
  - "Voice mixing: multiple signal sources -> +~ mix bus -> master *~ -> live.gain~ -> clip~ -> dac~"

# Metrics
duration: 6min
completed: 2026-02-14
---

# Phase 2 Plan 2: Intermediate Build-Up Patches Summary

**Three self-contained .maxpat patches teaching noise~/amplitude gating, line~ envelopes, and phasor~ modulation with multi-voice +~ mixing**

## Performance

- **Duration:** 6 min
- **Started:** 2026-02-14T22:12:18Z
- **Completed:** 2026-02-14T22:18:32Z
- **Tasks:** 3
- **Files modified:** 3

## Accomplishments
- Created 04-noise-and-amplitude.maxpat with noise~ vs cycle~ 330 comparison, slider -> sig~ -> *~ amplitude control, and two live.scope~ displays showing periodic vs aperiodic signals
- Created 05-envelopes.maxpat with toggle -> sel 0 1 -> line~ message chain creating fade-in/fade-out envelope on cycle~ 330, covering TOPC-05 with detailed annotations on line~ message format
- Created 06-modulation-and-mixing.maxpat with phasor~ 0.5 LFO driving tremolo on Voice A, detuned cycle~ 220/223 drone on Voice B, +~ voice mixing, and toggle -> line~ master level control
- All three patches have unique live.gain~ parameter_longnames (Build-04/05/06 Vol), stereo clip~ safety, ezdac~, and 15-24 comment annotations each

## Task Commits

Each task was committed atomically:

1. **Task 1: Create 04-noise-and-amplitude.maxpat** - `1f8d469` (feat)
2. **Task 2: Create 05-envelopes.maxpat** - `cb9d8a0` (feat)
3. **Task 3: Create 06-modulation-and-mixing.maxpat** - `60cf616` (feat)

## Files Created/Modified
- `patches/04-noise-and-amplitude.maxpat` - noise~ signal source with *~ amplitude gating, cycle~ 330 comparison, two scopes, loadbang init 0.3
- `patches/05-envelopes.maxpat` - line~ envelope with toggle control, two scopes (envelope shape + shaped tone), TOPC-05 coverage
- `patches/06-modulation-and-mixing.maxpat` - phasor~ LFO tremolo + detuned drone, +~ voice mixing, three scopes, master toggle/line~ level

## Decisions Made
- Patch 04 sums both noise and comparison tone through a single +~ before the output chain, rather than having separate output chains -- simpler and previews +~ for Patch 06
- Patch 05 envelope uses a simple on/off pattern (fade in 500ms, fade out 100ms) rather than a full ASR envelope -- keeps the teaching focused on the core line~ concept
- Patch 06 master level reuses the toggle -> sel -> line~ pattern from Patch 05, reinforcing the newly-learned concept in a more complex context

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered
None.

## User Setup Required
None - no external service configuration required.

## Next Phase Readiness
- All three intermediate patches complete, ready for Plan 03 (07-noise-sculpture-rebuild.maxpat)
- Object vocabulary now includes: dac~, ezdac~, cycle~, *~, sig~, number~, noise~, line~, phasor~, +~, live.gain~, clip~, live.scope~
- All patterns needed for the final rebuild have been demonstrated: output chain, amplitude gating, envelopes, modulation, mixing
- Parameter longname scheme (Build-NN Vol) established for remaining patches

## Self-Check: PASSED

- [x] patches/04-noise-and-amplitude.maxpat exists
- [x] patches/05-envelopes.maxpat exists
- [x] patches/06-modulation-and-mixing.maxpat exists
- [x] .planning/phases/02-build-up-patch-series/02-02-SUMMARY.md exists
- [x] Commit 1f8d469 exists in git log
- [x] Commit cb9d8a0 exists in git log
- [x] Commit 60cf616 exists in git log

---
*Phase: 02-build-up-patch-series*
*Completed: 2026-02-14*
