# Phase 1: Noise Sculpture Demo - Research

**Researched:** 2026-02-13
**Domain:** Max/MSP synthesis patch design with constrained object set, .maxpat JSON format, audio safety, Presentation Mode UI
**Confidence:** HIGH

## Summary

This phase requires building a single .maxpat file that produces a musically intriguing, evolving noise sculpture using only the Week 7 syllabus objects: noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~/ezdac~, and scope~. The core challenge is creating rich, composed-sounding audio from an extremely constrained object palette -- no filters, no delay lines, no wavetable oscillators beyond cosine, no phasor~. The available synthesis techniques are: amplitude modulation, ring modulation, tremolo, additive synthesis (summing sine waves), beating (detuned oscillators), and noise shaping via multiplication. The patch must also include a clean Presentation Mode UI with performance controls, multiple scope~ displays, and full audio safety.

The .maxpat format is JSON with a well-understood (though unofficially documented) structure: a root `patcher` object containing `boxes` (objects) and `lines` (patch cords). Each box has `maxclass`, `id`, `patching_rect`, and optional `presentation`/`presentation_rect` attributes for Presentation Mode. The format is programmatically writable -- meaning the patch can be authored as JSON directly without opening Max, though it must be validated by opening in Max afterward.

The recommended synthesis architecture is a 3-4 voice layered approach: a rhythmic noise voice (noise~ gated by low-frequency cycle~ via *~), a tonal AM/beating voice (detuned cycle~ objects multiplied and summed), and an evolving drone voice (cycle~ with line~-automated frequency and amplitude). All voices mix via +~, pass through live.gain~ for master volume, through clip~ -0.9 0.9 as a safety limiter, then to dac~. line~ objects provide continuous automation of frequencies and amplitudes using multi-segment messages (up to 128 value-time pairs per message), creating evolving temporal shape. Control-rate objects (metro, toggle, slider, message) drive the automation and provide instructor performance controls.

**Primary recommendation:** Build a 3-voice hybrid AM/additive/noise patch with line~-driven automation and 3-4 slider controls for live parameter shaping. Use clip~ as a transparent safety limiter even though it is outside the Week 7 object list -- it is an infrastructure safety object, not a pedagogical teaching object.

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

#### Sonic character
- Polished, finished-sounding piece -- students hear what MSP can produce at its best
- Moderate density: 3-4 voices/layers to sound rich but remain traceable in the patch
- Specific synthesis approach is Claude's discretion, but must sound intentional and composed, not random

#### Temporal evolution
- Hybrid automation: patch evolves on its own via line~ automation, but instructor can intervene and override parameters manually
- Open-ended duration: runs as long as needed, no fixed endpoint -- can be 30 seconds or 5 minutes depending on lecture pacing
- Temporal shape (looping vs trajectory) is Claude's discretion
- Audible changes should include pitch movement, timbral shifts, and rhythmic elements
- Rhythmic effects achieved through low-frequency cycle~ as amplitude modulator (phasor~ is not in the Week 7 object list)

#### Performance controls
- Single toggle for on/off (start/stop the sound)
- 3-4 tweakable sliders for shaping the sound live (e.g., brightness, speed, density, mix)
- Instrument-like UI feel in Presentation Mode -- minimal labels, big sliders, emphasis on performing
- live.gain~ for master volume control

#### Scope visualization
- Main large scope~ showing the combined output signal
- Smaller scope~ displays showing constituent parts (individual voices/layers) so students see how signals combine
- All scopes visible in Presentation Mode

#### Pedagogical hooks
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

### Deferred Ideas (OUT OF SCOPE)
- Side-by-side control-flow comparison may be better placed in Phase 2 (build-up series) or Phase 3 (lecture outline) where individual concepts are introduced -- capture the intent here, let planner decide placement
- phasor~ usage -- if added to syllabus objects in future, could enhance rhythmic capabilities

</user_constraints>

## Standard Stack

### Core

| Technology | Version | Purpose | Why Standard |
|------------|---------|---------|--------------|
| Max | 9.1.2 | Authoring environment for .maxpat patch | Current stable release. Core MSP objects used (noise~, cycle~, *~, +~, line~, sig~, live.gain~, dac~, scope~) have existed since Max 5 and are cross-version safe. **Confidence: HIGH** |
| .maxpat JSON format | fileversion 1 | Patch file format | JSON-based, human-readable, programmatically writable. No official spec but well reverse-engineered by py2max and community. **Confidence: MEDIUM** for exact field names, HIGH for core structure. |

### Supporting

