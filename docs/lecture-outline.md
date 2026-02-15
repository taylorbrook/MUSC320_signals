# MUSC 320 Week 7 -- Introduction to MSP

## Lecture Outline (45 minutes)

**Instructor prep:** Have all patches ready in a Finder window. Open `noise-sculpture-demo.maxpat` in Presentation Mode before students arrive. Project the QR code on screen. DSP off until the demo moment.

**Patches referenced (in order):**
`noise-sculpture-demo.maxpat` | `01-hello-signal.maxpat` | `02-first-tone.maxpat` | `03-control-meets-signal.maxpat` | `three-level-comparison.maxpat` | `04-noise-and-amplitude.maxpat` | `05-envelopes.maxpat` | `06-modulation-and-mixing.maxpat` | `07-noise-sculpture-rebuild.maxpat`

**Diagrams referenced:**
`digital-audio-waveform.svg` | `signal-flow.svg`

---

## [00:00-03:00] Opening: Demo and Download (3 min)

**PATCH:** `noise-sculpture-demo.maxpat` -- open in Presentation Mode, all sliders visible

- Toggle ezdac~ ON, move sliders slowly -- let the noise sculpture evolve for ~30 seconds
- Let it breathe: noise textures shift, tonal elements drift, the automation scopes pulse
- After the wow moment, toggle OFF: "That's what we're building today. Every sound you just heard came from MSP -- the audio side of Max."
- **BRIDGE:** "You've built Max patches with messages and numbers. Today we enter the world of signals -- continuous streams of audio data."
- QR code moment: "Scan this QR code to download today's patches. You should see a folder with 9 files. Thumbs up when you have them."
  - Play the demo again quietly while students download -- the sound motivates the download
  - Give ~60 seconds for downloads

**[CHECKPOINT]** Confirm downloads: "Thumbs up if you have the patches. If the download isn't working, follow along on the projector -- you can grab them after class."

> **FALLBACK:** If download takes longer than 90 seconds, move on. Students without patches follow on the projector. Never let logistics consume the opening energy.

---

## [03:00-08:00] Digital Audio Basics (5 min)

**DIAGRAM:** Project `digital-audio-waveform.svg`

