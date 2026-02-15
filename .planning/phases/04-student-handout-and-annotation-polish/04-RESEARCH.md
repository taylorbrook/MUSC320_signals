# Phase 4: Student Handout and Annotation Polish - Research

**Researched:** 2026-02-14
**Domain:** Max/MSP patch annotation (JSON editing), student reference handout authoring (Markdown), color-coded region design, pedagogical annotation patterns
**Confidence:** HIGH

## Summary

Phase 4 is a polish and documentation phase -- no new patches or functionality. It has two deliverables: (1) a Markdown student reference handout organized by concept sections with SVG diagrams, and (2) a systematic annotation pass across all 9 patches (demo + 7 build-up + comparison). The annotation pass adds color-coded regions (panel objects behind functional groups), experiment prompts (colored comment boxes), bridge comments (at first introduction only), troubleshooting tips, and parameter value annotations.

The existing patches already have substantial annotations from Phases 1-2 -- approximately 10-17 comment objects per patch, including some bridge comments, parameter explanations, and one "TRY THIS" prompt (in Patch 06). Phase 4 systematizes and completes this: ensuring every object has a comment, applying consistent color coding across all patches, adding 1-2 experiment prompts per patch (including the demo), placing troubleshooting tips at common failure points, and ensuring bridge comments appear at each object's first introduction.

The technical implementation is entirely JSON editing of .maxpat files (adding `comment` boxes and `panel` objects with specific `bgcolor` values) and Markdown authoring for the handout. Both are well-understood from Phases 1-3. The primary risk is not technical but organizational: maintaining consistency across 9 files while adding potentially 100+ new comment/panel objects. A systematic approach (one annotation type per pass, not one patch per pass) will reduce inconsistency.

**Primary recommendation:** Execute in two plans -- Plan 1 creates the student handout (standalone Markdown deliverable), Plan 2 applies the systematic annotation pass across all patches (color regions, experiment prompts, bridge comments, troubleshooting tips, parameter annotations). The handout should be written first because cataloging all objects and concepts for the handout provides the definitive reference for the annotation pass.

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

#### Handout structure
- Organized by concept sections (Signal vs Control, Envelopes, Operators, etc.), not alphabetically or by patch order
- Each object entry includes: name, description, and key parameters (e.g. "cycle~ -- generates a sine wave. First argument: frequency in Hz. Connect signal to left inlet for FM.")
- Integrate Phase 3 SVG diagrams (waveform, signal flow) into the handout as visual anchors
- Format: Markdown file (.md) in the repo

#### Annotation voice & density
- Mixed tone: bridge comments are conversational ("line~ is the signal version of line"), object labels are technical and terse
- Every object gets a comment annotation; connections only get comments when the relationship isn't obvious (e.g. why *~ multiplies two signals together)
- Bridge comments appear only at the object's first introduction in the build-up series -- later patches label it technically
- Troubleshooting comments ("If you hear nothing, check...") placed near common mistake points where students typically go wrong (e.g. near toggle for "DSP must be on", near sig~ for "needs signal input")

#### Experiment prompts
- Exploratory style -- encourage rewiring and understanding signal flow, not just safe parameter tweaks (e.g. "Disconnect the *~ and connect noise~ directly to dac~ -- what do you hear?")
- 1-2 per patch, focused on the core concept each patch teaches
- All patches get experiments, including the demo patch -- students explore the finished product after understanding the build-up
- Visually distinct: separate colored comment box (different background color from regular annotations)

#### Color coding scheme
- 3 region types: Source (oscillators/noise), Processing (envelopes/operators), Output (gain/dac~)
- Cool/warm color scheme: cool tones (blue) for sources, warm tones (orange/red) for processing, neutral (green) for output
- Applied to all patches -- demo and build-up series -- for consistency
- Color legend comment in each patch so each patch is self-contained for independent study

### Claude's Discretion
- Exact concept section headings for the handout
- Specific RGB/hex values for the cool/warm color scheme
- Which connections are "non-obvious" enough to warrant annotation
- Exact placement and wording of troubleshooting tips
- How to best integrate SVG diagrams into markdown (inline, linked, etc.)

### Deferred Ideas (OUT OF SCOPE)
None -- discussion stayed within phase scope.
</user_constraints>

## Standard Stack

