---
phase: 03-lecture-outline-and-diagrams
plan: 01
subsystem: lecture-outline
tags: [markdown, lecture-outline, timing, pacing, bridge-from-max, fallback-cascade, patch-cues]

# Dependency graph
requires:
  - phase: 01-noise-sculpture-demo
    provides: "Demo patch (noise-sculpture-demo.maxpat) referenced as opening/closing in lecture"
  - phase: 02-build-up-patch-series
    provides: "All 7 build-up patches (01-hello-signal through 07-noise-sculpture-rebuild) referenced by exact filename in patch-switching cues"
provides:
  - "docs/lecture-outline.md: Complete timed 45-minute instructor script with per-minute timing, patch cues for 9 patches, 11 bridge-from-Max talking points, fallback cascade, try-this pauses, and checkpoints"
affects: [03-02-PLAN, 04-annotation-polish]

# Tech tracking
tech-stack:
  added: []
  patterns: [time-range section headers, inline BRIDGE talking points, blockquote FALLBACK notes, TRY THIS pause markers, CHECKPOINT markers, pace check midpoint]

key-files:
  created: [docs/lecture-outline.md]
  modified: []

key-decisions:
  - "TRY THIS pauses placed at Patch 03 (slider/sig~, 60 sec), Patch 04 (noise amplitude, 90 sec), and Patch 05 (envelopes, 90 sec)"
  - "Three CHECKPOINTs: after download (logistics), after Patch 03 (comprehension), after Patch 06 (pre-finale readiness)"
  - "Pace check placed after Patch 03 at 22:00 mark -- halfway through content, allows time assessment"
  - "Fallback cascade follows RESEARCH.md Pattern 3: Patch 07 first, Patch 06, comparison, nuclear skips 05-07"

patterns-established:
  - "PATCH cue format: **PATCH:** `filename.maxpat` -- what to highlight"
  - "BRIDGE format: **BRIDGE (object~):** connecting quote with Max->MSP comparison"
  - "FALLBACK format: blockquote with cut priority label (FIRST CUT, SECOND CUT, nuclear)"
  - "TRY THIS format: **[TRY THIS - Ns]** with student instruction and expected outcome"

# Metrics
duration: 4min
completed: 2026-02-14
---

# Phase 3 Plan 1: Lecture Outline Summary

**Complete 45-minute timed instructor script with 11 sections, 9 patch-switching cues, 11 bridge-from-Max talking points, fallback cascade, and scripted collective finale**

## Performance

- **Duration:** 4 min
- **Started:** 2026-02-15T02:07:06Z
- **Completed:** 2026-02-15T02:11:30Z
- **Tasks:** 1
- **Files modified:** 1

## Accomplishments
- Created docs/lecture-outline.md covering the full 45-minute session with per-minute timing cues in 11 timed sections (00:00-03:00 through 39:00-45:00)
- Every section includes a PATCH cue naming the exact .maxpat filename and what to highlight, covering all 9 patches in lecture order
- 11 inline BRIDGE talking points connecting each MSP concept to students' existing Max knowledge (ezdac~, cycle~, sig~, number~, *~, noise~, line~, phasor~, +~, plus digital audio and tilde convention)
- Fallback cascade with 4 levels: skip Patch 07 (3 min), compress Patch 06 (2 min), skip comparison (3 min), nuclear option skips 05-07 (11 min)
- 3 TRY THIS pauses at the most impactful hands-on moments, 3 CHECKPOINTs for room gauging
- Scripted opening demo with QR download moment and collective finale with step-by-step student setup instructions

## Task Commits

Each task was committed atomically:

1. **Task 1: Create the timed lecture outline** - `09a0468` (feat)

## Files Created/Modified
- `docs/lecture-outline.md` - Complete 45-minute instructor script: 242 lines, 11 timed sections, 9 patch cues, 11 bridges, fallback cascade, try-this pauses, checkpoints, collective finale script

## Decisions Made
- TRY THIS pauses placed at Patch 03 (60 sec, slider interaction), Patch 04 (90 sec, noise amplitude), and Patch 05 (90 sec, envelope toggling) -- these are the moments where changing one parameter produces the most immediately audible result
- Three CHECKPOINTs positioned for maximum effectiveness: logistics (download), comprehension (sig~ concept), and readiness (before finale)
- Pace check at 22:00 after Patch 03: "If you reach this point by 22:00, you are on pace" -- gives instructor a concrete timing benchmark at the halfway point
- gen~ comparison section capped at hard 3-minute limit with explicit exit script, framed as "a peek at what's deeper" -- prevents derailing

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered
None.

## User Setup Required
None - no external service configuration required.

## Next Phase Readiness
- Lecture outline complete, ready for Plan 02 (diagrams and comparison patch)
- Outline references `digital-audio-waveform.svg` and `signal-flow.svg` by filename -- Plan 02 creates these files
- Outline references `three-level-comparison.maxpat` -- Plan 02 creates this patch
- All patch filenames verified against existing patches/ directory contents
- Outline is self-contained: an instructor could teach from it today using only the existing patches (diagrams are supplementary)

## Self-Check: PASSED

- [x] docs/lecture-outline.md exists
- [x] .planning/phases/03-lecture-outline-and-diagrams/03-01-SUMMARY.md exists
- [x] Commit 09a0468 exists in git log

---
*Phase: 03-lecture-outline-and-diagrams*
*Completed: 2026-02-14*
