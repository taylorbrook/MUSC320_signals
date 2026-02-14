# Project Research Summary

**Project:** MUSC 320 Week 7 -- Introduction to MSP
**Domain:** Educational lecture preparation (Max/MSP, university music technology)
**Researched:** 2026-02-13
**Confidence:** HIGH

## Executive Summary

This project is a self-contained lecture kit for a 45-minute guest lecture introducing MSP (digital audio signal processing) to university students who already have 6 weeks of Max control-flow experience. Experts in Max/MSP pedagogy build materials like this as a flat bundle of numbered, standalone patches where each patch teaches exactly one concept, accompanied by prose documents (lecture outline, student handout) and visual aids (whiteboard diagrams). The stack is straightforward: Max 9.1.2 for authoring .maxpat files (JSON-based, git-friendly), Excalidraw for whiteboard-style diagrams, and Pandoc + Typst for converting Markdown lecture notes and handouts to PDF. No web frameworks, no databases, no deployment infrastructure -- just files that an instructor opens in sequence.

The recommended approach is to build the finished noise sculpture demo patch first (it anchors every other artifact), then deconstruct it into a numbered build-up series (01 through 07), then write the lecture outline based on actual patch walk-throughs, and finally produce diagrams and the student handout as derivative artifacts. This build order is non-negotiable because later artifacts reference earlier ones: the lecture notes reference patch filenames, the handout catalogs objects from the patches, and the diagrams illustrate concepts that surfaced during outline writing. The critical design constraint is that the noise sculpture must use ONLY objects from the Week 7 syllabus (noise~, cycle~, *~, +~, line~, sig~, number~, live.gain~, dac~/ezdac~) so the build-up series can reconstruct it completely.

The three dominant risks are: (1) audio safety -- beginners can produce ear-damaging volume instantly, so every patch must include gain control and amplitude limiting by default; (2) pacing -- 5 topics in 45 minutes leaves roughly 7-9 minutes per topic, requiring a timed lecture outline with fallback cut points; and (3) the conceptual gap between Max control-flow and MSP signal processing, which must be bridged through side-by-side demonstration patches rather than abstract explanation. All three risks are well-understood in the Max pedagogy community and have documented mitigation strategies.

## Key Findings

### Recommended Stack

The stack is minimal and entirely file-based. Max 9.1.2 is the authoring environment for all patches; .maxpat files are JSON and diff cleanly in git. Excalidraw provides whiteboard-style diagrams as SVG (also JSON source files, git-friendly). Pandoc + Typst converts Markdown documents to PDF without the 4+ GB LaTeX installation. Every artifact in this stack is plain text and version-controllable. See [STACK.md](./STACK.md) for full details.

**Core technologies:**
- **Max 9.1.2:** Authoring all .maxpat patches -- current stable release, backward-compatible with Max 8 for core MSP objects
- **Pandoc 3.x + Typst 0.14+:** Markdown-to-PDF pipeline for lecture outline and student handout -- 27x faster than LaTeX, 50 MB vs 4 GB install
- **Excalidraw:** Whiteboard-style diagrams exportable as SVG -- hand-drawn aesthetic is pedagogically approachable, JSON source files version-control in git
- **Markdown (CommonMark):** Single-source authoring format for all prose -- plain text diffs, converts to PDF/HTML/DOCX via Pandoc

**Critical version note:** Core MSP objects used in this lecture (cycle~, noise~, line~, *~, +~, dac~, ezdac~, sig~, live.gain~) have existed since Max 5 and are cross-version safe. If the classroom machine runs Max 8, patches will open without issues as long as no Max 9-only objects are used.

### Expected Features

See [FEATURES.md](./FEATURES.md) for the full feature landscape, dependency graph, and prioritization matrix.

**Must have (table stakes -- lecture fails without these):**
- Finished noise sculpture demo patch (the "hook" that opens the lecture)
- Numbered build-up patch series (6-8 patches, one concept each)
- Heavy comment annotations in every patch (the take-home study material)
- Coverage of all 5 required syllabus topics (digital audio, signal vs control, engaging signals, basic operators, envelopes)
- Lecture outline with per-minute timing cues and patch-switching instructions
- Whiteboard diagram reference sketches (3 diagrams: waveform, signal flow, control vs signal)
- Student reference handout (single-page, durable takeaway)
- Safe volume defaults in every patch (live.gain~ with low default, limiter before dac~)
- Audio Status window walkthrough content
- Clear signal-vs-control visual distinction in patches

**Should have (elevates from adequate to excellent):**
- Presentation mode for the demo patch
- "Try this" experimentation prompts in build-up patches
- Conceptual bridge comments linking MSP objects to known Max equivalents (highest-value low-effort differentiator)
- Color-coded patch regions for functional grouping
- Consistent layout conventions across all patches
- Graceful pacing fallback plan with safe stopping points
- Incremental audible result at every patch step
- Error-state troubleshooting comments