### Core
| Technology | Version | Purpose | Why Standard |
|-----------|---------|---------|-------------|
| .maxpat JSON editing | Max 9.1.x format | Add comment objects, panel objects, color attributes to all patches | Same technique used successfully in Phases 1-3; all 9 patches already validated in Max 9 |
| Markdown (CommonMark) | N/A | Author the student handout | Established format from Phase 3 (lecture outline); converts to PDF via Pandoc+Typst pipeline |
| SVG diagram references | N/A | Embed Phase 3 diagrams in handout | Two SVGs already exist: `digital-audio-waveform.svg`, `signal-flow.svg` |

### Supporting
| Tool | Purpose | When to Use |
|------|---------|-------------|
| Max `comment` object | In-patch annotations (text labels, bridge comments, experiment prompts, troubleshooting tips) | Every annotation added in this phase |
| Max `panel` object | Colored background rectangles for region color coding | Behind each functional region (Source/Processing/Output) in every patch |
| `textcolor` attribute | Distinguish annotation types visually (bridge=blue, experiment=green, troubleshooting=amber, reference=grey) | On every comment object added |
| `bgcolor` attribute | Color panel backgrounds for region coding | On panel objects for Source (blue), Processing (orange), Output (green) regions |

### Alternatives Considered
| Instead of | Could Use | Tradeoff |
|-----------|-----------|----------|
| `panel` objects for regions | `bgcolor` on individual comment objects | Panel provides a unified background behind multiple objects; comment bgcolor only colors text background. Panel is the standard approach for visual grouping in Max patches. Use panel. |
| Markdown `![](path)` for SVGs | HTML `<img src="path">` tag | Standard Markdown image syntax works in most renderers. HTML `<img>` gives more sizing control. For repo-local Markdown viewed on GitHub or in editors, `![alt](path)` is sufficient and simpler. |
| Inline SVG embedding | Linked image references | Inline SVG would bloat the Markdown file. Link to the SVG files in `diagrams/` -- they render in most Markdown viewers and convert properly via Pandoc. |

## Architecture Patterns

### Pattern 1: Panel-Behind-Objects for Color-Coded Regions

**What:** A `panel` object (rectangle with configurable background color) is placed behind a group of functionally related objects. The panel sits at the back layer (added first in the boxes array or sent to back), creating a colored background that visually groups the objects.

**When to use:** Every patch, for each of the three functional regions (Source, Processing, Output).

**Implementation in .maxpat JSON:**
```json
{
    "box": {
        "id": "obj-region-source",
        "maxclass": "panel",
        "mode": 0,
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ x, y, width, height ],
        "bgcolor": [ 0.15, 0.2, 0.35, 0.15 ],
        "rounded": 12
    }
}
```

**Key details:**
- `mode: 0` = rectangle (not rounded corners by default in some versions; `rounded` attribute controls corner radius)
- `bgcolor` RGBA with low alpha (0.1-0.2) creates a subtle tint that does not obscure the objects on top
- Panel must be placed EARLIER in the `boxes` array than the objects it should appear behind (Max renders boxes in array order, last = on top)
- Alternatively, after adding the panel to the patch, ensure it is "sent to back" -- in JSON this means its position in the array

**Confidence: HIGH** -- panel objects are used in the existing demo patch (`noise-sculpture-demo.maxpat` uses two panel objects with bgcolor for Presentation Mode grouping).

### Pattern 2: Colored Comment Boxes for Experiment Prompts

**What:** Experiment prompt comments use a distinctive `textcolor` (green) and optionally a `bgcolor` on the comment to visually separate them from regular annotations.

**Implementation in .maxpat JSON:**
```json
{
    "box": {
        "fontface": 1,
        "fontsize": 11.0,
        "id": "obj-experiment-01",
        "maxclass": "comment",
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ x, y, width, height ],
        "text": "EXPERIMENT: Disconnect the *~ and connect noise~ directly to dac~ -- what do you hear?",
        "textcolor": [ 0.2, 0.65, 0.2, 1.0 ],
        "bgcolor": [ 0.15, 0.25, 0.15, 1.0 ]
    }
}
```

