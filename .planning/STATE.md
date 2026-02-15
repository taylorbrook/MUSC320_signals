# Project State

## Project Reference

See: .planning/PROJECT.md (updated 2026-02-13)

**Core value:** Students leave understanding that MSP signal objects (~) are a fundamentally different (and sonically powerful) way of working in Max -- and they have annotated patches they can study and experiment with on their own.
**Current focus:** Phase 3: Lecture Outline and Diagrams -- COMPLETE. Ready for Phase 4.

## Current Position

Phase: 3 of 4 (Lecture Outline and Diagrams) -- COMPLETE
Plan: 2 of 2 in current phase (all plans complete)
Status: Phase complete, awaiting verification
Last activity: 2026-02-14 -- Completed 03-02-PLAN.md (visual aids: SVG diagrams + comparison patch, instructor verified)

Progress: [########..] 80%

## Performance Metrics

**Velocity:**
- Total plans completed: 7
- Average duration: 9min
- Total execution time: 1.0 hours

**By Phase:**

| Phase | Plans | Total | Avg/Plan |
|-------|-------|-------|----------|
| 01-noise-sculpture-demo | 2 | 31min | 16min |
| 02-build-up-patch-series | 3 | 15min | 5min |
| 03-lecture-outline-and-diagrams | 2 | 12min | 6min |

**Recent Trend:**
- Last 5 plans: 02-02 (6min), 02-03 (5min), 03-01 (4min), 03-02 (8min)
- Trend: stable ~6min/plan

*Updated after each plan completion*

## Accumulated Context

### Decisions

Decisions are logged in PROJECT.md Key Decisions table.
Recent decisions affecting current work:

- [Roadmap]: Demo patch built first because every other artifact derives from it (build-up deconstructs it, outline references it, handout catalogs its objects)
- [Roadmap]: Annotations assigned to Phase 4 as systematic polish pass to ensure consistency across all patches
- [Roadmap]: Rehearsal/tech-check excluded from roadmap -- real-world activity, not a buildable deliverable
- [01-01]: Amplitude line~ messages tuned to start/end near 0.05 for click-free retrigger at metro boundaries
- [01-01]: Stereo clip~ pair for complete output safety on both live.gain~ channels
- [01-02]: Slider pattern: floatoutput=1 with min/size → sig~ (instructor preference over /127.→math→pack→line~)
- [01-02]: Mix slider uses !- 1. for control-domain inversion before sig~
- [01-02]: Phasor automation scopes added to Presentation Mode as control signal visualization (instructor addition)
- [01-02]: Scope tap points at cycle~ output (before *~ scaling) for clean waveform display
- [01-02]: Voice 3 detuned partial amplitude 0.7 (was 0.5) for richer drone
- [Verification]: phasor~ accepted into Week 7 object list per instructor decision -- naturally fits as automation engine
- [02-01]: Each build-up patch gets 17 comment annotations for thorough pedagogical coverage
- [02-01]: Comparison cycle~ objects in Patch 02 are visual-only (scopes only, no audio output)
- [02-01]: Unique parameter_longname per patch: Build-01/02/03 Vol (avoids live.gain~ parameter collision)
- [02-01]: Patch 03 loadbang sets 185 Hz (not 440) for distinctive starting tone
- [02-02]: Patch 04 sums noise and cycle~ comparison tone via +~ before output chain (single live.gain~)
- [02-02]: Patch 05 uses simple on/off envelope (fade in 500ms, fade out 100ms) -- focused teaching
- [02-02]: Patch 06 master level reuses toggle -> sel -> line~ pattern from Patch 05 for reinforcement
- [02-03]: Patch 07 has no Presentation Mode -- students compare raw patching view to demo's polished Presentation Mode
- [02-03]: Patch 07 annotations lighter than earlier patches -- reference which patch taught each technique
- [02-03]: Instructor changed Patch 01 from cycle~ 440 to cycle~ 220 during verification (lower starting tone)
- [02-03]: All 7 build-up patches verified in Max 9 with instructor layout polish applied
- [03-01]: TRY THIS pauses at Patch 03 (60s slider), Patch 04 (90s noise amplitude), Patch 05 (90s envelopes)
- [03-01]: CHECKPOINTs at download confirm, Patch 03 comprehension, and Patch 06 pre-finale readiness
- [03-01]: Pace check at 22:00 after Patch 03 -- halfway benchmark for instructor
- [03-01]: Fallback cascade: Patch 07 first, Patch 06, comparison, nuclear skips 05-07
- [03-02]: Waveform SVG includes adc~/dac~ annotation per instructor
- [03-02]: Signal flow titled "Signal Flow", Level 1 simplified to Source→Processing(DSP)→Output
- [03-02]: Voice 3 shows AM (two cycle~ multiplied), not line~ envelope
- [03-02]: Output chain left-to-right (no downward drop at dac~)
- [03-02]: gen~ uses counter 24000 with in 1 for proper initialization
- [03-02]: Comparison patch instructor-polished in Max 9

### Pending Todos

None yet.

### Blockers/Concerns

- .maxpat JSON hand-editing has no official spec; validate by round-tripping through Max 9 -- RESOLVED: patch verified in Max 9
- Sonic quality verified by instructor in Max 9 -- RESOLVED
- gen~ sub-patcher JSON structure -- RESOLVED: instructor verified in Max 9

## Session Continuity

Last session: 2026-02-14
Stopped at: Completed 03-02-PLAN.md (visual aids verified by instructor). Phase 3 complete. Ready for verification.
Resume file: None
