# Create a Sound Sculpture -- MUSC 320 Week 7 Assignment

## Overview

In class you heard (and played) a noise sculpture built entirely from MSP signal objects. Now it is your turn. Build your own original sound sculpture in Max/MSP -- a patch that produces an evolving, textured sound using the objects you learned this week.

A sound sculpture is not a static tone. It should change and move over time: volumes swell, timbres shift, layers drift in and out. Think of it as a small piece of audio art that rewards a listener who sits with it for 30 seconds or more.

## Requirements

### Signal Objects Checklist

Your patch must use every signal object listed below at least once. Check them off as you go.

**Signal Sources** (use each at least once):

- [ ] `cycle~` -- cosine/sine oscillator
- [ ] `noise~` -- white noise generator
- [ ] `phasor~` -- repeating 0-to-1 ramp

**Signal Operators** (use each at least once):

- [ ] `*~` -- signal multiplication
- [ ] `+~` -- signal addition
- [ ] `sig~` -- number-to-signal conversion
- [ ] `line~` -- smooth audio-rate ramps

**Output and Safety** (required in every patch):

- [ ] `ezdac~` -- audio toggle
- [ ] `live.gain~` -- volume control
- [ ] `clip~` -- safety limiter

**Monitoring** (use at least one):

- [ ] `live.scope~` and/or `number~`

### Two Layers Minimum

Your patch must have at least **two distinct layers** (also called voices). A layer is an independent signal path with its own source, its own processing, and its own amplitude control. The layers are mixed together via `+~` into a shared output chain (`live.gain~` -> `clip~` -> `ezdac~`).

Look at Patch 06 and Patch 07 from class for examples of multi-layer architecture. In Patch 06, Voice A is a cycle~ with phasor~ tremolo and Voice B is a detuned drone -- two separate signal paths summed with `+~`. Your sculpture should follow the same principle: independent voices combined into one output.

## Suggestions for Exploration

These are optional starting points, not requirements. Try whatever sounds interesting to you.

- **Tremolo:** Use `phasor~` as an LFO to modulate a `*~` amplitude control -- the volume wobbles at whatever rate you set.
- **Beating:** Run two `cycle~` objects at nearly the same frequency (e.g., 220 and 223 Hz). The slight detuning creates a slow, pulsing beat.
- **Shaped noise:** Feed `noise~` through `*~` driven by a `line~` envelope so the noise fades in and out rather than playing continuously.
- **Modulation depth:** Multiply your `phasor~` LFO by a small number (e.g., `*~ 0.3`) before using it as a modulator. This controls how extreme the effect is.
- **Layered textures:** Combine a tonal layer (cycle~) with a noise layer (noise~) at different amplitudes for a richer sound.

## Submission

[Submission instructions TBD]

## Reference

Your go-to resource for object syntax, signal flow patterns, and patch walkthroughs is the [MSP Quick Reference](student-reference.md). Keep it open while you work.
