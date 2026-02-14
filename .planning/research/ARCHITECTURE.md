# Architecture Research

**Domain:** Max/MSP educational lecture kit (45-minute guest lecture, introductory MSP)
**Researched:** 2026-02-13
**Confidence:** HIGH

## Standard Architecture

### System Overview

```
MUSC320-week7-msp/
 |
 |  +-----------+     +------------------+     +------------------+
 |  | docs/     |---->| patches/         |<----| diagrams/        |
 |  | (lecture  |     | (numbered build  |     | (whiteboard-     |
 |  |  notes,   |     |  series + final  |     |  ready visuals)  |
 |  |  handout) |     |  demo)           |     |                  |
 |  +-----------+     +------------------+     +------------------+
 |        |                    ^
 |        |   references by    |
 |        +--------------------+
 |          "open patch 03..."
```

The lecture kit is a flat, self-contained bundle. There is no runtime dependency between components -- no patch loads another patch, no abstraction is shared across patches. Instead, the connections are human-navigated: the lecture notes say "now open patch 03" and the instructor does so. This is deliberate. Each numbered patch must stand alone so students can open any single file after the lecture and understand it without hunting for dependencies.

### Component Responsibilities

| Component | Responsibility | Typical Implementation |
|-----------|----------------|------------------------|
| **Finished demo patch** | Hook the audience; show what MSP can do before teaching anything | Single .maxpat with the complete noise sculpture, heavily annotated |
| **Numbered build-up series** | Teach one concept per patch in isolation, progressively building toward the demo | 5-7 standalone .maxpat files, numbered 01- through 0N- |
| **Lecture notes** | Guide the instructor through timing, talking points, and patch-switching cues | Single Markdown or text document with per-minute timing |
| **Student handout** | Post-lecture reference students keep; key objects, concepts, "try this" prompts | Single-page PDF or Markdown |
| **Whiteboard diagrams** | Visual aids drawn or projected during lecture to explain non-patchable concepts | ASCII/SVG/image files showing waveforms, signal flow, control-vs-signal comparison |

## Recommended Project Structure

```
MUSC320-week7-msp/
├── patches/
│   ├── 00-noise-sculpture-demo.maxpat    # Finished demo (opened first)
│   ├── 01-hello-signal.maxpat            # dac~, ezdac~, Audio Status
│   ├── 02-sine-tone.maxpat               # cycle~, frequency, amplitude
│   ├── 03-control-vs-signal.maxpat       # sig~, number~ — bridging Max ↔ MSP
│   ├── 04-noise-and-multiply.maxpat      # noise~, *~ — scaling amplitude
│   ├── 05-envelopes.maxpat               # line~, *~ — shaping sound over time
│   ├── 06-modulation.maxpat              # cycle~ as LFO modulating noise sculpture
│   └── 07-noise-sculpture-rebuild.maxpat # Full rebuild (≈ identical to 00, arrived at incrementally)
├── docs/
│   ├── lecture-outline.md                # Timing, talking points, patch cues
│   └── student-handout.md                # Post-lecture reference sheet
├── diagrams/
│   ├── digital-audio-waveform.svg        # Sampling, amplitude, sample rate
│   ├── signal-flow.svg                   # Top-to-bottom flow with ~ cords
│   └── control-vs-signal.svg             # Side-by-side Max message vs MSP signal
└── README.md                             # "What is this, how to use it" for the instructor
```

### Structure Rationale

- **patches/:** All .maxpat files in one flat folder. No subfolders, no abstractions shared between patches. Each patch is self-contained. This matters because students will download and open individual files -- they should never encounter "object not found" errors from missing abstractions. The number prefix enforces presentation order in both the filesystem and the instructor's mental model.
- **docs/:** Prose documents that reference patches by filename. Kept separate from patches because they are a different file type consumed in a different tool (text editor or browser, not Max). Two documents only: one for the instructor (lecture outline) and one for the student (handout).
- **diagrams/:** Visual assets that exist outside Max. These illustrate concepts that cannot be shown by patching alone (e.g., what a digital waveform looks like at the sample level, or a side-by-side comparison of Max control data vs. MSP signal data). SVG format because it scales to any projection size and can be drawn on a whiteboard from the reference.
- **README.md:** A single top-level file that orients anyone opening the repository. Not for students -- for the instructor or anyone reviewing the lecture kit.