**Key details:**
- `fontface: 1` = bold, to make experiment prompts stand out
- Green textcolor `[0.2, 0.65, 0.2, 1.0]` -- distinct from regular grey annotations `[0.5, 0.5, 0.5, 1.0]` and blue bridge comments `[0.4, 0.4, 0.8, 1.0]`
- The existing "TRY THIS" in Patch 06 uses `textcolor: [0.4, 0.6, 0.4, 1.0]` and `fontface: 1` -- maintain compatibility with this existing style
- `bgcolor` on comment objects creates a colored background behind the text, making the experiment box visually distinct

**Confidence: HIGH** -- the textcolor approach is already proven in the codebase (Patch 05 has a green TRY THIS comment, Patch 06 has another). Adding bgcolor to the comment is a standard .maxpat attribute.

### Pattern 3: Annotation Type Color Coding (Text Colors)

**What:** Different annotation types use different text colors to be visually distinguishable at a glance.

**Recommended color assignments:**

| Annotation Type | Text Color (RGBA) | Existing Usage | Notes |
|----------------|-------------------|----------------|-------|
| Bridge comment (conceptual) | `[0.4, 0.4, 0.8, 1.0]` (blue) | Used in Patches 01, 02, 03 for concept explanations | Only at first introduction of each object |
| Object label (technical) | `[0.5, 0.5, 0.5, 1.0]` (grey) | Used throughout all patches for standard annotations | Default annotation color |
| Experiment prompt | `[0.3, 0.65, 0.3, 1.0]` (green), bold | Patch 05: `[0.4, 0.6, 0.4, 1.0]`, Patch 06: `[0.4, 0.6, 0.4, 1.0]` | Use `fontface: 1` and `bgcolor` for visual distinction |
| Troubleshooting tip | `[0.85, 0.6, 0.2, 1.0]` (amber/orange) | Not yet used | New annotation type for this phase |
| Parameter annotation | `[0.5, 0.5, 0.5, 1.0]` (grey) | Used alongside object labels | Same color as object labels -- parameter info is part of the technical label |
| Section heading | `fontface: 1, fontsize: 12.0` | Used throughout as bold section labels | Not color-coded, just bold |
| Reference (cross-patch) | `[0.5, 0.5, 0.5, 1.0]` (grey) | Used in Patches 02-05 for "see Patch 01" references | Same as standard annotation |
| Color legend | `[0.6, 0.6, 0.6, 1.0]` (lighter grey) | Used for scope labels and secondary info | Legend text should be subtle |

**Confidence: HIGH** -- all text colors verified against existing patches in the codebase.

### Pattern 4: Region Color Scheme (Panel Background Colors)

**What:** Three region types with cool/warm/neutral tints.

**Recommended RGBA values (very low alpha for subtle tinting):**

| Region | Color Description | RGBA | Hex (approximate) |
|--------|------------------|------|-------------------|
| Source (oscillators, noise) | Cool blue | `[0.2, 0.3, 0.55, 0.1]` | #334D8C at 10% opacity |
| Processing (envelopes, operators) | Warm orange | `[0.55, 0.35, 0.15, 0.1]` | #8C5926 at 10% opacity |
| Output (gain, clip, dac) | Neutral green | `[0.2, 0.45, 0.25, 0.1]` | #337340 at 10% opacity |

**Key design decisions:**
- Alpha = 0.1 (10%) keeps the tint very subtle -- it groups objects without obscuring them
- If 10% is too faint in practice, increase to 0.15 or 0.2 during verification
- The demo patch already has color-coded voice labels (Noise = red `[0.85, 0.4, 0.3]`, Tone = blue `[0.3, 0.5, 0.85]`, Drone = amber `[0.85, 0.75, 0.3]`) -- the region colors should complement but not conflict with these voice colors

**Confidence: MEDIUM** -- colors chosen by analysis of existing palette and color theory principles; exact values may need adjustment during Max 9 verification. The instructor may want to tune these visually.

### Recommended Handout Structure

Based on the concept-section organization decision and the objects covered across all patches:

