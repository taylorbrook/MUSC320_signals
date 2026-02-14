# Stack Research

**Domain:** Educational Max/MSP lecture preparation (patches, diagrams, handouts)
**Researched:** 2026-02-13
**Confidence:** HIGH

## Recommended Stack

### Core Technologies

| Technology | Version | Purpose | Why Recommended |
|------------|---------|---------|-----------------|
| Max | 9.1.2 (Dec 18 2025) | Authoring environment for all .maxpat patches | Current stable release from Cycling '74. Max 9 introduced MC (multi-channel), new data types (Arrays, Strings), and signal-based music objects. Max 9 patches are backward-readable by Max 8 if no Max 9-only objects are used, but for a teaching machine you control, target Max 9 directly. **Confidence: HIGH** — verified via [Cycling '74 downloads page](https://cycling74.com/downloads) and [9.1.2 release notes](https://cycling74.com/releases/max/9.1.2). |
| Pandoc | 3.x (latest via `brew install pandoc`) | Convert Markdown lecture notes and handout to PDF | Universal document converter. Write once in Markdown, produce PDF handout and HTML outline from same source. Avoids vendor lock-in of Google Docs/Word. **Confidence: HIGH** — [pandoc.org](https://pandoc.org/MANUAL.html) is canonical. |
| Typst | 0.14+ (latest via `brew install typst`) | PDF rendering engine for Pandoc | 27x faster than XeLaTeX for PDF generation. Clean, modern typographic output ideal for student handouts. Pandoc supports `--pdf-engine=typst` natively. Avoids the multi-GB LaTeX installation. **Confidence: MEDIUM** — multiple credible sources confirm the Pandoc+Typst workflow; verified via [Homebrew formula](https://formulae.brew.sh/formula/typst) and [typst.app](https://typst.app/). |
| Excalidraw | Web app (excalidraw.com) or VS Code extension | Whiteboard-style diagrams (signal flow, waveform sketches, control-vs-signal comparison) | Hand-drawn aesthetic is pedagogically approachable — diagrams look like whiteboard sketches rather than sterile engineering drawings. Exports SVG and PNG. Files are JSON so they version-control in git. Free, no account required. **Confidence: HIGH** — widely adopted, verified at [excalidraw.com](https://excalidraw.com). |

### Supporting Tools

| Tool | Purpose | When to Use |
|------|---------|-------------|
| Markdown (CommonMark) | Authoring format for lecture outline, talking points, and handout source | Always. Single-source text that Pandoc converts to PDF. Plain text diffs cleanly in git. |
| Max Presentation Mode | Building student-facing UI layouts within patches | Use for the finished noise-sculpture demo patch so the "performance" view hides wiring complexity. Do NOT use for the numbered build-up patches — students need to see the wiring. |
| Max `comment` object | In-patch annotations and explanations | Every patch. Use liberally: label every object's purpose, mark signal flow direction, explain non-obvious connections. Color-code comments (e.g., blue for "what this does", green for "try changing this value"). |
| Max `hint` / `annotation` inspector fields | Hover-text documentation on individual objects | Use on key objects in the finished demo patch. When students explore the patch later, hovering shows explanations in the Clue Window. |
| SVG (exported from Excalidraw) | Embedding diagrams in the PDF handout | Export diagrams as SVG for the Pandoc/Typst pipeline. SVG scales to any print size without pixelation. |

### Development Tools

| Tool | Purpose | Notes |
|------|---------|-------|
| VS Code + Excalidraw extension | Edit .excalidraw diagram files without leaving the editor | Extension ID: `pomdtr.excalidraw-editor`. Keeps diagram source files in the repo alongside patches. |
| Git | Version control for all deliverables | .maxpat files are JSON — they diff and merge in git. Excalidraw files are also JSON. Markdown is plain text. Everything in this stack is git-friendly by design. |
| `brew` (Homebrew) | Install Pandoc and Typst on macOS | `brew install pandoc typst` — one command, no manual installers. |

## .maxpat File Format Details

The .maxpat format is JSON (plain text) with no official public specification from Cycling '74. The structure, reverse-engineered by the community and documented by [py2max](https://github.com/shakfu/py2max), has three core elements:

```
{
  "patcher": {
    "fileversion": 1,
    "appversion": { "major": 9, "minor": 1, ... },
    "rect": [...],              // Window position/size
    "bgcolor": [...],           // Background color RGBA
    "editing_bgcolor": [...],
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "gridsize": [15.0, 15.0],
    "openinpresentation": 0,    // 1 = open in Presentation Mode
    "boxes": [                  // Array of all objects
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "text": "cycle~ 440",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [x, y, w, h],
          "comment": "",        // annotation text
          ...
        }
      }
    ],
    "lines": [                  // Array of all patch cords
      {
        "patchline": {
          "source": ["obj-1", 0],
          "destination": ["obj-2", 0]
        }
      }
    ]
  }
}
```

**Key implications for this project:**
- Files are human-readable JSON — you can inspect and hand-edit them in any text editor.
- Every object has a `patching_rect` (position in patching view) and optionally a `presentation_rect` (position in Presentation Mode).
- Comment objects use `"maxclass": "comment"` with `"text"` containing the annotation string.
- Subpatchers nest a full `"patcher"` object inside a box.
- **Git-friendliness:** Because it is JSON, `git diff` shows meaningful changes. However, Max auto-generates unique `id` fields and reorders arrays on save, so diffs can be noisy. Commit after deliberate edits, not after every open-and-close.

**Confidence: MEDIUM** — structure confirmed via py2max documentation and community reverse-engineering; no official Cycling '74 spec exists.

## Patch Organization Best Practices (for this project)

Based on community consensus from [Cycling '74 forums](https://cycling74.com/forums/best-practices-in-max) and the [managing complex patches article](https://cycling74.com/articles/managing-complex-patches-in-max):

1. **One concept per patch file.** The numbered build-up series (01-hello-signal.maxpat, 02-cycle-intro.maxpat, etc.) should each teach exactly one idea. This maps to the pedagogical principle of "functional strength" — describable in a few words without conjunctions.

2. **Always provide object arguments.** A bare `cycle~` defaults to 0 Hz and outputs DC offset, which confuses students. Always write `cycle~ 440` (or whatever frequency). This is the single most cited gotcha for MSP beginners.

3. **Liberal use of `comment` objects.** Since students cannot build along during the lecture and will study these patches afterward, every non-obvious object and connection needs a plain-English comment. Use color to distinguish categories (explanation vs. instruction vs. warning).

4. **Left-to-right, top-to-bottom layout.** Signal flow should read visually like English text. Sources (oscillators, noise~) at top, processing in the middle, output (dac~, ezdac~) at bottom. This convention is near-universal in Max pedagogy.

5. **Encapsulate only in the finished demo.** The build-up patches should keep all objects visible at the top level so students see every connection. The finished noise-sculpture patch may use subpatchers for cleanliness but should still have a well-commented top level.

6. **Presentation Mode only for the finished demo.** Presentation Mode hides the wiring, which is anti-pedagogical in teaching patches. Reserve it for the demo patch's "performance" view where you want a clean UI with just gain sliders and toggles.

## Lecture Materials Pipeline

```
lecture-outline.md  ──┐
                      ├──> pandoc --pdf-engine=typst ──> lecture-outline.pdf
                      │
student-handout.md  ──┤──> pandoc --pdf-engine=typst ──> student-handout.pdf
                      │
diagrams/*.excalidraw ──> Export SVG ──> Referenced in .md files
```

**Why Markdown as the source format:**
- Plain text diffs cleanly in git.
- Pandoc converts to PDF, HTML, DOCX — any format the department might request.
- Faster to write than LaTeX; richer than plain text.
- Embeds images/SVGs with standard `![alt](path)` syntax.

**Why NOT Google Docs or Word:**
- Not version-controllable.
- Binary formats produce meaningless git diffs.
- Collaborative editing is unnecessary — this is a solo lecture prep.
- Export to PDF loses formatting fidelity vs. Pandoc+Typst pipeline.

## Alternatives Considered

| Recommended | Alternative | When to Use Alternative |
|-------------|-------------|-------------------------|
| Max 9.1.2 | Max 8 (legacy) | Only if the teaching machine has Max 8 and cannot be upgraded. Max 9 patches open in Max 8 if no Max 9-specific objects are used, but Max 9 is the current version and should be targeted. |
| Excalidraw | draw.io (diagrams.net) | If you need more formal engineering-style diagrams. draw.io is more feature-rich but its output looks clinical rather than approachable. For a whiteboard-diagram assignment, Excalidraw's hand-drawn style is pedagogically superior. |
| Excalidraw | Mermaid.js (text-based diagrams) | If you want diagrams defined entirely in code (no visual editor). Mermaid renders flowcharts from text in Markdown. Useful for simple flowcharts but cannot produce waveform sketches or freeform annotations. Use Mermaid for simple flow diagrams if needed; use Excalidraw for everything else. |
| Pandoc + Typst | LaTeX (full TeX Live) | If you need advanced mathematical typesetting. For a handout with object names, signal flow descriptions, and a few diagrams, Typst is vastly simpler. LaTeX requires a 4+ GB install and far more markup knowledge. |
| Pandoc + Typst | Google Docs / Word | If institutional policy requires .docx submission. In that case, write in Markdown and use `pandoc -o output.docx` to convert. But for PDF handouts, the Typst pipeline produces cleaner output. |
| Max Presentation Mode | Max standalone application | Never for teaching. Standalones hide all source code and cannot be studied by students. Standalones are for distribution to end-users, not learners. |

## What NOT to Use

| Avoid | Why | Use Instead |
|-------|-----|-------------|
| Pure Data (Pd) | Different software entirely. Students are learning Max in MUSC 320. Pd patches (.pd) are not compatible with Max patches (.maxpat). | Max 9 |
| Max standalone builds | Compile patches into opaque .app bundles that students cannot open, edit, or study. Defeats the entire pedagogical purpose. | Distribute .maxpat files directly |
| PowerPoint / Keynote for diagrams | Tempting but produces raster-locked, non-versionable diagrams. Resizing degrades quality. Cannot be embedded in Markdown pipeline. | Excalidraw (exports SVG) |
| Max `number~` object in teaching patches | Misleadingly looks like `number` (int) or `flonum` but behaves completely differently — it downsamples signal to control rate and does NOT pass through like its control-rate cousins. Cited as the #1 confusion source for MSP beginners. | Use `meter~` or `scope~` to visualize signals; use `snapshot~` when you explicitly need to convert signal to number, and explain the conversion. |
| Bare `cycle~` (no frequency argument) | Defaults to 0 Hz, producing full-volume DC offset that is inaudible but clips the output. Students think it is broken. | Always write `cycle~ 440` or another audible frequency. |
| `delay` / `pipe` for ordering | Students sometimes use timing objects to force execution order. This is fragile and hides the real problem. | Use `trigger` (or `t`) object to enforce right-to-left execution order explicitly. |
| LaTeX for handouts | Massive install (~4 GB), steep learning curve, slow compilation. The handout content does not require LaTeX's mathematical typesetting. | Pandoc + Typst (27x faster, ~50 MB install) |
| Notion / Google Docs for lecture notes | Not git-versionable, binary export, requires internet, collaborative features add no value for solo lecture prep. | Markdown files in the repo |

## Stack Patterns by Variant

**If the teaching machine has Max 8 instead of Max 9:**
- Author all patches in Max 9 on your own machine.
- Avoid Max 9-only objects (MC objects, new string/array types, sfizz~).
- The basic MSP objects used in this lecture (cycle~, noise~, line~, *~, +~, dac~, ezdac~, sig~, live.gain~, number~) have existed since Max 5 and are fully compatible.
- Test-open every patch in Max 8 before the lecture.

**If you need to distribute patches to students digitally:**
- Use a Max Package structure for clean distribution:
  ```
  MUSC320-Week7/
    package-info.json
    patchers/           # .maxpat files
    docs/               # PDF handout, lecture notes
    media/              # any audio files if needed
    extras/             # patches that appear in Max's Extras menu
  ```
- Students drop the folder into `~/Documents/Max 9/Packages/` and everything integrates automatically.
- **Confidence: HIGH** — [Cycling '74 Package documentation](https://docs.cycling74.com/userguide/packages/).

**If handout format must be DOCX (institutional requirement):**
- Continue writing in Markdown.
- Use `pandoc student-handout.md -o student-handout.docx` instead of the Typst pipeline.
- Formatting will be slightly less polished than PDF but content is identical.

## Version Compatibility

| Component | Compatible With | Notes |
|-----------|-----------------|-------|
| Max 9.1.2 .maxpat files | Max 8.x, Max 7.x (with caveats) | Patches open in older Max versions. Objects introduced in Max 9 (MC, sfizz~, etc.) will show as missing. Core MSP objects (cycle~, noise~, dac~, line~, *~) are cross-version safe. |
| Max 9.1.2 | macOS 11.0+ (Intel & Apple Silicon), Windows 10 22H2+, Windows 11 | Universal binary on macOS. Requires 4 GB RAM minimum, 8 GB recommended. |
| Pandoc 3.x | Typst 0.14+ | `pandoc --pdf-engine=typst` is supported natively. No plugins required. |
| Excalidraw .excalidraw files | VS Code extension, excalidraw.com | JSON format, git-friendly. Export to SVG/PNG for use in documents. |
| Markdown (CommonMark) | Pandoc, GitHub, VS Code, any text editor | Universal plain-text format. No compatibility concerns. |

## Installation

```bash
# On macOS — install document pipeline tools
brew install pandoc typst

# Verify installations
pandoc --version    # Should show 3.x
typst --version     # Should show 0.14+

# Max 9.1.2 — download from Cycling '74
# https://cycling74.com/downloads
# Install via .dmg (macOS) or .exe (Windows)
# Requires license (educational pricing available: https://cycling74.com/shop/students)

# VS Code Excalidraw extension (optional)
code --install-extension pomdtr.excalidraw-editor

# Convert lecture materials (example commands)
pandoc lecture-outline.md -o lecture-outline.pdf --pdf-engine=typst
pandoc student-handout.md -o student-handout.pdf --pdf-engine=typst
```

## Sources

- [Cycling '74 Downloads — Max 9.1.2](https://cycling74.com/downloads) — verified current version and system requirements (HIGH confidence)
- [Max 9.1.2 Release Notes](https://cycling74.com/releases/max/9.1.2) — verified release date Dec 18, 2025 (HIGH confidence)
- [New in Max — Cycling '74](https://cycling74.com/products/new-in-max) — Max 9 feature overview (HIGH confidence)
- [Cycling '74 Package Documentation](https://docs.cycling74.com/userguide/packages/) — package folder structure and package-info.json format (HIGH confidence)
- [Managing Complex Patches in Max — Arne Eigenfeldt](https://cycling74.com/articles/managing-complex-patches-in-max) — patch organization best practices (HIGH confidence)
- [Best Practices in Max — Cycling '74 Forum](https://cycling74.com/forums/best-practices-in-max) — community consensus on encapsulation, comments, data flow (MEDIUM confidence — forum, but multiple experienced users agree)
- [py2max — GitHub](https://github.com/shakfu/py2max) — .maxpat JSON structure documentation (MEDIUM confidence — third-party reverse engineering)
- [264 Ways to Teach Max — Chris Swithinbank](https://www.chrisswithinbank.net/2016/01/teaching-max-msp/) — Max pedagogy patterns, package-based distribution (MEDIUM confidence — dated 2016 but pedagogy is timeless)
- [Teaching Artists to MaxMSP — Jessica Fenlon](https://medium.com/@drawclose/teaching-artists-to-maxmsp-pedagogy-655ca5b2e198) — pedagogical approach to Max teaching (MEDIUM confidence)
- [Pandoc User's Guide](https://pandoc.org/MANUAL.html) — Markdown-to-PDF conversion, Typst engine support (HIGH confidence)
- [Typst — Homebrew Formula](https://formulae.brew.sh/formula/typst) — installation method, current version (HIGH confidence)
- [Using Pandoc and Typst for PDFs](https://neilzone.co.uk/2025/01/using-pandoc-and-typst-to-convert-markdown-into-custom-formatted-pdfs-with-a-sample-template/) — pipeline documentation, 27x speed comparison (MEDIUM confidence — credible blog with benchmarks)
- [Max 9 backward compatibility forum thread](https://cycling74.com/forums/max-9-old-patchers-open-with-new-colors) — Max 8/9 interop details (MEDIUM confidence)

---
*Stack research for: MUSC 320 Week 7 — Introduction to MSP lecture preparation kit*
*Researched: 2026-02-13*