## Architectural Patterns

### Pattern 1: Self-Contained Numbered Patches (No Inter-Patch Dependencies)

**What:** Every patch in the build-up series includes all the objects it needs directly in the patch. No abstractions, no `bpatcher` references to other files, no `send`/`receive` across patches.

**When to use:** Always, for this project. This is non-negotiable for educational materials where students open files in isolation after the lecture.

**Trade-offs:** Some duplication between patches (e.g., `dac~` and `ezdac~` appear in every patch). This is acceptable -- the duplication reinforces the concept through repetition, and students never encounter dependency errors.

**Evidence:** Cycling '74's own MSP tutorials (tutorials 01 through 62) follow this pattern exactly. Each tutorial patch is a standalone file. The [official MSP tutorial index](https://docs.cycling74.com/max8/tutorials/00_mspindex) numbers them sequentially and each patch opens independently.

### Pattern 2: Concept-Per-Patch Progression

**What:** Each numbered patch introduces exactly one new concept on top of the previous patch's foundation. The new concept is visually and sonically obvious -- the student can see what changed and hear the difference.

**When to use:** For the entire build-up series (patches 01 through 07).

**Trade-offs:** This limits how many total concepts can be covered (one patch per concept = ~7 patches for a 45-minute lecture). But depth-per-patch is more valuable than breadth-across-patches for a first introduction.

**Progression logic:**
```
01  →  "What is a signal? How do I hear anything?"       (dac~, ezdac~, Audio Status)
02  →  "What does a basic tone sound like?"              (cycle~, setting frequency/amplitude)
03  →  "How is this different from what I already know?" (sig~, number~, control ↔ signal bridge)
04  →  "What about non-periodic sound?"                  (noise~, *~ to scale it)
05  →  "How do I shape sound over time?"                 (line~, *~ as envelope)
06  →  "How do I make it move and evolve?"               (cycle~ as LFO, modulation)
07  →  "Put it all together → noise sculpture"           (complete rebuild)
```

Each step answers a question the previous step raised. Patch 01 makes sound, which raises "what kind of sound?" (02). Hearing a sine wave raises "how is this different from Max messages?" (03). Understanding signals raises "what other signals exist?" (04). Hearing noise raises "how do I control when it plays?" (05). Controlling envelopes raises "can I automate the control itself?" (06). All pieces are now in hand for the full sculpture (07).

### Pattern 3: Heavy Inline Annotation

**What:** Every object in every patch has a `comment` box nearby explaining what it does, why it is connected where it is, and what the student should try changing. Use Max's built-in `comment` object (yellow sticky-note style), not the `annotation` or `hint` attributes (which require hover interaction and are invisible in screenshots).

**When to use:** Every patch. Non-negotiable for this project.

**Trade-offs:** Patches look visually busy. Mitigate this by using consistent layout: objects flow top-to-bottom in the center, comments are placed to the right or below, using a smaller font size and a distinct background color.

**Annotation conventions:**
- Place a title comment at the top of every patch: patch number, name, one-sentence purpose
- Annotate each new object the first time it appears in the series
- For objects that appeared in an earlier patch, a briefer note: "cycle~ -- see patch 02 for details"
- Include "Try this:" prompts in the final patch (07) suggesting parameter changes students can experiment with

## Data Flow

### Lecture Delivery Flow

```
[Instructor opens README]
    |
    v
[Opens lecture-outline.md]
    |
    v
[Opens 00-noise-sculpture-demo.maxpat]  ──  "Here's where we're headed"
    |                                          (play it, 2-3 minutes)
    v
[Opens 01-hello-signal.maxpat]           ──  live-build or walkthrough
    |                                          (refer to diagrams/ as needed)
    v
[Opens 02... 03... 04... 05... 06...]    ──  one patch per topic, ~5-6 min each
    |
    v
[Opens 07-noise-sculpture-rebuild.maxpat] ── "We built the whole thing"
    |
    v
[Distributes student-handout.md + all patches]
```

### Signal Flow Within Each Patch (Consistent Convention)

```
┌──────────────────────────────────┐
│  [Source objects at top]          │   noise~, cycle~
│        |                         │
│        v                         │
│  [Processing in middle]          │   *~, +~  (amplitude, mixing)
│        |                         │
│        v                         │
│  [Envelope/modulation]           │   line~ → *~, cycle~ as LFO
│        |                         │
│        v                         │
│  [Output at bottom]              │   live.gain~ → dac~ / ezdac~
└──────────────────────────────────┘
```

Use this top-to-bottom layout in every patch. Signal sources at the top, output at the bottom. This matches Cycling '74's own tutorial convention and the natural reading direction. Students will internalize "signal flows downward" as a spatial metaphor.

### Key Data Flows

1. **Lecture notes → Patches:** The lecture outline references patches by exact filename. Each timing block in the outline names the patch to open and the key talking points for that patch. This is the only cross-reference in the kit.
2. **Patches → Student handout:** The handout lists every object used across all patches with a one-line description. It does not reproduce patch screenshots -- it is a text reference. Objects are listed in the order they first appear in the series.
3. **Diagrams → Lecture notes:** The outline indicates when to draw or project each diagram. Diagrams are referenced by filename in the outline ("project `control-vs-signal.svg`").

## Build Order (What to Create First)

Build order matters because later artifacts reference earlier ones. Create in this sequence:

### Phase 1: Anchor Patch (Build First)

**Create:** `00-noise-sculpture-demo.maxpat`

This is the creative and sonic anchor for the entire kit. Every other artifact derives from it. The numbered series deconstructs it. The lecture notes narrate it. The handout catalogs its objects. Until this patch exists, sounds good, and covers all 5 required topics, nothing else can be finalized.

**Why first:** If the demo patch changes (different objects, different signal flow), the entire build-up series, lecture notes, and handout must change with it. Settle the demo first.

### Phase 2: Build-Up Series (Build Second)

**Create:** `01-hello-signal.maxpat` through `07-noise-sculpture-rebuild.maxpat`

Work forward from 01, not backward from 07. Each patch must make sonic sense on its own before the next one is started. The test: can you open patch N with no context and understand what it demonstrates? If not, it needs more annotation or the concept split needs adjustment.

**Why second:** The series defines the pedagogical structure. Lecture notes cannot be written until the series is finalized, because timing depends on how many patches exist and how complex each one is.

### Phase 3: Lecture Notes (Build Third)

**Create:** `docs/lecture-outline.md`

Walk through the entire series as if delivering the lecture. Note timing per patch, write talking points, mark where to reference diagrams. This is where pacing problems surface -- if the series has too many patches for 45 minutes, merge some; if too few, split one.

**Why third:** Requires finalized patches to reference. The outline is a script that calls patches by name.

### Phase 4: Diagrams (Build Fourth)

**Create:** `diagrams/digital-audio-waveform.svg`, `diagrams/signal-flow.svg`, `diagrams/control-vs-signal.svg`

These illustrate concepts that surfaced during lecture-notes writing. Only create diagrams for concepts that genuinely need a visual aid beyond what Max's patch view already shows. The digital audio waveform (sampling/quantization) cannot be shown in a patch. The control-vs-signal comparison is more clearly shown as a side-by-side diagram than as two separate patches.

**Why fourth:** The lecture notes reveal which visual aids are actually needed. Do not pre-plan diagrams -- let the teaching narrative demand them.

### Phase 5: Student Handout (Build Last)

**Create:** `docs/student-handout.md`

This is a distillation of everything else. It lists objects (from the patches), summarizes concepts (from the lecture notes), and includes "try this" prompts (from the annotations). It cannot be written until all other components are stable.

**Why last:** It is a derivative artifact. Every piece of information in it comes from a patch or the lecture notes. Building it last ensures it accurately reflects the final state of the kit.

### Phase 6: README (Build Last, Alongside Handout)

**Create:** `README.md`

A brief orientation document: what the kit is, how to use it, file listing with one-line descriptions. Trivial to write once everything else exists.

## Anti-Patterns

### Anti-Pattern 1: Shared Abstractions Between Build-Up Patches

**What people do:** Factor common elements (like a `dac~` + `live.gain~` output stage) into a shared abstraction that all patches load.

**Why it is wrong:** Students download individual patches after the lecture. If `my-output.maxpat` is missing from their download, every patch throws "object not found" errors. This destroys the self-study experience. Additionally, when demonstrating live, if the abstraction has a bug, every patch in the series breaks simultaneously.

**Do this instead:** Duplicate the output stage in every patch. The duplication is small (3-4 objects) and reinforces the concept through repetition.

### Anti-Pattern 2: Monolithic "All Concepts in One Patch" Demo

**What people do:** Build a single massive patch with labeled sections for each concept, using `send`/`receive` or `pattr` to show/hide sections.

**Why it is wrong:** Cognitively overwhelming for students seeing MSP for the first time. The visual complexity undermines the "one new idea at a time" pedagogical approach. Also fragile to demonstrate live -- scrolling around a large patch to find the right section wastes lecture time.

**Do this instead:** Separate patches per concept. The only large patch is the finished demo (00), which is shown before any teaching begins, when students are primed to be impressed rather than analytical.

### Anti-Pattern 3: Writing Lecture Notes Before Patches Exist

**What people do:** Draft a detailed lecture outline first, then try to build patches that match the outline.

**Why it is wrong:** The outline will assume patch behaviors that turn out to be wrong once built. You might plan "3 minutes on cycle~" but discover the patch needs 5 minutes of setup before cycle~ makes sense. The outline becomes fiction.

**Do this instead:** Build patches first. Walk through them. Then write the outline based on what actually happened when you used the patches.

### Anti-Pattern 4: Over-Diagramming

**What people do:** Create diagrams for every concept, including ones that Max's own patch view already illustrates perfectly.

**Why it is wrong:** Wastes preparation time. A Max patch IS a diagram -- that is the entire point of visual programming. External diagrams should only cover concepts that cannot be shown in a patch (e.g., the physics of digital audio sampling, or an abstract comparison of paradigms).

**Do this instead:** Limit diagrams to 2-3 concepts where the visual aid adds information beyond what the patch shows. For this lecture: digital audio waveform (sampling), and control-vs-signal comparison (paradigm difference). Signal flow within a patch does not need a separate diagram because the patch itself shows it.

## Integration Points

### How Patches Reference Each Other (They Do Not)

| Boundary | Communication | Notes |
|----------|---------------|-------|
| Patch 00 ↔ Patches 01-07 | None at runtime | 00 is the "after" picture; 01-07 are the build path. Conceptually related, technically independent. |
| Patch N ↔ Patch N+1 | None at runtime | Each patch adds one concept. The student (or instructor) provides the continuity by opening them in order. |
| Lecture notes ↔ Patches | Filename references only | The outline says "open 03-control-vs-signal.maxpat" -- this is a human instruction, not a programmatic link. |
| Diagrams ↔ Lecture notes | Filename references only | The outline says "project control-vs-signal.svg" -- again, a human instruction. |

### Naming Convention

- Patches: `NN-kebab-case-name.maxpat` where NN is a zero-padded two-digit number. The number enforces filesystem sort order. The name describes the concept, not the objects used.
- Docs: `kebab-case-name.md`
- Diagrams: `kebab-case-name.svg`
- No spaces in filenames. No uppercase. This avoids cross-platform filesystem issues and makes command-line operations easy.

### .maxpat Internal Conventions

- Window title (in the `patcher` JSON `rect` attributes): set to a readable name matching the filename
- Comment box at top of every patch: `## 03 — Control vs. Signal` (patch number + title)
- Background color: use a subtle tinted `panel` behind the "try this" annotation section to visually separate teaching notes from the patch logic
- Object layout: source at top, output at bottom, left-to-right for parallel signal paths, annotations to the right of each object column

## Sources

- [Cycling '74 MSP Tutorials Table of Contents](https://docs.cycling74.com/max8/tutorials/00_mspindex) -- official tutorial numbering and topic progression
- [Cycling '74 Package Folder Structure](https://docs.cycling74.com/userguide/packages/) -- canonical folder organization for Max content
- [Managing Complex Patches in Max](https://cycling74.com/articles/managing-complex-patches-in-max) -- subpatcher vs. abstraction decisions, naming, modularity
- [264 Ways to Teach Max](https://www.chrisswithinbank.net/2016/01/teaching-max-msp/) -- incremental module rollout pedagogy, bpatcher-based teaching system
- [Cycling '74 Community Resources](https://cycling74.com/resources) -- educational material ecosystem
- [Cycling '74 Learn Page](https://cycling74.com/learn) -- official learning pathways
- [Best Practices in Max Forum Discussion](https://cycling74.com/forums/best-practices-in-max) -- annotation, naming, organization conventions

---
*Architecture research for: MUSC 320 Week 7 MSP lecture kit*
*Researched: 2026-02-13*