```
# MSP Quick Reference -- MUSC 320 Week 7

[Digital audio waveform diagram]

## What Is a Signal?
- Brief explanation: 44,100 samples/second, tilde (~) convention
- Signals vs messages comparison

## Signal Sources
- cycle~ -- cosine oscillator (frequency, phase)
- noise~ -- white noise generator
- phasor~ -- repeating 0-to-1 ramp

[Signal flow diagram]

## Signal Operators
- *~ -- signal multiplication (amplitude control)
- +~ -- signal addition (mixing)
- sig~ -- converts number to signal

## Envelopes and Shaping
- line~ -- signal ramp generator (the signal version of line)

## Output and Safety
- dac~ / ezdac~ -- digital-to-analog converter
- live.gain~ -- volume control with metering
- clip~ -- amplitude safety limiter

## Monitoring
- live.scope~ -- oscilloscope display
- number~ -- signal value display

## Key Concepts
- Signal flow: Source -> Processing -> Output
- Bridge objects: sig~ connects Max to MSP
- Amplitude matters: always scale before output

## Your Patches
- List of all patches with one-line descriptions
```

**Confidence: HIGH** -- headings derived from the five topics (TOPC-01 through TOPC-05) and the object list from REQUIREMENTS.md.

### Anti-Patterns to Avoid

- **Over-annotating simple patches:** Patches 01-03 are small. Adding 20+ comments would make them unreadable. Limit annotations to what is needed -- the decision to annotate every object does not mean verbose multi-line comments on simple objects like `dac~` after its first full explanation.
- **Inconsistent panel sizing:** Panels that do not fully enclose their region or that overlap with adjacent regions create visual confusion. Size panels generously around the objects they contain.
- **Experiment prompts that require external knowledge:** Every experiment must be completable with only the objects visible in that patch. "Try connecting to a filter" is wrong because students do not have filter objects yet.
- **Color legend taking prime screen real estate:** Place the color legend in a corner or at the bottom of the patch, not in the middle of the signal flow.

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Region grouping | Complex subpatcher-based grouping | `panel` objects with colored backgrounds | Panel is the standard Max approach for visual grouping; subpatchers would hide objects from students |
| Handout formatting | HTML/CSS-based handout | Markdown with image links, converted via Pandoc+Typst | Established pipeline from Phase 3; Markdown is already the project standard |
| Color palette generation | Trial-and-error RGB values | Systematic palette with low-alpha panels | Defined once in this research, applied consistently |

## Common Pitfalls

### Pitfall 1: Panel Objects Covering Objects (Z-Order Issue)
**What goes wrong:** A panel object added to the boxes array AFTER the objects it should be behind renders ON TOP of them, hiding the objects.
**Why it happens:** Max renders boxes in array order (first in array = deepest layer). New objects added at the end of the array appear on top.
**How to avoid:** Insert panel objects EARLY in the `boxes` array, before the objects they should appear behind. Alternatively, add them at the end and reposition them in the array, or use Max's "Send to Back" which modifies the array order.
**Warning signs:** Objects disappear or become unclickable after adding panels.

### Pitfall 2: Annotation Overload Making Patches Unreadable
**What goes wrong:** Every object gets a multi-line comment, experiment prompts are long paragraphs, troubleshooting tips add even more text. The patch becomes a wall of text with objects hidden between comment boxes.
**Why it happens:** The requirement says "every object gets a comment annotation" -- but this does not mean every object needs a novel. Later patches where objects have been introduced should use brief technical labels, not full explanations.
**How to avoid:** Follow the context decision: "bridge comments appear only at the object's first introduction in the build-up series -- later patches label it technically." A returning object in Patch 05 that was fully explained in Patch 01 needs only a brief label: "cycle~ 330 -- cosine oscillator (see Patch 02)".
**Warning signs:** Comment objects outnumber functional objects by more than 3:1 in any single patch.

### Pitfall 3: Experiment Prompts That Break Audio Safety
**What goes wrong:** An experiment prompt tells students to "connect noise~ directly to dac~" -- which produces full-amplitude white noise. Students without headphones get blasted; students with headphones risk hearing damage.
**Why it happens:** The rewiring-style experiments encouraged by the context decisions can create dangerous signal paths if students bypass the gain~/clip~ safety chain.
**How to avoid:** Every experiment prompt that involves rewiring must include the safety caveat: "Turn live.gain~ all the way down first, then reconnect, then slowly bring it up." Or better: design experiments that cannot bypass the safety chain (e.g., "Disconnect the *~ from the LFO and connect a message box with 0.5 instead -- hear the difference?").
**Warning signs:** Any experiment prompt that mentions connecting directly to dac~ or bypassing live.gain~.

