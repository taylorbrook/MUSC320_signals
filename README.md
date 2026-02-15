# MUSC 320 -- Week 7: Introduction to MSP

Welcome to the MSP module of MUSC 320. This repository contains everything you need for the lecture: Max patches to open and explore, a quick-reference handout, and signal-flow diagrams.

## Getting started

You will need **Max 9** installed to open the patches.

### Download the entire repo

Click the green **Code** button at the top of this page, then choose **Download ZIP**. Unzip the folder and open any `.maxpat` file in Max.

If you are comfortable with Git you can also clone:

```
git clone https://github.com/taylorbrook/MUSC320_signals.git
```

## Patches

Open these in order. Each patch builds on the previous one, leading up to a full noise-sculpture performance instrument.

| # | Patch | What it covers |
|---|-------|----------------|
| 1 | [01-hello-signal.maxpat](patches/01-hello-signal.maxpat) | Your first MSP patch -- turning audio on and hearing a tone |
| 2 | [02-first-tone.maxpat](patches/02-first-tone.maxpat) | Controlling frequency and amplitude with `cycle~` and `*~` |
| 3 | [03-control-meets-signal.maxpat](patches/03-control-meets-signal.maxpat) | Bridging Max messages and MSP signals with `sig~` and `number~` |
| 4 | [04-noise-and-amplitude.maxpat](patches/04-noise-and-amplitude.maxpat) | White noise, `noise~`, and shaping amplitude |
| 5 | [05-envelopes.maxpat](patches/05-envelopes.maxpat) | Amplitude envelopes with `line~` |
| 6 | [06-modulation-and-mixing.maxpat](patches/06-modulation-and-mixing.maxpat) | LFO modulation, AM/ring mod, and mixing voices with `+~` |
| 7 | [07-noise-sculpture-rebuild.maxpat](patches/07-noise-sculpture-rebuild.maxpat) | Rebuilding the demo from scratch -- putting it all together |

### Bonus patches

- [noise-sculpture-demo.maxpat](patches/noise-sculpture-demo.maxpat) -- The finished performance instrument demonstrated in lecture
- [three-level-comparison.maxpat](patches/three-level-comparison.maxpat) -- Side-by-side comparison of message rate vs. signal rate vs. sample-level processing

## Reference handout

- [Student quick-reference (PDF/Markdown)](docs/student-reference.md) -- One-page cheat sheet covering every MSP object used in the patches, with signal-flow diagrams