| Tool | Purpose | When to Use |
|------|---------|-------------|
| clip~ | Audio safety limiter (clamps signal to -0.9 to 0.9 range) | Always placed before dac~ as transparent safety net. NOT a Week 7 teaching object -- it is infrastructure, like a circuit breaker. |
| loadbang | Initialize patch state on open (gain level, toggle state) | Used to set safe defaults. NOT for auto-starting DSP (that is a known anti-pattern). |
| metro | Retrigger line~ automation for looping temporal patterns | Control-rate object driving signal-rate automation. Students know metro from Weeks 1-6. |
| message (message box) | Store multi-segment line~ target-time pair lists | Holds automation data like "0, 1. 5000, 0.3 3000, 0.8 7000" |
| toggle | On/off control for the patch | Single master toggle for starting/stopping the sound |
| slider / live.slider | Parameter control sliders for live shaping | 3-4 sliders mapped to synthesis parameters |
| comment | In-patch annotations | Labels for patching view (not visible in Presentation Mode unless added to presentation) |
| panel | Background color regions in Presentation Mode | Visual grouping of UI elements |

### Alternatives Considered

| Instead of | Could Use | Tradeoff |
|------------|-----------|----------|
| clip~ -0.9 0.9 (hard limiter) | tanh~ (soft clipper) | tanh~ produces warmer distortion character but is not in the Week 7 object list either. clip~ is simpler, more transparent, and more predictable as a safety device. **Use clip~.** |
| clip~ -0.9 0.9 | omx.peaklim~ (lookahead peak limiter) | omx.peaklim~ is a proper dynamics processor with attack/release. Overkill for a safety limiter in a teaching patch. More opaque to students. **Use clip~.** |
| metro for looping automation | line~ bang output + delay | line~ sends a bang when it finishes all ramps. Could chain back to retrigger. More elegant but harder to follow in the patch. Metro is familiar to students. **Use metro.** |
| slider | live.dial | Dials take less horizontal space but are less "instrument-like" for a performance UI. The user decision specifies "big sliders." **Use slider/live.slider.** |

## Architecture Patterns

### Recommended Patch Structure

```
[Patching View - Signal Flow, Top to Bottom]

=== VOICE 1: Rhythmic Noise ===
noise~ ─── *~ ←── cycle~ 2.3 (LFO tremolo)
              │
              *~ ←── line~ (amplitude envelope)
              │
              ↓ scope~ (voice 1 display)

=== VOICE 2: Tonal AM / Beating ===
cycle~ 185 ─── *~ ←── cycle~ 187 (ring mod / beating)
                 │
                 *~ ←── line~ (amplitude)
                 │
                 ↓ scope~ (voice 2 display)

=== VOICE 3: Evolving Drone ===
cycle~ ←── line~ (frequency automation: slow pitch drift)
   │
   *~ ←── line~ (amplitude automation)
   │
   +~ ←── cycle~ (detuned partial, +3 Hz)
        │
        *~ ←── line~ (partial amplitude)
        │
        ↓ scope~ (voice 3 display)

=== OUTPUT STAGE ===
voice1 ─── +~ ←── voice2
              │
              +~ ←── voice3
              │
              ↓ scope~ (MAIN output display, large)
              │
         live.gain~
              │
         clip~ -0.9 0.9
              │
           dac~ / ezdac~

=== AUTOMATION ENGINE (Control Rate) ===
toggle ──── metro 8000 ──── triggers line~ messages
                              (multi-segment ramps for
                               frequency, amplitude,
                               LFO rate changes)

=== PERFORMANCE CONTROLS ===
slider 1 ──► LFO rate (mapped to cycle~ 2.3 frequency)
slider 2 ──► Tone frequency (mapped to cycle~ 185/187 base)
slider 3 ──► Noise/Tone mix (mapped to voice amplitude ratios)
slider 4 ──► Drone pitch (mapped to voice 3 cycle~ frequency)
```

### Pattern 1: Amplitude Modulation via Multiplication

**What:** Multiply two signals with *~ to create amplitude modulation. When one signal is sub-audio (<20 Hz), this produces tremolo. When both are audio-rate, this produces ring modulation with sidebands at sum and difference frequencies.

**When to use:** Core technique for all three voices. This is the primary timbral tool available within the object constraint.