### Pitfall 4: Inconsistent Annotation Between Patches
**What goes wrong:** Patch 01 has green experiment prompts with bold text and bgcolor, Patch 04 has experiment prompts in grey italic with no bgcolor. Students cannot tell which comments are experiments and which are regular annotations.
**Why it happens:** Editing 9 patches sequentially, the implementer drifts from the established conventions. Fatigue leads to shortcuts.
**How to avoid:** Define the exact JSON template for each annotation type ONCE (in the plan) and copy-paste it for every instance. Use search-and-verify after completing all patches to check consistency.
**Warning signs:** Different textcolor values for the same annotation type across patches.

### Pitfall 5: Handout References Objects Not Covered in Patches
**What goes wrong:** The handout lists `adc~` with a full description and parameters, but adc~ is only mentioned in passing in one comment in Patch 01 ("adc~ is the input equivalent of dac~ -- we won't use it today"). Students try to find adc~ in the patches and cannot.
**Why it happens:** The handout writer includes objects from the syllabus that the patches mention but do not actively use.
**How to avoid:** The handout should list objects that appear as FUNCTIONAL OBJECTS (newobj) in the patches, not objects mentioned only in text comments. adc~ gets at most a one-line note: "adc~ -- audio input (not used this week)."
**Warning signs:** Handout lists objects that have no `"maxclass": "newobj"` instance in any patch.

## Code Examples

### Example 1: Color Legend Comment Block
```json
{
    "box": {
        "fontsize": 10.0,
        "id": "obj-color-legend",
        "maxclass": "comment",
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ 30.0, 680.0, 400.0, 18.0 ],
        "text": "COLOR REGIONS:  Blue = Source (oscillators, noise)  |  Orange = Processing (envelopes, operators)  |  Green = Output (gain, dac~)",
        "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
    }
}
```

### Example 2: Panel Object for Source Region
```json
{
    "box": {
        "id": "obj-region-source",
        "maxclass": "panel",
        "mode": 0,
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ 25.0, 80.0, 350.0, 120.0 ],
        "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
        "rounded": 12
    }
}
```

### Example 3: Experiment Prompt Comment
```json
{
    "box": {
        "fontface": 1,
        "fontsize": 11.0,
        "id": "obj-experiment",
        "maxclass": "comment",
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ 30.0, 600.0, 520.0, 19.0 ],
        "text": "EXPERIMENT: Disconnect the *~ and connect noise~ directly to live.gain~ -- what changes?",
        "textcolor": [ 0.3, 0.65, 0.3, 1.0 ],
        "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ]
    }
}
```

### Example 4: Troubleshooting Tip Comment
```json
{
    "box": {
        "fontsize": 11.0,
        "id": "obj-troubleshoot",
        "maxclass": "comment",
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ 400.0, 560.0, 460.0, 19.0 ],
        "text": "IF YOU HEAR NOTHING: Is ezdac~ toggled on? Is live.gain~ turned up? Check Audio Status (double-click dac~).",
        "textcolor": [ 0.85, 0.6, 0.2, 1.0 ]
    }
}
```

### Example 5: Bridge Comment (First Introduction)
```json
{
    "box": {
        "fontsize": 11.0,
        "id": "obj-bridge-linetilde",
        "maxclass": "comment",
        "numinlets": 1,
        "numoutlets": 0,
        "patching_rect": [ 350.0, 62.0, 520.0, 19.0 ],
        "text": "line~ is the signal version of line -- smooth ramps at audio rate instead of message rate.",
        "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
    }
}
```

### Example 6: Handout SVG Integration (Markdown)
```markdown
## What Is a Signal?

MSP objects process **signals** -- continuous streams of numbers, 44,100 per second.

![Digital audio: continuous waves become discrete samples](../diagrams/digital-audio-waveform.svg)

Every MSP object has a **tilde (~)** in its name. When you see ~, think "audio rate."
```

## Existing Annotation Inventory

### Current State of Each Patch

