# Requirements: MUSC 320 Week 7 — Introduction to MSP

**Defined:** 2026-02-13
**Core Value:** Students leave the lecture understanding that MSP signal objects (~) are a fundamentally different (and sonically powerful) way of working in Max — and they have annotated patches they can study and experiment with on their own.

## v1 Requirements

Requirements for the complete lecture kit. Each maps to roadmap phases.

### Demo Patch

- [ ] **DEMO-01**: Finished noise sculpture demo patch using only Week 7 syllabus objects (noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~/ezdac~)
- [ ] **DEMO-02**: Demo patch opens in Presentation Mode showing clean performance UI
- [ ] **DEMO-03**: Demo patch includes gain~/limiter before dac~ for volume safety
- [ ] **DEMO-04**: Demo patch includes scope~ to visualize signal waveforms

### Build-Up Patch Series

- [ ] **BILD-01**: Numbered build-up series (01 through ~07) with one concept per patch
- [ ] **BILD-02**: Every build-up patch is self-contained (no shared abstractions or inter-patch dependencies)
- [ ] **BILD-03**: Every build-up patch produces audible output (no silent intermediate steps)
- [ ] **BILD-04**: Final build-up patch audibly resembles the opening demo
- [ ] **BILD-05**: Every build-up patch includes gain~/limiter before dac~ for volume safety
- [ ] **BILD-06**: scope~ used in build-up patches to visualize signals where pedagogically useful

### Annotations

- [ ] **ANOT-01**: Heavy comment annotations on every object and connection in all patches
- [ ] **ANOT-02**: Bridge comments connecting MSP objects to known Max equivalents ("line~ is the signal version of line")
- [ ] **ANOT-03**: "Try this" experiment prompts in build-up patches
- [ ] **ANOT-04**: Color-coded patch regions (oscillator, envelope, output sections visually grouped)
- [ ] **ANOT-05**: Parameter value annotations ("440 = A above middle C", "1000 = 1 second")
- [ ] **ANOT-06**: Error-state troubleshooting comments ("If you hear nothing, check...")

### Topic Coverage

- [ ] **TOPC-01**: Topic 1 — basic explanation of digital audio and how Max/MSP represents signals
- [ ] **TOPC-02**: Topic 2 — how signal operators (~) differ from control data operators (int, flonum)
- [ ] **TOPC-03**: Topic 3 — engaging signals: Audio Status panel, adc~, dac~, ezdac~, ezadc~
- [ ] **TOPC-04**: Topic 4 — basic signal operators: live.gain~, cycle~, sig~, noise~, number~, +~, *~
- [ ] **TOPC-05**: Topic 5 — simple envelopes using line~ and *~

### Lecture Materials

- [ ] **DOCS-01**: Lecture outline with per-minute timing cues and patch-switching instructions
- [ ] **DOCS-02**: Graceful pacing fallback notes ("if running long, skip X") in outline
- [ ] **DOCS-03**: Bridge-from-Max talking points for every topic in outline
- [ ] **DOCS-04**: 3 whiteboard diagrams (digital audio waveform, signal flow, control-vs-signal comparison)
- [ ] **DOCS-05**: Student reference handout (1 page) listing all MSP objects covered with descriptions

## v2 Requirements

Deferred to future iteration. Tracked but not in current roadmap.

### Refinements After First Delivery

- **REFI-01**: Consistent layout conventions refined based on classroom observation
- **REFI-02**: Fallback pacing notes refined based on actual delivery timing
- **REFI-03**: Additional parameter annotations based on student questions
- **REFI-04**: Max Package structure for streamlined student distribution

## Out of Scope

Explicitly excluded. Documented to prevent scope creep.

| Feature | Reason |
|---------|--------|
| Advanced synthesis (additive, FM, ring mod) | Week 8 curriculum — would steal thunder and overwhelm |
| Sampling/recording (play~, buffer~, groove~) | Week 9 curriculum |
| Filters and subtractive synthesis (svf~, reson~) | Week 10 curriculum |
| UBC Toolbox modules | Week 11 curriculum |
| Jitter/Vizzie | Week 13 curriculum |
| phasor~ and selector~ | Listed in Week 7 sidebar but not in lecture topics; include only if demo needs them |
| MIDI-controlled MSP parameters | Blurs the signal/control distinction the lecture is establishing |
| External audio input demos (adc~ processing) | Feedback risk in classroom; conceptually harder than generating audio |
| Poly~ / polyphony | Most complex Max object — massive cognitive overload for intro lecture |
| Gen~ / RNBO | Advanced tools that abstract away the MSP object model students are learning |
| Max for Live / Ableton integration | Different runtime environment, out of scope |
| Extensive DSP theory (Nyquist, aliasing, quantization) | 45 minutes too tight; one-sentence explanation sufficient |

## Traceability

Which phases cover which requirements. Updated during roadmap creation.

| Requirement | Phase | Status |
|-------------|-------|--------|
| DEMO-01 | — | Pending |
| DEMO-02 | — | Pending |
| DEMO-03 | — | Pending |
| DEMO-04 | — | Pending |
| BILD-01 | — | Pending |
| BILD-02 | — | Pending |
| BILD-03 | — | Pending |
| BILD-04 | — | Pending |
| BILD-05 | — | Pending |
| BILD-06 | — | Pending |
| ANOT-01 | — | Pending |
| ANOT-02 | — | Pending |
| ANOT-03 | — | Pending |
| ANOT-04 | — | Pending |
| ANOT-05 | — | Pending |
| ANOT-06 | — | Pending |
| TOPC-01 | — | Pending |
| TOPC-02 | — | Pending |
| TOPC-03 | — | Pending |
| TOPC-04 | — | Pending |
| TOPC-05 | — | Pending |
| DOCS-01 | — | Pending |
| DOCS-02 | — | Pending |
| DOCS-03 | — | Pending |
| DOCS-04 | — | Pending |
| DOCS-05 | — | Pending |

**Coverage:**
- v1 requirements: 26 total
- Mapped to phases: 0
- Unmapped: 26 ⚠️

---
*Requirements defined: 2026-02-13*
*Last updated: 2026-02-13 after initial definition*
