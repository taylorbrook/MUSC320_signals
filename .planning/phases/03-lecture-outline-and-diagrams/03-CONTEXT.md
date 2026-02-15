# Phase 3: Lecture Outline and Diagrams - Context

**Gathered:** 2026-02-14
**Status:** Ready for planning

<domain>
## Phase Boundary

Produce a timed 45-minute instructor script with patch-switching cues, fallback pacing, bridge-from-Max talking points, and visual aids for concepts that patching alone can't illustrate. Students follow along on their own machines with downloaded patches.

</domain>

<decisions>
## Implementation Decisions

### Script format and detail
- Bullet notes, not verbatim script — key points and transitions only, room for natural delivery
- Patch-switching cues include filename + what to point out (e.g., "Open 03-engaging-signals.maxpat — highlight the phasor~ -> *~ connection, toggle DSP")
- Bridge-from-Max talking points appear inline with the relevant bullet, not in a separate section
- Plain markdown file (.md)

### Session arc and pacing
- Opening: 30-second taste of the full noise sculpture demo ("here's what we're building"), then build up from scratch through the patch series
- Front-loaded time allocation: more time on digital audio basics and signal-vs-control early, faster through operators and envelopes
- Fallback priority: protect the concepts — if running long, skip later build-up patches rather than rushing foundational ideas
- 2-3 explicit checkpoint moments where the outline prompts the instructor to gauge the room before continuing
- Finale: collective playback — all students open the demo patch and play together

### Diagrams and visual aids
- Pre-made slides/images, not drawn live on whiteboard
- **Digital audio waveform diagram:** Emphasize samples as discrete dots — show continuous wave with sample points overlaid, reinforcing that digital audio is numbers at regular intervals
- **Signal flow diagram:** Two-level approach — start with abstract signal flow (source -> processing -> output with branching/summing), then expand into the demo patch's actual signal chain to show the same structure in concrete detail
- **Control-vs-signal comparison:** A Max patch (not a static diagram) showing three computational levels side-by-side: control-rate (metro), signal-rate (phasor~), and gen~ (counter or codebox) — illustrating data vs packets vs sample-rate processing

### Demo and interaction flow
- Students download patches at the start via QR code (outline scripts this moment)
- Students follow along on their own machines as instructor walks through each patch
- 2-3 planned "try this" pause moments at the most impactful points (not every patch)
- Opening demo: full noise sculpture with all sliders and automation — give the wow moment upfront
- Closing: collective playback — everyone opens the demo and plays, classroom full of noise sculptures

### Claude's Discretion
- Exact time allocations per section (within the front-loaded constraint)
- Which 2-3 patches get the "try this" pauses
- Where to place the checkpoint moments
- Bridge-from-Max wording for each concept
- Diagram visual style and layout

</decisions>

<specifics>
## Specific Ideas

- Three-level comparison patch (metro / phasor~ / gen~) is a new deliverable — needs to show the same rhythmic/timing task at three rates to illustrate the computational difference
- gen~ is not in the current Week 7 object list — this comparison patch introduces it as a preview/teaser of deeper MSP concepts
- QR code distribution moment at the start — outline should script this clearly so students are set up before the walkthrough begins
- Collective noise sculpture playback as finale — the social/sonic moment of 20+ noise sculptures playing at once

</specifics>

<deferred>
## Deferred Ideas

- QR code generation and patch hosting logistics — not a buildable artifact in this phase, just referenced in the outline
- gen~ as a full teaching topic — the comparison patch introduces it visually but a deep gen~ lesson would be a separate phase/week

</deferred>

---

*Phase: 03-lecture-outline-and-diagrams*
*Context gathered: 2026-02-14*