**Defer (post-first-delivery refinement):**
- Consistent layout convention polish based on classroom observation
- Detailed fallback pacing notes based on actual delivery timing
- Parameter value annotations based on which values students actually ask about

### Architecture Approach

The architecture is a flat, self-contained bundle with zero runtime dependencies between components. See [ARCHITECTURE.md](./ARCHITECTURE.md) for full structure, patterns, and anti-patterns. No patch loads another patch; no shared abstractions exist across the build-up series. Each .maxpat file is completely standalone so students can open any single file after the lecture without encountering "object not found" errors. Cross-references are human-navigated only (the lecture outline says "open patch 03" and the instructor does so).

**Major components:**
1. **patches/** -- Flat folder of numbered .maxpat files (00-demo through 07-rebuild), self-contained, no inter-patch dependencies
2. **docs/** -- Two prose documents: lecture-outline.md (instructor's timed script) and student-handout.md (student's reference card)
3. **diagrams/** -- 3 SVG visual aids for concepts that cannot be shown by patching alone (digital audio sampling, signal flow, control vs signal comparison)

**Key architectural patterns:**
- Self-contained numbered patches (no abstractions shared between files)
- Concept-per-patch progression (each patch answers the question raised by the previous one)
- Heavy inline annotation (comment objects, not hover-only hints/annotations)
- Top-to-bottom signal flow convention (sources at top, dac~ at bottom)

**Key anti-patterns to avoid:**
- Shared abstractions between build-up patches (creates dependency errors for students)
- Monolithic "all concepts in one patch" demo (cognitively overwhelming)
- Writing lecture notes before patches exist (outline becomes fiction)
- Over-diagramming (Max patches ARE diagrams -- external visuals only for non-patchable concepts)

### Critical Pitfalls

See [PITFALLS.md](./PITFALLS.md) for all 7 critical pitfalls with detailed prevention and recovery strategies.

1. **Full-amplitude audio blowout** -- Every signal path must pass through gain~ (starting at 0) and a limiter (clip~ -0.9 0.9 or omx.peaklim~) before dac~. No exceptions. This is a physical safety requirement.
2. **Abstract signal-vs-control teaching** -- Build a dedicated side-by-side comparison patch showing Max messages (metro + random + number) next to MSP signals (noise~ + number~). Let students SEE and HEAR the difference. Budget 8-10 minutes.
3. **Audio driver failure during live lecture** -- Arrive 15-20 minutes early, test every patch on the classroom system, do not use loadbang to auto-start DSP, keep audio settings consistent across patches.
4. **Pacing failure (5 topics in 45 minutes)** -- Create a hard-deadline timing sheet. Designate which topics are expandable vs compressible. Build patches so they tell a complete story even if live demo only reaches patch 03.
5. **Patches illegible on projector** -- Set 14pt minimum font, thicken patch cords, test on actual projector at actual screen size from the back row.
6. **Demo disconnected from build-up patches** -- Constrain the noise sculpture to ONLY Week 7 objects. The final build-up patch must audibly resemble the opening demo.
7. **No bridge from Max to MSP** -- Every MSP concept introduction must start with its Max equivalent ("line~ is the signal version of line, which you used for MIDI fades").

## Implications for Roadmap

Based on combined research, the following phase structure reflects the build-order dependencies identified in ARCHITECTURE.md, the feature priorities from FEATURES.md, and the pitfall prevention windows from PITFALLS.md.

### Phase 1: Noise Sculpture Demo Patch

**Rationale:** This is the creative and sonic anchor for the entire kit. Every other artifact derives from it -- the build-up series deconstructs it, the lecture notes narrate it, the handout catalogs its objects. Until this patch exists and sounds musically compelling using only Week 7 objects, nothing else can be finalized. Changing the demo later forces cascading changes through every other deliverable.
**Delivers:** `00-noise-sculpture-demo.maxpat` with full audio safety chain (gain~, limiter, dcblock~, meter~), presentation mode UI, and heavy annotations
**Addresses:** Finished demo patch (P1), safe volume defaults (P1), presentation mode (P2)
**Avoids:** Pitfall 1 (audio blowout -- safety architecture from day one), Pitfall 6 (demo disconnected from build-up -- object constraint enforced before any building begins)

### Phase 2: Build-Up Patch Series

**Rationale:** The numbered series defines the pedagogical structure. Each patch must be self-contained, introduce exactly one concept, produce audible output, and visually differ from the previous patch by exactly one addition. This phase cannot begin until the demo is finalized because the series deconstructs it. The lecture outline cannot be written until the series exists because timing depends on patch count and complexity.
**Delivers:** `01-hello-signal.maxpat` through `07-noise-sculpture-rebuild.maxpat` (5-7 patches), each with full annotations, safe volume defaults, and 14pt+ font sizing
**Addresses:** Numbered build-up series (P1), all 5 topic coverages (P1), comment annotations (P1), signal-vs-control distinction (P1), Audio Status walkthrough (P1)
**Avoids:** Pitfall 2 (abstract teaching -- dedicated comparison patch for signal vs control), Pitfall 5 (illegibility -- visual standards set from the start), Pitfall 7 (no bridge from Max -- each patch opens with familiar Max context)

### Phase 3: Lecture Outline and Diagrams

**Rationale:** The lecture outline is a script that references patches by filename -- it cannot be written until patches are finalized. Diagrams illustrate concepts that surfaced during outline writing. Building these together ensures they are grounded in actual patch walk-throughs rather than aspirational plans. This phase is where pacing problems surface and get resolved.
**Delivers:** `docs/lecture-outline.md` with per-minute timing, patch-switching cues, and fallback cut points; `diagrams/` with 3 SVG visual aids
**Addresses:** Lecture outline with timing (P1), whiteboard diagrams (P1), graceful pacing fallback (P2)
**Avoids:** Pitfall 4 (pacing failure -- timing baked into the outline with safe stopping points), Anti-pattern 3 (writing notes before patches exist)

### Phase 4: Student Handout and Polish

**Rationale:** The handout is a distillation of everything else -- it lists objects from the patches, summarizes concepts from the lecture notes, and includes "try this" prompts from annotations. Building it last ensures accuracy. This phase also adds all P2 differentiator features (bridge comments, color-coded regions, error-state comments, parameter annotations) as a polish pass across all deliverables.
**Delivers:** `docs/student-handout.md` (single-page reference), `README.md`, plus P2 polish across all patches
**Addresses:** Student handout (P1), "try this" annotations (P2), conceptual bridge comments (P2), color-coded regions (P2), error-state comments (P2), parameter value annotations (P2)
**Avoids:** Pitfall 7 (no bridge from Max -- bridge comments added systematically during polish)

### Phase 5: Rehearsal and Tech Check

**Rationale:** Multiple critical pitfalls (audio driver failure, pacing, projector illegibility) can only be caught through physical rehearsal on the actual classroom system. This phase is not optional -- it is where the "looks done but isn't" checklist gets verified. A timed run-through validates that the lecture fits in 43 minutes (leaving 2 minutes of buffer).
**Delivers:** Verified, tested lecture kit; printed timing sheet; pre-lecture checklist; backup audio files (.wav) for recovery scenarios
**Addresses:** Complete validation of all deliverables against the "looks done but isn't" checklist from PITFALLS.md
**Avoids:** Pitfall 3 (audio driver failure -- tested on classroom system), Pitfall 4 (pacing -- timed rehearsal), Pitfall 5 (illegibility -- projector test from back row)

### Phase Ordering Rationale

- **Dependency-driven order:** Demo first because the build-up series deconstructs it. Build-up second because lecture notes reference patches by filename. Outline third because the handout distills the outline. Handout last because it derives from everything.
- **Safety-first architecture:** Audio safety (gain~, limiter, dcblock~) is established in Phase 1 and carried through every subsequent phase. No patch is ever created without the safety chain.
- **Pitfall prevention windows:** The most dangerous pitfalls (audio blowout, illegibility, demo-build disconnect) are addressed in Phase 1-2. Pacing is addressed in Phase 3. Tech failures are caught in Phase 5. Each pitfall has a clear prevention phase.
- **Progressive refinement:** P1 (must-have) features are delivered in Phases 1-4. P2 (should-have) features are layered on during the Phase 4 polish pass. This ensures a viable lecture kit exists before polish begins.

### Research Flags

Phases likely needing deeper research during planning:
- **Phase 1 (Noise Sculpture Demo):** The sonic design of the noise sculpture requires creative experimentation within the Week 7 object constraint. There is no template for "musically intriguing patch using only noise~, cycle~, *~, +~, line~, and dac~." This phase benefits from iterative sonic exploration and may need research into amplitude modulation and LFO techniques achievable with these basic objects.
- **Phase 2 (Build-Up Series):** The exact concept-per-patch breakdown needs validation. The 7-patch progression proposed in ARCHITECTURE.md is well-reasoned but may need adjustment based on how the demo patch actually works. Research into Cycling '74's official MSP tutorial ordering would inform sequencing.

Phases with standard patterns (skip research-phase):
- **Phase 3 (Lecture Outline):** Well-documented pattern -- timed script referencing numbered patches. The Pandoc + Typst pipeline is straightforward.
- **Phase 4 (Handout and Polish):** Standard reference-card design. Pandoc handles the PDF conversion.
- **Phase 5 (Rehearsal):** Procedural checklist, not a design problem.

## Confidence Assessment

| Area | Confidence | Notes |
|------|------------|-------|
| Stack | HIGH | All tools verified against official sources. Max 9.1.2 confirmed current. Pandoc + Typst pipeline documented by multiple credible sources. Only MEDIUM-confidence item: .maxpat JSON structure relies on community reverse-engineering (no official spec). |
| Features | HIGH | Feature set derived directly from course syllabus requirements (the 5 required topics). Prioritization matrix is clear: P1 features map to syllabus obligations, P2 features map to pedagogical best practices from established Max educators. |
| Architecture | HIGH | Flat-bundle, self-contained-patch architecture is the near-universal pattern in Max pedagogy materials. Cycling '74's own tutorials follow this exact pattern. Build order is dependency-driven and well-justified. |
| Pitfalls | HIGH | All 7 critical pitfalls documented with specific prevention and recovery strategies. Sources include official Cycling '74 documentation, verified forum reports, and established pedagogy literature. Audio safety pitfalls confirmed by multiple independent sources. |

**Overall confidence:** HIGH

### Gaps to Address

- **Noise sculpture sonic design:** No research file addresses how to make a musically compelling patch using only the constrained object set. This is a creative challenge, not a technical one. During Phase 1 planning, allocate time for sonic experimentation and iteration.
- **.maxpat JSON hand-editing:** STACK.md notes the .maxpat format has no official specification (MEDIUM confidence, based on py2max reverse-engineering). If any phase involves programmatic generation or editing of .maxpat files, validate the JSON structure by round-tripping through Max 9 (save, edit, reopen).
- **Classroom-specific tech setup:** The exact audio hardware, projector resolution, and Max version on the UBC classroom computer are unknown. Phase 5 (rehearsal) must happen in the actual room. If classroom access is limited, plan a backup: bring a known-good USB audio interface and test patches on a personal laptop connected to the projector.
- **Prior curriculum verification:** Conceptual bridge comments (Phase 4) reference students' prior 6 weeks of Max knowledge. The specific objects and concepts covered in Weeks 1-6 should be verified against the actual MUSC 320 syllabus to ensure bridge comments reference objects students genuinely know.

## Sources

### Primary (HIGH confidence)
- [Cycling '74 Downloads -- Max 9.1.2](https://cycling74.com/downloads) -- current version and system requirements
- [Cycling '74 MSP Tutorials](https://docs.cycling74.com/max8/tutorials/00_mspindex) -- tutorial structure, object introduction order, numbered-patch pattern
- [Cycling '74 Package Documentation](https://docs.cycling74.com/userguide/packages/) -- package folder structure for distribution
- [Cycling '74 How MSP Works](https://docs.cycling74.com/max7/tutorials/03_msphowmspworks) -- signal vs control rate, patch cord visual distinctions
- [Cycling '74 Audio I/O Tutorial](https://docs.cycling74.com/max7/tutorials/04_mspaudioio) -- dac~, adc~, ezdac~, ezadc~, Audio Status
- [Cycling '74 MSP Basics Tutorial 1](https://docs.cycling74.com/max7/tutorials/05_mspbasicchapter01) -- amplitude safety warning, gain~ best practice
- [Managing Complex Patches in Max](https://cycling74.com/articles/managing-complex-patches-in-max) -- organization, naming, modularity
- [Pandoc User's Guide](https://pandoc.org/MANUAL.html) -- Markdown-to-PDF, Typst engine support

### Secondary (MEDIUM confidence)
- [Chris Swithinbank, "264 Ways to Teach Max"](https://www.chrisswithinbank.net/2016/01/teaching-max-msp/) -- pre-built module pedagogy, package distribution
- [Jessica Fenlon, "Teaching Artists to MaxMSP"](https://medium.com/@drawclose/teaching-artists-to-maxmsp-pedagogy-655ca5b2e198) -- "take-apart" pedagogy, presentation mode demos
- [Christopher Dobrian, "Getting Started with Max and MSP"](https://dobrian.github.io/cmp/topics/intro-to-max-and-msp/1.Getting-started-with-Max-and-MSP.html) -- foundational concepts, beginner misconceptions
- [py2max](https://github.com/shakfu/py2max) -- .maxpat JSON structure documentation
- [Cycling '74 Forums](https://cycling74.com/forums/) -- community consensus on best practices, DSP behavior changes, font/display issues
- [Pandoc + Typst pipeline documentation](https://neilzone.co.uk/2025/01/using-pandoc-and-typst-to-convert-markdown-into-custom-formatted-pdfs-with-a-sample-template/) -- speed benchmarks, workflow validation

### Tertiary (LOW confidence)
- Specific .maxpat JSON field names and behaviors -- based on community reverse-engineering, no official spec; validate by round-tripping through Max 9

---
*Research completed: 2026-02-13*
*Ready for roadmap: yes*