| Patch | Comment Objects | Has Experiments | Has Bridge Comments | Has Troubleshooting | Has Color Regions |
|-------|----------------|-----------------|--------------------|--------------------|------------------|
| 01-hello-signal | ~14 | No | Yes (3 blue) | No | No |
| 02-first-tone | ~12 | 1 (parameter only) | Yes (2 blue) | No | No |
| 03-control-meets-signal | ~14 | No | Yes (3 blue) | No | No |
| 04-noise-and-amplitude | ~7 | No | No | No | No |
| 05-envelopes | ~15 | 1 (TRY THIS) | Yes (1: line~) | No | No |
| 06-modulation-and-mixing | ~14 | 1 (TRY THIS) | Yes (phasor~, +~) | No | No |
| 07-noise-sculpture-rebuild | ~6 | 1 (TRY THIS) | No (references) | No | No |
| noise-sculpture-demo | ~15 (labels) | No | No | No | No (has panels for Presentation) |
| three-level-comparison | ~10 (est.) | No | No | No | No |

### What Needs Adding Per Patch

| Patch | Missing Annotations | Experiments Needed | Color Regions | Troubleshooting Tips |
|-------|--------------------|--------------------|---------------|---------------------|
| 01 | Parameter annotations (220 Hz, 0.5 amplitude) | 1-2 (rewiring) | Source, Output | "DSP must be on", "Check ezdac~" |
| 02 | Minimal -- well-annotated | 1 (rewiring-style, replace parameter tweak) | Source, Output | Brief -- "see Patch 01" |
| 03 | Parameter annotations | 1-2 (sig~ exploration) | Source, Processing (sig~), Output | "sig~ needs signal input" |
| 04 | Several objects missing annotations | 1-2 (noise/amplitude) | Source (both), Processing, Output | "noise~ at full amplitude is loud" |
| 05 | Some objects labeled minimally | 1 (envelope shape modification) | Source, Processing (envelope), Output | "Toggle must be on" |
| 06 | Relatively well-annotated | 1 (phasor~ rate change -- already exists, add rewiring) | Source (voices), Processing (LFO, mix), Output | Brief |
| 07 | Intentionally lighter (references) | 1 (compare with demo) | Source, Processing, Output (all three voices) | "Compare side by side with demo" |
| demo | Presentation Mode labels only; patching view needs annotations | 1-2 (slider exploration, rewiring) | Source (3 voices), Processing (automation), Output | "Check Presentation Mode is on" |
| comparison | Minimal | 0-1 (optional) | Optional -- this is supplementary | Brief |

## Object Inventory for Handout

Complete list of MSP objects used as functional `newobj` instances across all patches:

### Signal Sources
| Object | First Appears | Key Parameters | Bridge |
|--------|--------------|----------------|--------|
| `cycle~` | Patch 01 | Frequency in Hz (arg 1). 0 Hz = read from inlet. Right inlet = phase. | "metro generates bangs at intervals. cycle~ generates a smooth wave." |
| `noise~` | Patch 04 | No arguments. Outputs random values -1 to 1 at audio rate. | "random gives a random number each bang. noise~ gives one every sample." |
| `phasor~` | Patch 06 | Frequency in Hz. Outputs repeating 0-to-1 ramp. | "metro fires bangs at intervals. phasor~ generates a smooth ramp." |

### Signal Operators
| Object | First Appears | Key Parameters | Bridge |
|--------|--------------|----------------|--------|
| `*~` | Patch 01 | Multiplies two signals or signal by constant. | "You used * to multiply numbers. *~ multiplies signals." |
| `+~` | Patch 04 (brief), Patch 06 (full) | Adds two signals. Used for mixing voices. | "You added numbers with +. +~ adds signals." |
| `sig~` | Patch 03 | Converts a Max number to a continuous signal. | "sig~ is the bridge between Max and MSP." |
| `line~` | Patch 05 | Generates smooth ramps. Message format: target time. | "line~ is the signal version of line." |

### Output and Safety
| Object | First Appears | Key Parameters | Bridge |
|--------|--------------|----------------|--------|
| `dac~` | Patch 01 | Digital-to-analog converter. Sends signal to speakers. Two inlets = stereo. | "dac~ is the final stop -- signal becomes sound." |
| `ezdac~` | Patch 01 | Same as dac~ but with click-to-toggle UI. | "The power switch for MSP audio." |
| `live.gain~` | Patch 01 | Volume control with metering. Stereo in/out. | "A volume slider with a built-in meter." |
| `clip~` | Patch 01 | Limits signal range. clip~ -0.9 0.9 prevents overload. | "Safety net -- prevents dangerously loud signals." |

