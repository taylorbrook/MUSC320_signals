# Project State

## Project Reference

See: .planning/PROJECT.md (updated 2026-02-13)

**Core value:** Students leave understanding that MSP signal objects (~) are a fundamentally different (and sonically powerful) way of working in Max -- and they have annotated patches they can study and experiment with on their own.
**Current focus:** Phase 2: Build-Up Patch Series -- In progress

## Current Position

Phase: 2 of 4 (Build-Up Patch Series)
Plan: 1 of 3 in current phase
Status: In progress
Last activity: 2026-02-14 -- Completed 02-01-PLAN.md (patches 01-03)

Progress: [####......] 37%

## Performance Metrics

**Velocity:**
- Total plans completed: 3
- Average duration: 12min
- Total execution time: 0.6 hours

**By Phase:**

| Phase | Plans | Total | Avg/Plan |
|-------|-------|-------|----------|
| 01-noise-sculpture-demo | 2 | 31min | 16min |
| 02-build-up-patch-series | 1 | 4min | 4min |

**Recent Trend:**
- Last 5 plans: 01-01 (6min), 01-02 (25min), 02-01 (4min)
- Trend: accelerating

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

### Pending Todos

None yet.

### Blockers/Concerns

- .maxpat JSON hand-editing has no official spec; validate by round-tripping through Max 9 -- RESOLVED: patch verified in Max 9
- Sonic quality verified by instructor in Max 9 -- RESOLVED

## Session Continuity

Last session: 2026-02-14
Stopped at: Completed 02-01-PLAN.md (patches 01-03 of build-up series). Ready for 02-02-PLAN.md.
Resume file: None
