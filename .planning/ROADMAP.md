# Roadmap: MUSC 320 Week 7 -- Introduction to MSP

## Overview

This roadmap delivers a complete 45-minute guest lecture kit introducing MSP to students with 6 weeks of Max control-flow experience. The build order is dependency-driven: the noise sculpture demo patch anchors everything, the build-up series deconstructs it, the lecture outline scripts the walk-through, and the student handout distills the whole kit. A final annotation pass ensures every patch is study-ready with consistent, thorough commentary.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3, 4): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [x] **Phase 1: Noise Sculpture Demo** - Create the finished demo patch that hooks student interest and anchors the entire kit
- [x] **Phase 2: Build-Up Patch Series** - Deconstruct the demo into numbered concept-per-patch progression covering all 5 topics
- [x] **Phase 3: Lecture Outline and Diagrams** - Write the timed instructor script and visual aids grounded in actual patches
- [ ] **Phase 4: Student Handout and Annotation Polish** - Produce the student reference card and apply systematic annotation pass across all patches

## Phase Details

### Phase 1: Noise Sculpture Demo
**Goal**: Students hear a musically intriguing noise sculpture that demonstrates the sonic power of MSP, built entirely from Week 7 syllabus objects with full audio safety
**Depends on**: Nothing (first phase)
**Requirements**: DEMO-01, DEMO-02, DEMO-03, DEMO-04
**Success Criteria** (what must be TRUE):
  1. Opening the demo patch in Presentation Mode shows a clean performance UI with visible gain control -- no patching clutter visible to students
  2. Playing the demo produces a musically intriguing sound that evolves over time, using only Week 7 objects (noise~, cycle~, *~, +~, line~, sig~, phasor~, live.gain~, dac~/ezdac~)
  3. A scope~ display shows waveform visualization so students can see the signal, not just hear it
  4. The audio signal passes through gain~/limiter before reaching dac~ so accidental full-amplitude output is impossible
**Plans**: 2 plans

Plans:
- [x] 01-01-PLAN.md -- Build synthesis engine, 3-voice architecture, automation, and output safety chain
- [x] 01-02-PLAN.md -- Add performance sliders, scope displays, Presentation Mode UI, and human verification

### Phase 2: Build-Up Patch Series
**Goal**: Students have a numbered series of self-contained patches that reconstruct the demo step by step, with each patch introducing exactly one MSP concept and producing audible output
**Depends on**: Phase 1
**Requirements**: BILD-01, BILD-02, BILD-03, BILD-04, BILD-05, BILD-06, TOPC-01, TOPC-02, TOPC-03, TOPC-04, TOPC-05
**Success Criteria** (what must be TRUE):
  1. Opening any single build-up patch works without errors -- no missing abstractions, no inter-patch dependencies
  2. Every build-up patch produces audible output when DSP is turned on (no silent intermediate steps)
  3. The five required topics (digital audio basics, signal vs control, engaging signals, basic operators, envelopes) are each clearly covered by at least one patch in the series
  4. The final build-up patch audibly resembles the opening noise sculpture demo
  5. Every build-up patch includes gain~/limiter before dac~ for volume safety, and scope~ is used where pedagogically useful to visualize signals
**Plans**: 3 plans

Plans:
- [x] 02-01-PLAN.md -- Create patches 01-03: Hello Signal, First Tone, Control Meets Signal (TOPC-02, TOPC-03, TOPC-04 partial)
- [x] 02-02-PLAN.md -- Create patches 04-06: Noise and Amplitude, Envelopes, Modulation and Mixing (TOPC-04 continued, TOPC-05)
- [x] 02-03-PLAN.md -- Create patch 07: Noise Sculpture Rebuild (BILD-04) and human verification of all 7 patches

### Phase 3: Lecture Outline and Diagrams
**Goal**: The instructor has a timed script that tells them exactly which patch to open when, what to say, and where to cut if running long -- plus visual aids for concepts that can't be shown by patching
**Depends on**: Phase 2
**Requirements**: DOCS-01, DOCS-02, DOCS-03, DOCS-04
**Success Criteria** (what must be TRUE):
  1. The lecture outline includes per-minute timing cues and explicit patch-switching instructions ("open 03-engaging-signals.maxpat") for the full 45-minute session
  2. The outline includes fallback pacing notes marking which content to skip or compress if the lecture runs long
  3. Every topic introduction in the outline includes a bridge-from-Max talking point connecting MSP concepts to something students already know
  4. Three whiteboard diagrams exist (digital audio waveform, signal flow, control-vs-signal comparison) as visual aids for concepts that patches alone cannot illustrate
**Plans**: 2 plans

Plans:
- [x] 03-01-PLAN.md -- Write timed 45-minute lecture outline with patch cues, bridges, fallbacks, and checkpoints
- [x] 03-02-PLAN.md -- Create visual aids: 2 SVG diagrams (waveform, signal flow) and 1 comparison Max patch (metro/phasor~/gen~)

### Phase 4: Student Handout and Annotation Polish
**Goal**: Students leave with a single-page reference card they can use for independent study, and every patch in the kit has consistent, thorough annotations including bridge comments, experiment prompts, and troubleshooting tips
**Depends on**: Phase 3
**Requirements**: DOCS-05, ANOT-01, ANOT-02, ANOT-03, ANOT-04, ANOT-05, ANOT-06
**Success Criteria** (what must be TRUE):
  1. A single-page student reference handout exists listing all MSP objects covered, with descriptions and key concepts
  2. Every object and connection in every patch has a comment annotation explaining what it does
  3. Bridge comments in patches connect MSP objects to known Max equivalents (e.g., "line~ is the signal version of line")
  4. Build-up patches include "Try this" experiment prompts and error-state troubleshooting comments ("If you hear nothing, check...")
  5. Patch regions are color-coded to visually group functional sections (oscillator, envelope, output) and parameter values are annotated with musical meaning ("440 = A above middle C")
**Plans**: TBD

Plans:
- [ ] 04-01: TBD
- [ ] 04-02: TBD

## Progress

**Execution Order:**
Phases execute in numeric order: 1 -> 2 -> 3 -> 4

| Phase | Plans Complete | Status | Completed |
|-------|---------------|--------|-----------|
| 1. Noise Sculpture Demo | 2/2 | ✓ Complete | 2026-02-14 |
| 2. Build-Up Patch Series | 3/3 | ✓ Complete | 2026-02-14 |
| 3. Lecture Outline and Diagrams | 2/2 | ✓ Complete | 2026-02-14 |
| 4. Student Handout and Annotation Polish | 0/TBD | Not started | - |