### Monitoring
| Object | First Appears | Key Parameters | Bridge |
|--------|--------------|----------------|--------|
| `live.scope~` | Patch 01 | Oscilloscope display. Shows waveform shape. | "See the wave, not just hear it." |
| `number~` | Patch 03 | Displays signal value at control rate. Mode 2 = display only. | "Like a number box but for signals." |

### Control Domain (Used in MSP Context)
| Object | First Appears | Notes |
|--------|--------------|-------|
| `toggle` | Patch 05 | ON/OFF control for envelopes |
| `sel` | Patch 05 | Routes toggle output to different messages |
| `message` | Patch 05 | Contains line~ ramp instructions (e.g., "0, 1. 500") |
| `loadbang` | Patch 03 | Initializes slider position on patch open |
| `slider` | Patch 03 | Frequency/amplitude control (connects to sig~) |

## Open Questions

1. **Comment bgcolor behavior in Max 9 dark themes**
   - What we know: Comment objects accept `bgcolor` as a JSON attribute. The demo patch uses panels with bgcolor successfully.
   - What's unclear: Whether comment bgcolor renders well in Max 9's default dark theme vs light theme. If the background color is too dark on a dark theme, it may be invisible.
   - Recommendation: Use bgcolor on experiment prompts with sufficient contrast. Test during verification by opening in Max 9. If bgcolor on comments does not render well, fall back to using a small panel behind each experiment prompt instead.

2. **Panel alpha transparency in Max 9**
   - What we know: Panel objects accept RGBA bgcolor with alpha channel. The demo patch uses panels at full opacity (alpha=1.0) for Presentation Mode backgrounds.
   - What's unclear: Whether very low alpha (0.1) renders visibly enough to be meaningful as region tinting on Max 9's default dark background.
   - Recommendation: Start with alpha 0.1, verify in Max 9. If too faint, increase to 0.15 or 0.2. If alpha is not supported on panels, use fully opaque panels with very dark tinted colors (e.g., `[0.12, 0.13, 0.18, 1.0]` for blue-tinted dark).

3. **Three-level comparison patch scope**
   - What we know: The comparison patch is supplementary (gen~ teaser). The lecture outline allocates 3 min maximum.
   - What's unclear: Whether it should receive the full annotation treatment (color regions, experiments, troubleshooting) or lighter treatment.
   - Recommendation: Lighter treatment -- add a brief annotation explaining each column, but skip color regions and experiments. This patch is a visual aid, not a study patch.

## Sources

### Primary (HIGH confidence)
- Existing codebase: 9 .maxpat files inspected, all JSON structures verified against Max 9.1 format
- Phase 1-3 RESEARCH.md, PLAN.md, and SUMMARY.md documents -- established patterns for .maxpat JSON editing
- `.planning/research/STACK.md` -- confirmed comment object, panel object, bgcolor/textcolor attribute usage
- `.planning/research/ARCHITECTURE.md` -- confirmed annotation patterns, panel-based grouping
- `.planning/research/PITFALLS.md` -- confirmed audio safety requirements for experiment prompts

### Secondary (MEDIUM confidence)
- [Cycling '74 Panel Object Reference](https://docs.cycling74.com/max8/refpages/panel) -- panel properties (mode, bgcolor, rounded)
- [Cycling '74 Comment Object Reference](https://docs.cycling74.com/max8/refpages/comment) -- comment properties (textcolor, fontface, fontsize)
- [GitHub SVG Rendering](https://alexwlchan.net/til/2024/how-to-render-svgs-on-github/) -- SVGs render via `<img>` tag in GitHub Markdown; standard `![](path)` syntax also works for local viewing
- [Pandoc Markdown Image Syntax](https://pandoc.org/MANUAL.html) -- standard `![alt](path)` works for SVG-to-PDF conversion

### Tertiary (LOW confidence)
- Panel alpha transparency behavior at very low values -- not verified in Max 9 specifically; needs runtime verification

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH -- same JSON editing and Markdown authoring used in Phases 1-3
- Architecture: HIGH -- panel and comment patterns verified in existing codebase
- Pitfalls: HIGH -- based on direct codebase analysis and Phase 1-3 experience
- Color values: MEDIUM -- chosen systematically but need visual verification in Max 9

**Research date:** 2026-02-14
**Valid until:** 2026-03-14 (stable domain -- Max .maxpat format does not change between minor versions)
