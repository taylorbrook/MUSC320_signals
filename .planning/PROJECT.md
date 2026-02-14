# MUSC 320 Week 7 — Introduction to MSP

## What This Is

A complete lecture preparation kit for a 45-minute guest lecture in MUSC 320 Computer Music at UBC. This is Week 7 — the students' first introduction to digital audio and MSP after 6 weeks of Max control-flow and MIDI. The kit includes Max patches, a lecture outline with timing, whiteboard diagrams, and a student reference handout. The pedagogical approach opens with a captivating noise sculpture demo, then rebuilds it from a blank patch step by step, teaching each concept along the way.

## Core Value

Students leave the lecture understanding that MSP signal objects (~) are a fundamentally different (and sonically powerful) way of working in Max — and they have annotated patches they can study and experiment with on their own.

## Requirements

### Validated

(None yet — ship to validate)

### Active

- [ ] Finished "noise sculpture" demo patch that sounds musically intriguing
- [ ] Numbered build-up patch series (e.g., 01-hello-signal, 02-cycle-intro, etc.) that reconstruct the demo step by step
- [ ] Heavy annotations/comments in all patches explaining every object and connection
- [ ] Coverage of Topic 1: basic explanation of digital audio and how Max/MSP represents signals
- [ ] Coverage of Topic 2: how signal operators (~) differ from control data operators (int, flonum)
- [ ] Coverage of Topic 3: engaging signals — Audio Status panel, adc~, dac~, ezdac~, ezadc~
- [ ] Coverage of Topic 4: basic signal operators — live.gain~, cycle~, sig~, noise~, number~, +~, *~
- [ ] Coverage of Topic 5: simple envelopes using line~ and *~
- [ ] Lecture outline/notes document with talking points, timing cues, and which patch to open when
- [ ] Whiteboard diagrams (digital audio waveform, signal flow, control vs signal comparison)
- [ ] Student reference handout with key objects, concepts, and tips

### Out of Scope

- Advanced synthesis techniques (additive, FM, ring mod) — that's Week 8
- Sampling/recording (play~, buffer~, groove~) — that's Week 9
- Filters and subtractive synthesis — that's Week 10
- UBC Toolbox — that's Week 11
- Jitter/Vizzie — that's Week 13
- phasor~ and selector~ — mentioned in Week 7 syllabus but not in the lecture topic list; include only if they naturally fit the demo

## Context

- **Course:** MUSC 320 Computer Music, UBC, Week 7 (Feb 25, 2026, 10:00-10:45 AM)
- **Students:** 16-18, mix of music and non-music majors, all completed MUSC 319 Electronic Music
- **Prior knowledge:** 6 weeks of Max basics — objects, messages, MIDI, control flow, data types (int, float, bang, list, symbol), metro, random, select, gate, switch, route, line, subpatches, send/receive, coll, abstractions, UI elements, sequencing
- **NOT yet covered:** Any MSP/signal objects, digital audio concepts, the tilde (~) world
- **Classroom:** Audio playback, video projection (HDMI), grand piano, whiteboard — no student computers during lecture
- **Pedagogical approach:** Open with the finished noise sculpture to hook interest ("MSP can do *this*"), then start from a blank patch and gradually rebuild it, teaching each concept as it becomes needed
- **Pacing:** Cover all 5 topics at a steady, even pace; the numbered patch series provides the full build path regardless of where the live demo reaches in 45 minutes

## Constraints

- **Time:** 45 minutes total — pacing is critical
- **Format:** Lecture with live demo, not a lab — students watch and listen, they don't build patches during class
- **Software:** Max/MSP (assumed installed on the teaching machine)
- **File format:** .maxpat files (Max's native JSON-based patch format)
- **Audience bridge:** Students know Max control flow well but have zero MSP experience — every signal concept must connect back to something they already know

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Noise sculpture as opening hook | Showcases noise~, *~, line~, and potentially cycle~ — maps directly to required syllabus objects while being sonically compelling | — Pending |
| Finished demo + numbered build-up series | Gives students both the "wow" moment and a step-by-step learning path they can revisit | — Pending |
| Heavy annotations in patches | Students can't build along in class, so annotated patches serve as study material after the lecture | — Pending |
| All 5 topics at even pace | Breadth over depth for this introductory lecture; depth comes in later weeks | — Pending |

---
*Last updated: 2026-02-13 after initialization*