- Sound in the real world is a continuous wave -- smooth, unbroken changes in air pressure
- Computers cannot store continuous waves. Instead, they measure the wave at regular intervals and store those measurements as numbers.
- Point to the diagram: the smooth blue curve is the real sound; the red dots are what the computer actually stores
- Key number: **44,100 samples per second** (CD quality, Max's default sample rate)
- "Each sample is just a number between -1.0 and 1.0. Play them back fast enough and your speakers reconstruct the wave."
- **BRIDGE:** "In Max, you send individual messages -- a bang, a number. In MSP, data flows as a continuous stream, 44,100 numbers per second. Text messages vs. a phone call."
- Introduce the tilde (~): "Every MSP object has a tilde in its name because it processes signals, not messages. When you see ~, think audio rate."

> **FALLBACK:** If running long, compress to 3 min -- show the diagram, state "44,100 samples per second," introduce the tilde convention, and move on. Skip the -1.0 to 1.0 detail.

---

## [08:00-12:00] Patch 01: Hello Signal (4 min)

**PATCH:** `01-hello-signal.maxpat` -- highlight ezdac~, cycle~ 220, the output chain

- "Everyone open `01-hello-signal.maxpat` on your machine."
  - Give ~15 seconds for students to open the file
- **BRIDGE (ezdac~):** "You've been using Max without audio. ezdac~ is the power switch for MSP -- click it and Max starts processing audio signals."
- **BRIDGE (cycle~):** "metro generates bangs at regular intervals. cycle~ generates a smooth wave at a frequency you choose -- 220 times per second."
- Walk through the signal chain: `cycle~ 220` -> `*~ 0.5` -> `live.gain~` -> `clip~` -> `dac~`
  - cycle~ makes the wave, *~ sets the volume, live.gain~ gives a slider, clip~ keeps it safe, dac~ sends it to speakers
- Toggle ezdac~ ON -- hear the 220 Hz tone
- Point out the scope: "That's the waveform. A smooth, repeating wave -- 220 cycles per second."

> **FALLBACK:** None -- never skip this section. This is the foundation for everything that follows.

---

## [12:00-15:00] Patch 02: First Tone (3 min)

**PATCH:** `02-first-tone.maxpat` -- highlight the three frequency comparison scopes (220/440/880)

- "Open `02-first-tone.maxpat`. Look at the three scopes on the right."
- **BRIDGE (*~):** "You used * to multiply numbers. *~ multiplies signals -- same math, 44,100 times per second."
- Point out the three cycle~ frequencies and their scope displays:
  - 220 Hz: one cycle fills the scope window
  - 440 Hz: two cycles -- one octave up, double the frequency
  - 880 Hz: four cycles -- two octaves up, double again
- "Doubling the frequency raises the pitch by one octave. These three scopes show that relationship visually."
- Quick section -- concept is straightforward, keep momentum

> **FALLBACK:** Compress to 2 min if needed. Show the three frequencies, point out the octave relationship, skip amplitude detail. Say: "The scopes show what doubling frequency looks like."

---

## [15:00-22:00] Patch 03: Control Meets Signal (7 min)

**PATCH:** `03-control-meets-signal.maxpat` -- highlight side-by-side: slider -> number box (left) vs slider -> sig~ -> number~ (right)

- "Open `03-control-meets-signal.maxpat`. This is the most important concept today."
- Point out the two columns: left side is familiar Max (slider sends a number), right side is MSP
- **BRIDGE (sig~):** "sig~ converts a single number into a continuous signal -- 44,100 copies per second flowing through the cord. One number in, a stream of that number out."
- **BRIDGE (number~):** "A number box shows one value. number~ shows a signal's value -- but only updates a few times per second because the actual signal changes too fast to read."
- Move the slider -- both sides update, but the fundamental difference:
  - Left: one number moves when the slider moves
  - Right: a continuous signal flows at all times, carrying that number 44,100 times per second
- Toggle ezdac~ ON -- hear pitch change as slider moves
  - The slider -> sig~ -> cycle~ chain means the slider controls pitch via signal domain
  - "Move the slider up. Hear the pitch rise? That's because sig~ is feeding a continuous frequency value to cycle~."

**[TRY THIS - 60 seconds]** "Everyone move your slider. Hear the pitch change? Try finding the lowest tone. Try the highest. That's sig~ converting your slider position into a signal that controls cycle~."

**[CHECKPOINT]** "Can everyone hear the pitch change when you move the slider? Thumbs up."
  - If confusion: re-demonstrate slowly. Point at sig~ and trace the cord to cycle~.

- **DIAGRAM:** Reference `signal-flow.svg` -- show the abstract signal flow (source -> processing -> output), then point out how this patch maps to that structure
  - "This is the pattern you'll see in every MSP patch: a source generates a signal, processing shapes it, output sends it to speakers."

> **FALLBACK:** Never skip this section. If running long, skip the signal-flow diagram reference but keep the hands-on slider moment. The sig~/number~ concept is the priority.

**PACE CHECK:** If you reach this point by 22:00, you are on pace.

---

## [22:00-25:00] Three-Level Comparison (3 min)

**PATCH:** `three-level-comparison.maxpat` -- show three columns: metro (control), phasor~ (signal), gen~ (sample)

- Frame before opening: "There's actually a third level of processing in Max. We won't learn it today, but I want you to see it exists."
- Open the patch. Point out the three columns:
  - Left: metro fires 2 times per second -- the counter jumps in discrete steps (staircase)
  - Center: phasor~ generates a smooth 0-to-1 ramp, 44,100 values per second (smooth ramp)
  - Right: gen~ counter increments once per sample -- the most granular level (also smooth)
- "Look at the scopes. The left one is a staircase -- control rate. The center and right are smooth ramps -- signal rate and sample rate."
- Key takeaway: "MSP sits between Max messages and gen~ sample-level processing. MSP is where we'll work this semester."
- Script the exit: "That's gen~ -- a topic for another day. Let's get back to building."

**Hard time limit: 3 min max. Do not linger. Do not explain gen~ operators.**

> **FALLBACK: SECOND CUT** -- skip entirely if running long (save 3 min). Say: "There's a third level called gen~ -- you'll see a comparison patch in your download. For now, back to building."

---

## [25:00-28:00] Patch 04: Noise and Amplitude (3 min)

**PATCH:** `04-noise-and-amplitude.maxpat` -- highlight noise~ vs cycle~ comparison scopes

- "Open `04-noise-and-amplitude.maxpat`."
- **BRIDGE (noise~):** "random gives you a random number each bang. noise~ gives you a random number every sample -- 44,100 random numbers per second. That's white noise."
- Show the two scopes: periodic wave (cycle~ 330) vs aperiodic chaos (noise~)
  - "The left scope is a repeating wave -- pitched, predictable. The right scope is noise -- random, chaotic, no repeating pattern."

**[TRY THIS - 90 seconds]** "Toggle ezdac~ on. Now move the amplitude slider. What happens to the noise? Compare it with the tone. That slider controls *~ -- multiplying the signal by a number between 0 and 1. That's how you control loudness in MSP."
  - Expected: students hear noise get louder/quieter, discover that *~ scales amplitude
  - After 90 seconds: "What did you notice? Louder when the slider is up, silent when it's down. *~ is your volume knob -- multiply by 0 and the signal disappears."

> **FALLBACK:** Compress to 2 min -- skip the scope comparison, just demo noise~ and the amplitude slider. Say: "noise~ is the signal version of random. The slider controls *~, which scales the volume."

---

## [28:00-32:00] Patch 05: Envelopes (4 min)

**PATCH:** `05-envelopes.maxpat` -- highlight toggle -> sel -> line~ -> *~ chain

- "Open `05-envelopes.maxpat`."
- **BRIDGE (line~):** "You used line to smoothly ramp between values for MIDI fades. line~ does the same ramp at audio rate -- smooth enough to shape volume without clicks."
- Show the envelope scope: the smooth fade-in / fade-out shape
  - "Watch the scope when I toggle. See the ramp? That's line~ smoothly ramping from 0 to 1 over 500 milliseconds."
- Toggle ON and OFF -- hear the smooth fade
  - "Compare that to what would happen without an envelope -- the sound would click on and off abruptly. line~ is what makes it musical."
- Point out the toggle -> sel 0 1 -> message -> line~ chain:
  - Toggle sends 1 or 0. sel routes to different messages. The messages tell line~ where to ramp and how fast.

**[TRY THIS - 90 seconds]** "Toggle your patch on and off a few times. Watch the envelope scope. See the fade shape? Now imagine a drummer hitting a cymbal -- fast attack, slow decay. That's an envelope. line~ lets you build any shape you want."
  - Expected: students toggle and observe the smooth amplitude shape
  - After 90 seconds: "Envelopes are everywhere in synthesis. Every note you hear in electronic music has an envelope shaping its volume."

> **FALLBACK:** Compress to 2 min -- toggle demo only, skip try-this pause. Say: "line~ shapes volume over time. Toggle it and watch the scope. The annotations explain the rest."

---

## [32:00-36:00] Patch 06: Modulation and Mixing (4 min)

**PATCH:** `06-modulation-and-mixing.maxpat` -- highlight phasor~ LFO, +~ voice mixing, master toggle

- "Open `06-modulation-and-mixing.maxpat`. This patch has two voices."
- **BRIDGE (phasor~):** "metro fires bangs at regular intervals. phasor~ generates a smooth 0-to-1 ramp repeating at your frequency. It drives continuous modulation -- like a conductor's hand smoothly moving up and down."
- **BRIDGE (+~):** "You added numbers with +. +~ adds signals. Adding two sound waves means you hear both -- that's mixing."
- Point out the multi-voice architecture:
  - Voice A: cycle~ with phasor~ LFO creating tremolo (amplitude wobble)
  - Voice B: detuned cycle~ drone (220 + 223 Hz creates gentle beating)
  - Both voices summed via +~ into the output chain
- Toggle master ON -- hear both voices together
  - "Two sources, mixed into one output. That's the same architecture as the noise sculpture -- just fewer voices."

**[CHECKPOINT]** "We've now covered oscillators, noise, envelopes, modulation, and mixing. Any questions before we put it all together?"
  - Pause for 15-20 seconds. Address any raised hands.

> **FALLBACK: FIRST CUT** -- compress to 2 min if running long. Show phasor~ briefly, mention +~ mixing, skip detailed multi-voice explanation. Say: "Patch 06 adds modulation and mixing -- phasor~ drives tremolo, +~ combines two voices. The annotations explain everything. Open it at home."

---

## [36:00-39:00] Patch 07: Noise Sculpture Rebuild (3 min)

**PATCH:** `07-noise-sculpture-rebuild.maxpat` -- show raw patching view (no Presentation Mode)

- "Open `07-noise-sculpture-rebuild.maxpat`. Look familiar?"
- "We just built the entire noise sculpture from scratch. This patch uses every concept from patches 01 through 06."
  - noise~ (Patch 04), cycle~ (Patch 01-02), phasor~ LFO (Patch 06), line~ envelopes (Patch 05), *~ amplitude (Patch 04), +~ mixing (Patch 06)
- Point out the three voices: rhythmic noise, tonal AM/beating, evolving drone
- A/B compare: toggle this patch ON, then switch to `noise-sculpture-demo.maxpat` in Presentation Mode
  - "Same sound. Same architecture. But the demo hides the patching behind Presentation Mode. Presentation Mode is the performer's view -- clean sliders, no visible cords."
- "You now understand everything inside the demo. Every object, every connection."

> **FALLBACK: FIRST CUT** -- skip entirely if running long (save 3 min). Jump from Patch 06 to collective finale. Say: "Patch 07 in your download reconstructs the full demo -- study it at home. It uses every concept from today. For now, let's hear them all together."

---

## [39:00-45:00] Collective Finale and Wrap-Up (6 min)

**PATCH:** `noise-sculpture-demo.maxpat` -- all students open on their machines

- Script the setup step by step:
  1. "Everyone open `noise-sculpture-demo.maxpat`."
  2. "Click Presentation Mode -- the button at the bottom of the patch window."
  3. "Click ezdac~ to start audio processing."
  4. "Turn your laptop volume to about 50%."
  5. "Move a slider -- do you hear something? Raise your hand when you hear sound."
- Quick visual check: wait until most hands are up
  - Troubleshoot briefly if needed: "Check that ezdac~ is toggled on. Check your volume."
- Instructor starts first: toggle ON, move sliders
- On count: "3, 2, 1 -- everyone toggle your master ON"
- Let it play for 60-90 seconds. Students experiment with sliders.
  - "You're hearing 16-18 noise sculptures playing at once. Every one built from the same objects we learned today: cycle~, noise~, *~, line~, phasor~, +~."
- After the collective moment, ask students to toggle OFF
- Wrap-up:
  - "Today you learned that MSP objects -- the ones with tildes -- process continuous audio signals at 44,100 samples per second."
  - "You saw how sig~ bridges the control world you already know into the signal world."
  - "The patches are yours to study. The annotations explain every object and every connection."
  - "Next week we go deeper -- filters, more synthesis techniques, building your own instruments."

> **FALLBACK:** Never skip the collective finale. Protect at least 4 minutes for it. If time is very tight, reduce the play time to 30 seconds and compress the wrap-up to key takeaways only.

---

## Fallback Cascade Summary

If running long, cut in this order:

1. **First cut (save 3 min):** Skip Patch 07 rebuild -- jump from Patch 06 to collective finale
2. **First cut (save 2 min more):** Compress Patch 06 to 2 min -- quick phasor~/+~ mention, skip multi-voice detail
3. **Second cut (save 3 min):** Skip three-level comparison entirely -- gen~ teaser is lowest priority
4. **Nuclear option (save 11 min):** Skip Patches 05-07 entirely -- end with Patch 04 (noise and amplitude), jump to collective demo

**Never cut:** Opening demo, QR download, Patches 01-03 (foundational concepts), collective finale.
