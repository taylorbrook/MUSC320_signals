# Phase 1: Noise Sculpture Demo - Context

**Gathered:** 2026-02-13
**Status:** Ready for planning

<domain>
## Phase Boundary

Create a finished Max/MSP demo patch that hooks student interest and anchors the entire lecture kit. The patch produces a musically intriguing noise sculpture using only Week 7 syllabus objects (noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~/ezdac~, scope~) with full audio safety. Build-up deconstruction, lecture scripting, and annotation polish belong to later phases.

</domain>

<decisions>
## Implementation Decisions

### Sonic character
- Polished, finished-sounding piece -- students hear what MSP can produce at its best
- Moderate density: 3-4 voices/layers to sound rich but remain traceable in the patch
- Specific synthesis approach is Claude's discretion, but must sound intentional and composed, not random

### Temporal evolution
- Hybrid automation: patch evolves on its own via line~ automation, but instructor can intervene and override parameters manually
- Open-ended duration: runs as long as needed, no fixed endpoint -- can be 30 seconds or 5 minutes depending on lecture pacing
- Temporal shape (looping vs trajectory) is Claude's discretion
- Audible changes should include pitch movement, timbral shifts, and rhythmic elements
- Rhythmic effects achieved through low-frequency cycle~ as amplitude modulator (phasor~ is not in the Week 7 object list)

### Performance controls
- Single toggle for on/off (start/stop the sound)
- 3-4 tweakable sliders for shaping the sound live (e.g., brightness, speed, density, mix)
- Instrument-like UI feel in Presentation Mode -- minimal labels, big sliders, emphasis on performing
- live.gain~ for master volume control

### Scope visualization
- Main large scope~ showing the combined output signal
- Smaller scope~ displays showing constituent parts (individual voices/layers) so students see how signals combine
- All scopes visible in Presentation Mode

### Pedagogical hooks
- Triple hook strategy: sonic surprise (unexpected sound from Max), visual-sonic link (waveforms dance with sound), and live manipulation (dramatic parameter changes)
- After playing the demo in Presentation Mode, briefly switch to patching view so students see how few objects made that sound ("peek behind the curtain")
- Balance accessibility and ambition: "this is powerful AND you can make this"
- Side-by-side contrast with familiar Max control-flow -- show students "same idea, but now with audio" (may be a companion element in the demo or handled in build-up/lecture phases)

### Claude's Discretion
- Overall sonic character (dark/bright/warm) -- choose what demonstrates MSP most effectively
- Synthesis approach (AM, subtractive, additive, or hybrid) -- pick what works best with the object constraints
- Signal routing between noise~ and cycle~
- Temporal shape (looping vs trajectory)
- Specific slider parameter mappings
- Exact UI layout in Presentation Mode
- Scope~ sizing and placement

</decisions>

<specifics>
## Specific Ideas

- User mentioned phasor~ for rhythm but it's outside the Week 7 object set -- use low-frequency cycle~ instead for similar effect
- The "peek behind the curtain" moment is key: after hearing the polished result, students see the patch is built from simple objects
- Multiple scopes showing constituent parts, not just the output -- pedagogical transparency
- Instrument-like feel suggests the demo doubles as a playable thing, not just a static demo

</specifics>

<deferred>
## Deferred Ideas

- Side-by-side control-flow comparison may be better placed in Phase 2 (build-up series) or Phase 3 (lecture outline) where individual concepts are introduced -- capture the intent here, let planner decide placement
- phasor~ usage -- if added to syllabus objects in future, could enhance rhythmic capabilities

</deferred>

---

*Phase: 01-noise-sculpture-demo*
*Context gathered: 2026-02-13*
