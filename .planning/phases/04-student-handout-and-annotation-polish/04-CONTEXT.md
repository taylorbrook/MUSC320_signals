# Phase 4: Student Handout and Annotation Polish - Context

**Gathered:** 2026-02-14
**Status:** Ready for planning

<domain>
## Phase Boundary

Produce a single-page student reference handout listing all MSP objects covered with descriptions and key concepts, and apply a systematic annotation pass across all patches (demo + build-up) — bridge comments, experiment prompts, troubleshooting tips, color-coded regions, and parameter annotations. No new patches or new functionality.

</domain>

<decisions>
## Implementation Decisions

### Handout structure
- Organized by concept sections (Signal vs Control, Envelopes, Operators, etc.), not alphabetically or by patch order
- Each object entry includes: name, description, and key parameters (e.g. "cycle~ — generates a sine wave. First argument: frequency in Hz. Connect signal to left inlet for FM.")
- Integrate Phase 3 SVG diagrams (waveform, signal flow) into the handout as visual anchors
- Format: Markdown file (.md) in the repo

### Annotation voice & density
- Mixed tone: bridge comments are conversational ("line~ is the signal version of line"), object labels are technical and terse
- Every object gets a comment annotation; connections only get comments when the relationship isn't obvious (e.g. why *~ multiplies two signals together)
- Bridge comments appear only at the object's first introduction in the build-up series — later patches label it technically
- Troubleshooting comments ("If you hear nothing, check...") placed near common mistake points where students typically go wrong (e.g. near toggle for "DSP must be on", near sig~ for "needs signal input")

### Experiment prompts
- Exploratory style — encourage rewiring and understanding signal flow, not just safe parameter tweaks (e.g. "Disconnect the *~ and connect noise~ directly to dac~ — what do you hear?")
- 1-2 per patch, focused on the core concept each patch teaches
- All patches get experiments, including the demo patch — students explore the finished product after understanding the build-up
- Visually distinct: separate colored comment box (different background color from regular annotations)

### Color coding scheme
- 3 region types: Source (oscillators/noise), Processing (envelopes/operators), Output (gain/dac~)
- Cool/warm color scheme: cool tones (blue) for sources, warm tones (orange/red) for processing, neutral (green) for output
- Applied to all patches — demo and build-up series — for consistency
- Color legend comment in each patch so each patch is self-contained for independent study

### Claude's Discretion
- Exact concept section headings for the handout
- Specific RGB/hex values for the cool/warm color scheme
- Which connections are "non-obvious" enough to warrant annotation
- Exact placement and wording of troubleshooting tips
- How to best integrate SVG diagrams into markdown (inline, linked, etc.)

</decisions>

<specifics>
## Specific Ideas

- Experiment prompts should encourage rewiring, not just number changes — students should understand signal flow by breaking and reconnecting things
- Each patch should be fully self-contained for study: color legend, annotations, and experiments all present without needing to reference other materials

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 04-student-handout-and-annotation-polish*
*Context gathered: 2026-02-14*