**Technical details (from Cycling '74 MSP Synthesis Tutorial 2):**
- cycle~ outputs -1 to 1. Multiplying two cycle~ objects: output peak amplitude = product of input amplitudes.
- At sub-audio modulator rates (0.1-4 Hz): perceived tremolo rate = 2x modulator frequency (amplitude hits zero twice per cycle).
- At audio-rate modulator: sidebands appear at carrier +/- modulator frequencies. With carrier 1000 Hz and modulator 50 Hz, sidebands at 950 and 1050 Hz.
- For AM (not ring mod): add DC offset to modulator so carrier frequency remains present. Formula: modulator = (1 - depth) + depth * cycle~. Achievable with *~ and +~.

**Confidence: HIGH** -- verified via Cycling '74 MSP Synthesis Tutorial 2 (Tremolo and Ring Modulation) and Tutorial 3 (Using Amplitude Modulation).

### Pattern 2: Multi-Segment line~ Automation

**What:** Send line~ a list of up to 128 value-time pairs to create complex, evolving parameter ramps. Each pair specifies a target value and duration in milliseconds to reach it.

**When to use:** For all temporal evolution. This is the primary automation tool within the object constraint.

**Technical details (from Cycling '74 line~ reference):**
- Message format: `target1 time1, target2 time2, target3 time3, ...`
- Example: `0, 1. 5000, 0.3 3000, 0.8 7000` = start at 0, ramp to 1.0 over 5 seconds, then to 0.3 over 3 seconds, then to 0.8 over 7 seconds.
- A new message to line~ clears all pending ramps and starts the new sequence.
- line~ outputs a bang when all ramps complete -- this can retrigger via metro or direct feedback.
- Smooth, click-free: line~ interpolates at audio rate (sample-by-sample), unlike control-rate line which steps.
- For looping: use metro to periodically retrigger the line~ message. Metro interval = total duration of the line~ ramp sequence.

**Confidence: HIGH** -- verified via Cycling '74 line~ reference (Max 5/8 documentation).

### Pattern 3: Additive Synthesis via Summing

**What:** Sum multiple cycle~ outputs with +~ to create complex tones from simple sine waves. Slight detuning creates beating effects.

**When to use:** Voice 3 (drone) and potentially voice 2 (beating).

**Technical details (from Cycling '74 MSP Synthesis Tutorial 1):**
- Multiple cycle~ at harmonic ratios (1x, 2x, 3x fundamental) create harmonic timbres.
- Multiple cycle~ at near-unison frequencies (e.g., 185 Hz and 187 Hz) create slow beating at 2 Hz difference frequency.
- Each partial needs independent amplitude control via *~ for timbral animation.
- Combined amplitude must stay within -1 to 1 range: scale down with *~ before output. Rule of thumb: if N voices at full amplitude, multiply combined signal by 1/N.

**Confidence: HIGH** -- verified via Cycling '74 MSP Synthesis Tutorial 1 (Additive Synthesis).

### Pattern 4: Noise Shaping Without Filters

**What:** Without filter objects (lores~, svf~), noise~ can only be "shaped" by multiplication with other signals. Multiplying noise~ by a low-frequency cycle~ creates rhythmically gated noise bursts. Multiplying noise~ by another audio-rate cycle~ creates a crude bandpass-like effect (ring modulation concentrates energy near the carrier frequency's sidebands).

**When to use:** Voice 1 (rhythmic noise). This is the only way to make noise~ musically interesting within the object constraint.

**Technical details:**
- noise~ * cycle~ at 2 Hz = noise that swells and fades twice per second (rhythmic whooshing).
- noise~ * cycle~ at 200 Hz = ring-modulated noise with pitched character centered around 200 Hz.
- Combining both: noise~ * (cycle~ 2 Hz) * (cycle~ 200 Hz) = rhythmic pitched noise bursts.
- line~ can automate the cycle~ frequencies for evolving character.
- Critical safety note: noise~ alone is full-bandwidth white noise at full amplitude. ALWAYS multiply by an amplitude-controlling signal before output.

**Confidence: MEDIUM** -- synthesis technique is well-established (AM/ring mod with noise), but the specific sonic quality of "ring-modulated noise without filters" is harder to predict without hearing it. The planner should allocate time for sonic experimentation and tuning.

### Anti-Patterns to Avoid

- **Connecting noise~ directly to dac~**: Full-amplitude white noise blast. ALWAYS route through *~ (amplitude control) and live.gain~ before dac~.
- **Using loadbang to auto-start DSP**: Known race condition in Max. Use a manual ezdac~ toggle or a visible "START" toggle. The instructor controls when audio begins.
- **Summing voices without amplitude scaling**: 3-4 voices at full amplitude will exceed the -1 to 1 range, causing harsh clipping. Scale the mix down with *~ (e.g., *~ 0.3 for three voices).
- **Setting line~ ramps too short**: Ramps under ~10ms cause audible clicks due to sudden amplitude changes. Keep minimum ramp times at 20-50ms for smooth transitions.
- **Forgetting to set default values on patch open**: Use loadbang to set sliders, toggles, and line~ to safe starting values. The patch should produce silence when opened until the instructor deliberately starts it.

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Audio safety limiting | Manual amplitude management with carefully tuned *~ values | clip~ -0.9 0.9 before dac~ | Amplitude can spike unexpectedly during ring modulation or when automation parameters interact. clip~ is a hard safety net that catches everything. Manual scaling is necessary too but is not sufficient alone. |
| Smooth parameter changes | Direct number-to-signal conversion via sig~ | line~ with ramp times | sig~ produces instant jumps that cause clicks. line~ interpolates at audio rate. Always use line~ for any parameter that changes while audio is playing. |
| Looping automation | Complex feedback patching with line~ bang output | metro + message + line~ | Metro is a familiar, reliable clock. It retriggers the line~ message at regular intervals. Simple to understand in the "peek behind the curtain" moment. |
| Master volume | Manual *~ with number box | live.gain~ | live.gain~ provides visual metering, dB-calibrated control, and smooth interpolation (10ms default). It is the standard Max volume control. |

**Key insight:** The object constraint limits creative options but also simplifies the architecture. There are no "clever alternatives" to discover -- the patch will be built from multiplication, addition, and line ramps. The art is in parameter tuning, not object selection.

## Common Pitfalls

### Pitfall 1: Amplitude Blowout from Voice Summing

**What goes wrong:** Three voices at full amplitude sum to peak amplitude of 3.0 (or higher with ring modulation), which clips harshly at the dac~ and potentially damages speakers or ears.

**Why it happens:** Each voice can independently reach amplitude 1.0. Ring modulation between two full-amplitude signals also reaches 1.0 peak. But summing three such voices via +~ adds their peaks.

**How to avoid:**
- Scale each voice down before summing: multiply each by *~ 0.25-0.33.
- Add clip~ -0.9 0.9 as a hard safety limiter after live.gain~ and before dac~.
- Use live.gain~ at a conservative default (e.g., -12 dB) set via loadbang.
- Monitor visually: the main scope~ and live.gain~'s built-in meter show amplitude.

**Warning signs:** scope~ display hitting the top/bottom rails consistently. live.gain~ meter showing red/overload.

### Pitfall 2: Clicks from Abrupt Parameter Changes

**What goes wrong:** Changing a slider value or retriggering a line~ message causes an audible click or pop in the output.

**Why it happens:** Discontinuities in audio signals -- when a value jumps instantly from one level to another without interpolation, it creates a sharp transient that sounds like a click.

**How to avoid:**
- Route ALL slider outputs through line~ with a minimum ramp time of 20-50ms before they reach signal objects. Pattern: slider -> pack $1 50 -> line~ -> *~ (or cycle~ frequency inlet).
- When retriggering line~ multi-segment messages, ensure the starting value of the new message matches (or is close to) the current output of line~. Alternatively, start each message with a short ramp from 0.
- Use live.gain~'s built-in interpolation (default 10ms ramp) rather than a raw *~ for master volume.

**Warning signs:** Audible clicks when moving sliders. Clicks at the metro retrigger point of looping automation.

### Pitfall 3: Inaudible or Uninteresting Output

**What goes wrong:** The patch produces sound, but it is either inaudibly quiet, boringly static, or unpleasantly harsh -- not the "polished, composed" result the user expects.

**Why it happens:** Without filters, the timbral palette is limited. noise~ is harsh by nature. cycle~ is a pure sine wave with no harmonic interest on its own. The "magic" comes entirely from modulation relationships, detuning amounts, and automation curves -- all of which require careful tuning.

**How to avoid:**
- Allocate significant time for sonic experimentation during implementation. The patch design is straightforward; the sound design is the hard part.
- Start with the drone voice (cycle~ + detuned cycle~) to establish a tonal anchor. Then layer noise on top for texture. Then add the AM voice for movement.
- Use slow automation (line~ ramps of 5-15 seconds) for smooth, meditative evolution rather than rapid changes that sound chaotic.
- Keep noise amplitude significantly lower than tonal voices -- noise is perceptually louder and more fatiguing.
- Test at low volume on good speakers or headphones. Sound quality is masked by laptop speakers.

**Warning signs:** The instructor's reaction when they first hear it. If it does not sound "intentional and composed" within the first 10 seconds, the parameter tuning needs work.

### Pitfall 4: Presentation Mode Objects Missing or Misaligned

**What goes wrong:** Opening the patch in Presentation Mode shows a blank window, or objects are overlapping, or scopes are invisible.

**Why it happens:** Objects must be explicitly marked with `presentation: 1` in the JSON (or "Add to Presentation" in Max's UI). Each object needs both a `patching_rect` (for patching view) and a `presentation_rect` (for presentation view). If `presentation_rect` is missing or has zero dimensions, the object will not appear.

**How to avoid:**
- For every UI object intended for Presentation Mode (toggle, sliders, scopes, live.gain~, panel backgrounds), include both `patching_rect` and `presentation_rect` in the JSON.
- Set the patcher-level attribute `openinpresentation: 1` so the patch opens in Presentation Mode by default.
- Validate by opening the .maxpat in Max after every significant edit -- Presentation Mode layout issues are invisible in the JSON.

**Warning signs:** Objects visible in patching view but missing in Presentation Mode. Objects bunched in the top-left corner (default 0,0 position when presentation_rect is missing).

### Pitfall 5: Automation Does Not Restart Cleanly

**What goes wrong:** After stopping and restarting the patch (toggle off/on), the sound is different from the initial state -- voices are at wrong amplitudes, frequencies are stuck at end-of-ramp values.

**Why it happens:** line~ holds its last output value when metro stops. cycle~ continues at whatever frequency it was last set to. Turning the toggle off stops the metro but does not reset the signal objects.

**How to avoid:**
- When toggle goes to 0 (off): send all line~ objects to 0 amplitude with a short ramp (e.g., `0, 0 100` = ramp to 0 over 100ms). This creates a smooth fade-out.
- When toggle goes to 1 (on): send all line~ objects their initial starting values, then start the metro. This resets the automation to its beginning state.
- Use a single toggle -> select 0 1 -> route to separate "stop" and "start" message chains.

**Warning signs:** The patch sounds different the second time it is started. Volume or pitch drifts after stop/start cycles.

## Code Examples

### Example 1: Basic AM Voice (Tremolo Noise)

```
[Signal flow in Max patching]

noise~ ──────────── *~ ──── *~ 0.3 ──── [to mix bus]
                     ^
                     |
cycle~ 2.3 ── *~ 0.5 ── +~ 0.5    [LFO: range 0.0 to 1.0]
```

**Explanation:** noise~ is multiplied by a unipolar LFO. The cycle~ outputs -1 to 1; multiplying by 0.5 and adding 0.5 shifts it to 0 to 1 range (unipolar). This creates smooth tremolo on the noise, not ring modulation. The final *~ 0.3 scales the voice down for safe mixing.

**Source:** Derived from Cycling '74 MSP Synthesis Tutorial 2 (Tremolo and Ring Modulation) and Tutorial 3 (AM with DC offset).

### Example 2: Multi-Segment line~ Automation

```
[Control flow in Max patching]

toggle ── metro 15000 ── message: "0, 1. 5000, 0.3 3000, 0.8 7000"
                                    |
                                    v
                                  line~ ──── *~ ──── [voice amplitude]
```

**Explanation:** Every 15 seconds, metro bangs the message box, which sends the multi-segment list to line~. line~ ramps from 0 to 1.0 over 5 seconds, then to 0.3 over 3 seconds, then to 0.8 over 7 seconds (total 15 seconds = metro interval). The cycle repeats as long as the toggle is on. This creates a looping amplitude contour.

**Source:** Cycling '74 line~ reference -- supports up to 128 value-time pairs per message.

### Example 3: Beating / Detuned Drone

```
[Signal flow in Max patching]

cycle~ 185 ──── +~ ──── *~ 0.3 ──── [to mix bus]
                 ^
                 |
cycle~ 187.5 ── *~ 0.8    [slightly detuned partial, lower amplitude]
```

**Explanation:** Two cycle~ at 185 Hz and 187.5 Hz (2.5 Hz difference) create a slow beating effect. The detuned partial is slightly quieter (*~ 0.8) to create an asymmetric beat. The combined signal is scaled down by *~ 0.3. The beating rate of 2.5 Hz creates a gentle undulation in the sound.

**Source:** Cycling '74 MSP Synthesis Tutorial 1 (Additive Synthesis) -- detuning creates beating from interference patterns.

### Example 4: Slider-to-Signal with Smooth Ramping

```
[Control-to-signal bridge]

slider (0-127) ── / 127. ── pack $1 50 ── line~ ──── [parameter target]
                   [scale to 0.-1.]  [50ms ramp]
```

**Explanation:** The slider outputs integers 0-127. Dividing by 127 scales to 0.0-1.0. The `pack $1 50` creates a value-time pair with 50ms ramp time. line~ smoothly interpolates to the target, avoiding clicks. This pattern is used for all slider-to-signal mappings.

**Note:** The `/ 127.` (division) is a standard Max math object, not an MSP object. It operates at control rate. The line~ converts the control value to a smooth audio-rate signal.

### Example 5: .maxpat JSON Structure for a Box with Presentation Mode

```json
{
  "box": {
    "maxclass": "toggle",
    "id": "obj-1",
    "numinlets": 1,
    "numoutlets": 1,
    "outlettype": ["int"],
    "patching_rect": [50.0, 50.0, 24.0, 24.0],
    "presentation": 1,
    "presentation_rect": [20.0, 20.0, 60.0, 60.0],
    "parameter_enable": 0
  }
}
```

**Key attributes:**
- `patching_rect`: [x, y, width, height] in patching view
- `presentation`: 1 to include in Presentation Mode, 0 or absent to exclude
- `presentation_rect`: [x, y, width, height] in Presentation Mode (independent of patching position)

**For the patcher level:**
```json
{
  "patcher": {
    "fileversion": 1,
    "appversion": {"major": 9, "minor": 1, "revision": 2, "architecture": "x64", "modernui": 1},
    "openinpresentation": 1,
    "rect": [100.0, 100.0, 800.0, 600.0],
    "default_fontsize": 14.0,
    "boxes": [...],
    "lines": [...]
  }
}
```

**Source:** Reverse-engineered from community .maxpat files and py2max library (github.com/shakfu/py2max). **Confidence: MEDIUM** -- no official Cycling '74 spec; validate by opening in Max 9.

### Example 6: Patchline JSON Structure

```json
{
  "patchline": {
    "source": ["obj-1", 0],
    "destination": ["obj-2", 0],
    "order": 0
  }
}
```

**Key attributes:**
- `source`: [object_id, outlet_index] -- outlet 0 is leftmost
- `destination`: [object_id, inlet_index] -- inlet 0 is leftmost
- `order`: execution order when multiple cords connect to the same inlet (0 = first)

**Source:** py2max Patchline class and community .maxpat analysis. **Confidence: MEDIUM**.

### Example 7: scope~ Configuration for Pedagogical Display

```json
{
  "box": {
    "maxclass": "scope~",
    "id": "obj-scope-main",
    "numinlets": 2,
    "numoutlets": 0,
    "patching_rect": [400.0, 500.0, 200.0, 100.0],
    "presentation": 1,
    "presentation_rect": [250.0, 350.0, 400.0, 150.0],
    "calccount": 4,
    "bufsize": 256,
    "range": [-1.0, 1.0],
    "bgcolor": [0.0, 0.0, 0.0, 1.0],
    "fgcolor": [0.2, 0.8, 0.4, 1.0]
  }
}
```

**Key scope~ attributes:**
- `calccount`: Samples per display pixel. Lower = more detail. Start at 4 for responsive display.
- `bufsize`: Display buffer size, up to 256. Set to object width for best resolution.
- `range`: Min/max amplitude displayed. [-1, 1] for full range.
- Smaller per-voice scopes: use smaller presentation_rect, same attributes.

**Source:** Cycling '74 scope~ reference (Max 5/8 documentation). **Confidence: HIGH** for attributes, MEDIUM for exact JSON field names.

### Example 8: live.gain~ Configuration

```json
{
  "box": {
    "maxclass": "live.gain~",
    "id": "obj-gain",
    "numinlets": 2,
    "numoutlets": 5,
    "outlettype": ["signal", "signal", "", "float", "list"],
    "patching_rect": [300.0, 600.0, 48.0, 136.0],
    "presentation": 1,
    "presentation_rect": [650.0, 50.0, 48.0, 300.0],
    "parameter_enable": 1,
    "saved_attribute_attributes": {
      "valueof": {
        "parameter_longname": "Master Volume",
        "parameter_shortname": "Vol",
        "parameter_type": 0,
        "parameter_initial_enable": 1,
        "parameter_initial": [-12.0]
      }
    }
  }
}
```

**Key attributes:**
- `numinlets: 2` (left/right audio), `numoutlets: 5` (2 audio, dB value, normalized, peak list)
- `parameter_enable: 1` required for live.gain~ to function
- `parameter_initial_enable: 1` with `parameter_initial: [-12.0]` sets safe default of -12 dB on patch open
- Orientation is vertical by default (orientation: 0)
- display_range defaults to -70 to +6 dB

**Source:** Cycling '74 live.gain~ reference (Max 7/8 documentation). **Confidence: HIGH** for behavior, MEDIUM for exact JSON attribute nesting.

## Synthesis Design Recommendations (Claude's Discretion Areas)

### Recommended: Warm/Dark Sonic Character

**Rationale:** Within the object constraint, "warm" and "dark" are achieved by:
- Using lower fundamental frequencies (100-250 Hz range) for tonal voices
- Keeping noise voice at lower amplitude than tonal voices (noise is bright/harsh by nature)
- Using slow LFO rates (0.5-3 Hz) for gentle modulation rather than aggressive wobble
- Avoiding audio-rate ring modulation of noise (which produces metallic/harsh timbres)

A dark, warm character better demonstrates "sonic power" than a bright, harsh one. Students are more likely to think "I want to learn how to make this" when hearing something that sounds like ambient music rather than harsh noise.

**Alternative considered:** Bright/aggressive -- would demonstrate the raw power of signal processing but risks being unpleasant and does not match the "polished, composed" requirement.

### Recommended: Hybrid AM + Additive + Noise Approach

**Rationale:** This uses ALL the available timbral tools:
- **noise~** via AM (tremolo) for texture and rhythm
- **cycle~** via addition for tonal foundation and beating
- **cycle~** via multiplication for AM sidebands and spectral interest
- **line~** for temporal evolution of all parameters

A pure additive approach (only cycle~ summing) would sound too clean and "electronic." A pure noise approach would sound too harsh. The hybrid balances both worlds.

### Recommended: Looping Temporal Shape with Slow Evolution

**Rationale:** A looping structure using metro + line~ provides:
- Open-ended duration (loops indefinitely until instructor stops it)
- Predictable behavior (same basic arc each cycle, instructor can anticipate)
- Variation through slider interaction (instructor changes parameters between or during cycles)

The automation loop should be long -- 15-20 seconds per cycle -- to avoid sounding repetitive. Each cycle subtly shifts due to:
- Phase relationships between voices drifting (different LFO rates)
- Instructor slider adjustments
- Beating effects from detuned oscillators creating natural micro-variation

**Alternative considered:** One-shot trajectory (line~ ramps that do not loop, creating a single arc). This would require the instructor to restart the patch or design a very long ramp. The looping approach is more practical for a demo where the instructor talks over it and wants it to evolve without attention.

### Recommended Slider Mappings

| Slider | Parameter | Range | Musical Effect |
|--------|-----------|-------|----------------|
| Slider 1 | Noise LFO rate | 0.1 - 8 Hz | Slow = gentle breathing; Fast = rapid tremolo |
| Slider 2 | Tone pitch | 80 - 400 Hz | Shifts the tonal center of the sculpture |
| Slider 3 | Noise/Tone balance | 0 - 1 | 0 = pure tone; 1 = heavy noise texture |
| Slider 4 | Drone detune amount | 0 - 10 Hz | 0 = pure unison; 10 = wide beating/chorus |

These four sliders give the instructor dramatically different sounds from the same patch: a clean drone, a noisy rhythm machine, a beating tone cluster, or anything in between. This supports the "live manipulation" pedagogical hook -- moving one slider during the demo creates an audible, visible (on scope~) change.

### Recommended Presentation Mode Layout

```
┌────────────────────────────────────────────────────────┐
│                                                        │
│  [TOGGLE]    [====SLIDER 1====]  [====SLIDER 2====]   │
│  ON/OFF      Noise Speed         Tone Pitch            │
│                                                        │
│  [====SLIDER 3====]  [====SLIDER 4====]               │
│  Noise/Tone Mix      Drone Detune                      │
│                                                        │
│  ┌──────────────────────────────────────────────┐      │
│  │          MAIN OUTPUT SCOPE (large)           │      │
│  │          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~        │      │
│  └──────────────────────────────────────────────┘      │
│                                                        │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────┐  │
│  │ Noise    │  │ Tone     │  │ Drone    │  │      │  │
│  │ Voice    │  │ Voice    │  │ Voice    │  │GAIN  │  │
│  │ ~~~~~~~~ │  │ ~~~~~~~~ │  │ ~~~~~~~~ │  │ ▓▓▓  │  │
│  └──────────┘  └──────────┘  └──────────┘  │ ▓▓▓  │  │
│                                             │ ▓▓▓  │  │
│                                             └──────┘  │
└────────────────────────────────────────────────────────┘
```

- Top area: performance controls (toggle + 4 sliders, big and easy to grab)
- Middle: large main scope~ showing the combined output waveform
- Bottom left: three smaller scope~ displays showing individual voices
- Bottom right: live.gain~ master volume with built-in meter

Minimal labels. Emphasis on large, touchable controls and visible waveforms. The instructor performs the patch like an instrument.

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| gain~ (legacy slider) | live.gain~ | Max 5+ (Live integration) | live.gain~ has built-in metering, dB scaling, parameter storage, and smooth interpolation. Always use live.gain~ over raw gain~. |
| Separate patching and UI views | Presentation Mode | Max 5+ | Allows instrument-like UI overlaid on the patch. Essential for this demo. |
| Manual amplitude management | clip~ / omx.peaklim~ safety chain | Community best practice | Always include a hard limiter before dac~. This is now standard practice, not optional. |
| Fixed envelopes | Multi-segment line~ with up to 128 pairs | Expanded from 64 to 128 in recent Max versions | Enables complex evolving automation without external sequencing. |

## Open Questions

1. **Exact JSON field names for live.gain~ parameter storage**
   - What we know: live.gain~ uses `saved_attribute_attributes` with a `valueof` sub-object to store parameters like `parameter_initial`.
   - What's unclear: The exact nesting and field names may vary between Max 8 and Max 9. The `parameter_enable` flag behavior may differ.
   - Recommendation: Write the JSON based on py2max patterns, then open in Max 9 and save to see what Max produces. Use Max's output as the canonical format. Round-trip validation is mandatory.

2. **Optimal number of scope~ objects for performance**
   - What we know: Each scope~ consumes CPU for display updates. 4 scopes (1 main + 3 voice) is the plan.
   - What's unclear: Whether 4 scopes cause noticeable performance impact, especially on older classroom machines.
   - Recommendation: Build with 4 scopes. If performance is an issue, reduce `bufsize` or increase `calccount` on the smaller scopes. Worst case, remove one voice scope.

3. **Whether clip~ needs to be justified to the user as "outside Week 7 objects"**
   - What we know: clip~ is not in the Week 7 syllabus object list. However, it serves as transparent safety infrastructure, not as a teaching object.
   - What's unclear: Whether the user considers clip~ acceptable as a non-visible safety mechanism.
   - Recommendation: Include clip~ in the patch as a safety limiter. It does not appear in Presentation Mode and is not part of the pedagogical narrative. It is analogous to a fuse in an electrical circuit -- students do not need to know about it for the demo to work. If the user objects, it can be replaced by careful amplitude scaling alone (riskier but possible).

4. **Whether control-rate objects (metro, toggle, slider, message, loadbang, pack, select, /, etc.) need to be from the Week 7 list**
   - What we know: The Week 7 object constraint explicitly lists signal (~) objects. Control-rate objects like metro, toggle, slider, and message are part of students' existing Max vocabulary from Weeks 1-6.
   - What's unclear: Whether the constraint "using only Week 7 syllabus objects" applies strictly to signal objects or to all objects in the patch.
   - Recommendation: Interpret the constraint as applying to signal-rate (~) objects only. Control-rate objects from Weeks 1-6 are fair game -- they are the known foundation. The "peek behind the curtain" moment is more powerful when students recognize familiar Max objects (metro, toggle, message) controlling new signal objects (cycle~, noise~, *~). This reinforces the bridge-from-Max pedagogical goal.

5. **Sonic quality without hearing it**
   - What we know: The synthesis architecture is sound (AM, additive, noise shaping). The techniques are well-documented.
   - What's unclear: Whether the actual audio output will sound "polished and composed" or "thin and academic."
   - Recommendation: The implementation plan MUST include a sonic prototyping step where the patch is built, listened to, and tuned. Do not skip this. The parameters (frequencies, LFO rates, amplitude ratios, line~ curves) are the difference between "musically intriguing" and "technically correct but uninteresting."

## Sources

### Primary (HIGH confidence)
- [Cycling '74 MSP Synthesis Tutorial 2: Tremolo and Ring Modulation](https://docs.cycling74.com/legacy/max8/tutorials/06_synthesischapter02) -- AM/ring mod implementation, tremolo frequency relationships, *~ multiplication technique
- [Cycling '74 MSP Synthesis Tutorial 3: Using Amplitude Modulation](https://docs.cycling74.com/max8/tutorials/06_synthesischapter03) -- AM with DC offset, modulation depth, sideband frequencies
- [Cycling '74 MSP Synthesis Tutorial 1: Additive Synthesis](https://docs.cycling74.com/legacy/max8/tutorials/06_synthesischapter01) -- multiple cycle~ summing, partial amplitude control, beating/detuning
- [Cycling '74 line~ Reference](https://docs.cycling74.com/max5/refpages/msp-ref/line~.html) -- multi-segment message format (up to 128 pairs), bang on completion, pause/stop/resume
- [Cycling '74 scope~ Reference](https://docs.cycling74.com/max5/refpages/msp-ref/scope~.html) -- calccount, bufsize, range, display color attributes
- [Cycling '74 live.gain~ Reference](https://docs.cycling74.com/max7/refpages/live.gain~) -- channels, orientation, display_range, parameter attributes, inlet/outlet descriptions
- [Cycling '74 Presentation Mode Documentation](https://docs.cycling74.com/max8/vignettes/presentation_mode) -- openinpresentation, Add to Presentation, independent positioning
- [Cycling '74 MSP Basics Tutorial 1: Test Tone](https://docs.cycling74.com/max7/tutorials/05_mspbasicchapter01) -- amplitude safety, gain~ best practice

### Secondary (MEDIUM confidence)
- [Max Cookbook: Amplitude Modulation and Frequency Modulation](https://music.arts.uci.edu/dobrian/maxcookbook/amplitude-modulation-and-frequency-modulation) -- practical AM/FM implementation patterns, parameter scaling
- [Max Cookbook: Using Presentation Mode](https://music.arts.uci.edu/dobrian/maxcookbook/using-presentation-mode) -- UI design patterns for Presentation Mode
- [py2max GitHub Repository](https://github.com/shakfu/py2max) -- .maxpat JSON format structure (Patcher, Box, Patchline classes), reverse-engineered format
- [Cycling '74 Forum: Specification for .maxpat JSON format](https://cycling74.com/forums/specification-for-maxpat-json-format) -- confirmation that no official spec exists; community reverse-engineering approaches
- [Cycling '74 Forum: Tips on How to Avoid Audio Clipping](https://cycling74.com/forums/tips-on-how-to-avoid-audio-clipping) -- line~ interpolation for click-free gain changes
- [Cycling '74 Forum: Interesting Sounds from MSP](https://cycling74.com/forums/interesting-sounds-from-msp) -- synthesis technique recommendations for basic object sets
- [Drake Andersen: Modulating Oscillators with LFOs](https://drakeandersen.com/max-tutorial-6-modulating-oscillators-with-lfos/) -- practical LFO implementation with cycle~
- [Cycling '74 Forum: Looping an Envelope](https://cycling74.com/forums/looping-an-envelope) -- metro-triggered line~ for repeating envelopes

### Tertiary (LOW confidence)
- Exact .maxpat JSON field names for live.gain~ `saved_attribute_attributes` nesting -- based on py2max reverse-engineering and community examples. Must be validated by round-trip through Max 9.
- scope~ JSON configuration attributes (calccount, bufsize as JSON fields) -- known from reference docs but untested as JSON attribute names. May need different casing or nesting.

## Metadata

**Confidence breakdown:**
- Synthesis techniques: HIGH -- well-documented in official Cycling '74 tutorials
- .maxpat JSON format: MEDIUM -- reverse-engineered, no official spec; must validate by opening in Max 9
- Audio safety patterns: HIGH -- standard community practice, documented in official tutorials
- Presentation Mode implementation: HIGH for behavior, MEDIUM for exact JSON attributes
- Sonic quality prediction: LOW -- cannot predict whether the patch will sound "musically intriguing" without building and hearing it; plan must include sonic prototyping

**Research date:** 2026-02-13
**Valid until:** 2026-03-15 (stable domain; Max/MSP core MSP objects have not changed in years)
