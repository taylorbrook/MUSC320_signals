# Pitfalls Research

**Domain:** Max/MSP educational lecture preparation (intro-to-MSP, Week 7 guest lecture)
**Researched:** 2026-02-13
**Confidence:** HIGH (domain expertise from official Cycling '74 documentation, established Max/MSP pedagogy literature, and verified community knowledge)

## Critical Pitfalls

### Pitfall 1: Full-Amplitude Audio Blowout in the Classroom

**What goes wrong:**
A signal generator (cycle~, noise~) is connected directly to dac~ or ezdac~ with no amplitude control, producing full-scale output (-1 to 1, the loudest signal possible). In a classroom with a PA system or even laptop speakers, this causes painfully loud audio, potential speaker damage, and an immediate loss of student trust and attention. Cycling '74's own documentation warns: "you could easily damage your speakers or your ears" when connecting cycle~ directly to dac~.

**Why it happens:**
In the Max control-flow world students already know, there is no equivalent danger. Sending a MIDI note number to a makenote object never risks physical harm. Lecture preparers who build patches incrementally sometimes forget that the intermediate "just testing this connection" states will be heard live on the classroom system. Additionally, the noise sculpture demo patch may reach extreme amplitude values (community reports of signal values reaching 160,000 in overdriven patches) that exceed not just comfort but the operational parameters of filter objects and speakers.

**How to avoid:**
- Place a gain~ or live.gain~ object between EVERY signal source and EVERY dac~/ezdac~ in EVERY patch, no exceptions. This is the single most important patch architecture rule.
- Start gain~ at 0 (silence) rather than any audible level. Fade up manually during the demo.
- Add a limiter stage after gain~ and before dac~ in the noise sculpture demo patch. Use omx.peaklim~ or a simple [clip~ -0.9 0.9] as a safety net against unexpected amplitude spikes.
- Before the lecture: turn down the classroom volume knob physically, then open Max and enable DSP, then bring volume up gradually. Never open a demo patch with the PA system already at performance volume.
- Use dcblock~ in any patch that generates DC offset or subsonic content (common with noise sculpting), as DC offset can stress speaker cones.

**Warning signs:**
- Any patch where a tilde (~) object connects directly to dac~/ezdac~ without passing through gain~ first.
- The gain~ slider is at any position other than zero when the patch opens.
- The noise sculpture patch produces signal values outside the -1 to 1 range (check with number~ or meter~).
- No loadbang sets gain~ to 0 on patch open.

**Phase to address:**
Patch design (earliest phase). Every single .maxpat file must have this safety architecture before any other content is added. The noise sculpture demo patch needs extra care: add limiter, add dcblock~, add meter~ for visual monitoring.

---

### Pitfall 2: The "Signal vs. Control" Concept Gets Explained Abstractly Instead of Demonstrated

**What goes wrong:**
The instructor spends precious minutes explaining that "MSP operates at 44,100 samples per second while Max messages are event-driven" using slides or verbal description. Students nod but do not actually understand the distinction. This is the single hardest conceptual shift in the lecture, and abstract explanation is the wrong tool. When students later see tilde objects, they treat them as "just like Max objects but with a squiggle" and miss the fundamental paradigm difference.

**Why it happens:**
The distinction IS abstract. The Cycling '74 documentation itself presents it in technical terms: "Max modules work asynchronously (computation happens only when a message comes), while MSP modules work synchronously at the sampling rate speed." Instructors who understand this deeply tend to explain it the way they understand it, which is conceptually. But students transitioning from 6 weeks of Max control-flow need to SEE and HEAR the difference, not hear about it.

**How to avoid:**
- Build a side-by-side comparison patch: a metro + random driving a number box on the left (control domain students know), and a noise~ driving a number~ on the right (signal domain). Let students see the number box update at human speed while number~ updates at a blur of values. Make the comparison visceral and visual.
- Use scope~ or the built-in waveform display to show the continuous signal vs. the discrete bangs students are used to.
- Connect both domains to audio: show how a Max message (float to cycle~ frequency inlet) creates a single change, while a signal (another cycle~ to the frequency inlet via *~ and +~) creates continuous modulation. Let them HEAR frequency modulation emerge from the signal-rate connection.
- Budget at least 8-10 minutes for this concept, not 2-3. This is the conceptual foundation for everything else in the lecture.

**Warning signs:**
- The lecture outline allocates fewer than 5 minutes to the signal-vs-control distinction.
- There is no dedicated "comparison patch" that puts Max and MSP objects side by side.
- The topic is covered with slides or whiteboard only, with no live audio demonstration.
- Students are told what the difference is rather than shown and allowed to hear it.

**Phase to address:**
Content design and patch building. The comparison patch must be purpose-built for this concept; it cannot be an afterthought within another demo.

---

### Pitfall 3: Audio Driver / DSP State Failure During Live Lecture

**What goes wrong:**
The instructor opens the demo patch, clicks ezdac~ to start audio, and nothing comes out. Or worse: the first patch works, but switching to the second patch causes silence, crackling, or Max beachballing. The instructor fumbles through Audio Status settings while 16-18 students watch dead time. In a 45-minute lecture, losing even 3 minutes to technical problems destroys pacing and credibility.

**Why it happens:**
Max's audio system is sensitive to its environment. Known failure modes include:
- The classroom computer's audio device has changed since rehearsal (AirPlay device appeared, HDMI output activated by the projector, Bluetooth headphones still paired). The adstatus object's integer-based device selection means device indices shift when new devices appear.
- loadbang triggering "; dsp start" can crash or fail if the audio object list is not fully initialized when the loadbang fires (this is a known Max timing issue documented in forums).
- Signal vector size mismatch between patches causes audio glitches when switching between demo patches.
- Max version differences between the instructor's machine and the classroom computer (e.g., Max 8.6.3 changed DSP startup behavior: "existing patches open with DSP off and new patchers require a dac~ object to start DSP").

**How to avoid:**
- Arrive 15-20 minutes early. Open Max. Open EVERY demo patch in order. Toggle audio on/off. Verify sound reaches the classroom speakers. Close and re-open to simulate the lecture flow.
- Do not use loadbang to auto-start DSP. Use a manual ezdac~ toggle or a clearly labeled "START AUDIO" button in every patch. This gives the instructor explicit control and avoids the initialization race condition.
- Set audio driver settings explicitly in the first patch opened, using "; dsp driver Core Audio" (or the appropriate driver name) in a message box. Then keep DSP running globally across patches rather than toggling per-patch.
- Use consistent signal vector sizes (I/O Vector Size and Signal Vector Size) across all patches. Set these in the first patch and do not change them.
- If using a loadbang for any initialization, route it through [deferlow] to ensure proper execution order, and add a [delay 500] before any DSP-related messages.
- Bring a known-good audio interface (even a simple USB one) as a backup if the classroom system is unpredictable.

**Warning signs:**
- The lecture prep does not include a "tech check" step in the pre-lecture routine.
- Demo patches rely on loadbang to start DSP.
- Audio settings differ between patches.
- The instructor has not tested on the actual classroom computer and audio system.
- No fallback plan exists for audio failure (e.g., pre-recorded audio examples).

**Phase to address:**
Patch design (use consistent audio architecture) and rehearsal/tech-check (a dedicated pre-lecture checklist).

---

### Pitfall 4: Cramming 5 Topics into 45 Minutes Without Pacing Discipline

**What goes wrong:**
The instructor runs 15 minutes over on the noise sculpture demo and the signal-vs-control explanation (both are inherently fascinating and easy to linger on), then races through envelopes with line~ and *~ in 2 minutes. Students get deep understanding of two topics and zero understanding of three. Or the instructor hits all five topics but at a pace that prevents any of them from landing. The numbered build-up patches become a slideshow rather than a teaching tool.

**Why it happens:**
45 minutes for 5 topics is approximately 9 minutes per topic, minus transitions and the opening demo. In practice, topics 1-2 (digital audio fundamentals, signal vs. control) are conceptually dense, and the noise sculpture demo is sonically engaging, making it psychologically difficult to move on. Topics 3-5 (audio I/O, basic operators, envelopes) are more mechanical but still require live demonstration. The instructor's enthusiasm for the interesting parts works against even pacing.

**How to avoid:**
- Create a timing sheet with hard deadlines: e.g., Demo (0:00-3:00), Topic 1 (3:00-10:00), Topic 2 (10:00-20:00), Topic 3 (20:00-27:00), Topic 4 (27:00-35:00), Topic 5 (35:00-43:00), Recap (43:00-45:00). Print it and tape it to the podium.
- Designate which topics are "expandable" vs. "compressible." Topics 1-2 are the conceptual foundation and should get more time. Topics 3-5 can be abbreviated because the annotated patches serve as post-lecture study material.
- Build the patch series so it tells a complete story even if the live demo only reaches patch 03 of 07. The remaining patches should be self-documenting with heavy annotations. Students who study them later get the full learning arc regardless.
- Rehearse with a timer. If the full run-through exceeds 43 minutes, cut content before the lecture rather than rushing during it.
- Identify one topic that can be gracefully dropped if time runs short. Topic 3 (Audio Status panel, adc~/dac~) is the best candidate since it is procedural rather than conceptual and can be covered in the handout.

**Warning signs:**
- No timing sheet exists in the lecture outline.
- The demo patch is so interesting that the instructor has no plan for stopping the demo and moving on.
- The rehearsal has never been timed.
- All 5 topics are given equal weight in the outline.

**Phase to address:**
Lecture outline design (timing must be baked into the lecture notes, not left to improvisation). Rehearsal phase (timed run-through is mandatory).

---

### Pitfall 5: Patches Are Illegible on the Classroom Projector

**What goes wrong:**
The instructor opens a beautifully detailed Max patch on the projector and students in the back rows cannot read any of the object names, comment boxes, or number values. Max's default font size (9-10pt) is designed for desktop editing, not classroom projection. The yellow-and-black striped MSP signal cords (the key visual distinction between Max and MSP) are too thin to distinguish from regular black message cords at projection distance. The patch's visual teaching value is lost.

**Why it happens:**
Max does not have different font sizes for patching mode vs. presentation mode (this is a known limitation documented in the Cycling '74 forums). Instructors build patches on their laptop at close range and never test at projection distance. Additionally, Max's patch cord visual distinction (thin black for messages, yellow-striped for signals) relies on subtle color and pattern differences that compress badly over HDMI projection, especially on older projectors.

**How to avoid:**
- Set the default font to at least 14pt for ALL demo patches. Select all objects (Cmd-A), open font menu (Cmd-T), set size.
- Use comment boxes with 18-20pt font for teaching labels ("This is a SIGNAL cord" / "This is a MESSAGE cord").
- Make patch cords thicker using the patch cord inspector (width 3-4 instead of default 1).
- Use Max's Styles feature to create a "Lecture" style with large fonts and high-contrast colors, applied consistently across all patches.
- Use presentation mode strategically: for the noise sculpture demo, show a clean presentation mode interface for the "wow" moment, then switch to patching mode for the teaching walkthrough. But ensure patching mode is also legible.
- Color-code signal cords manually (bright yellow or orange, thick) and message cords (blue or grey) when Max's automatic coloring is not distinct enough at distance.
- Test every patch on the actual projector at the actual screen size before the lecture. Sit in the back row.

**Warning signs:**
- Patches use the default 9-10pt font size.
- Patch cords are at default width.
- The instructor has never viewed the patches on the classroom projector.
- Comment boxes use the same small font as object boxes.
- No visual distinction strategy exists for signal vs. message cords beyond Max's default striping.

**Phase to address:**
Patch design phase (font and visual standards must be set before any patches are built, not retrofitted). Tech-check phase (projector test is mandatory).

---

### Pitfall 6: The Noise Sculpture Demo Does Not Connect Back to the Build-Up Patches

**What goes wrong:**
The opening noise sculpture demo is sonically impressive but uses techniques (subpatches, abstractions, advanced routing) that are too far removed from the simple objects introduced in the build-up series. When the instructor starts "rebuilding from scratch" with patch 01-hello-signal, students cannot see the connection to the cool thing they just heard. The demo generated excitement but the learning path generates disconnection. Students feel cheated: "I thought we were going to learn how to make THAT sound."

**Why it happens:**
The instructor designs the noise sculpture to be maximally impressive (complex filter banks with fffb~, feedback loops, spectral processing) without constraining it to the objects that will be taught in this specific lecture. The demo and the curriculum are designed independently instead of as a unified learning arc.

**How to avoid:**
- Constrain the noise sculpture to ONLY the objects covered in this lecture: noise~, cycle~, *~, +~, line~, gain~/live.gain~, dac~, and number~/sig~. If it does not sound good with only these objects, redesign it until it does. This constraint IS the design challenge.
- Structure the build-up patches so that by the final patch, students can see every element of the opening demo accounted for. The finale of the build-up series should BE the demo patch (or a recognizable subset of it).
- Explicitly narrate the connection: "Remember that sweeping sound from the opening? That was line~ controlling *~ — which is exactly what we just built in patch 05."
- If advanced objects are needed for the demo (e.g., lores~ for filtered noise sculpting), either teach them briefly as a "preview of coming attractions" or keep them hidden in a subpatch labeled "we'll learn what's inside this in Week 10."

**Warning signs:**
- The noise sculpture patch uses objects not covered in Topics 1-5 (check against: noise~, cycle~, *~, +~, line~, sig~, number~, gain~/live.gain~, dac~/ezdac~, adc~/ezadc~).
- The build-up series ends at a patch that sounds nothing like the opening demo.
- No lecture notes explicitly bridge the demo back to the build-up content.
- The demo uses filter objects, sampling objects, or synthesis techniques from Weeks 8-13.

**Phase to address:**
Content design (the demo and the build-up series must be designed as one integrated unit, not separately). The object constraint list should be established before any patch building begins.

---

### Pitfall 7: Failing to Bridge from Known Max Concepts to New MSP Concepts

**What goes wrong:**
The instructor introduces MSP as an entirely new universe of objects and concepts. Students who have spent 6 weeks building comfort and competence in Max suddenly feel like beginners again. Confidence drops. The lecture feels like "learning a new programming language" rather than "extending what you already know." Students disengage because the cognitive burden of starting from scratch is too high.

**Why it happens:**
MSP IS genuinely different from Max control-flow in fundamental ways (continuous vs. event-driven, audio-rate vs. control-rate, signal cords vs. message cords). Instructors rightly want to emphasize these differences. But emphasizing only the differences without anchoring to the familiar creates a pedagogical cliff. The Cycling '74 pedagogy literature notes this: effective MSP teaching connects back to what students already know.

**How to avoid:**
- Open every new MSP concept with its Max equivalent: "You know line — it sends a ramp as a series of numbers over time. line~ does the same thing, but at audio rate. Listen to the difference." "You know * for multiplying numbers. *~ multiplies signals. Same idea, different domain."
- Use the tilde (~) naming convention as a teaching hook: "Every MSP object is the audio version of a Max object you might already know. The tilde is the signal flag."
- Build the first demo patch by ADDING MSP objects to a Max control-flow patch they would recognize. Start with metro + random + number (familiar), then replace number with sig~ + cycle~ + dac~ (new). Show the old and new coexisting.
- Maintain familiar UI elements students know: use number boxes for parameter input (frequency, amplitude), message boxes for labels, toggle for on/off. Let the new objects sit inside a familiar Max scaffolding.
- Use send/receive (which students already know) to show how Max messages can control MSP parameters. This demonstrates that their existing knowledge is still valuable and relevant.

**Warning signs:**
- The first patch shown is entirely MSP objects with no Max objects the students recognize.
- The lecture notes do not reference any prior Max knowledge.
- Object introductions do not include "this is like [Max object] but for signals."
- The words "completely different" or "forget everything you know" appear in the talking points.

**Phase to address:**
Content design and lecture outline. Every topic's talking points should start with a "bridge from Max" framing before introducing the MSP concept.

---

## Technical Debt Patterns

Shortcuts that seem reasonable but create long-term problems.

| Shortcut | Immediate Benefit | Long-term Cost | When Acceptable |
|----------|-------------------|----------------|-----------------|
| Using loadbang to auto-start DSP | One less click during demo | Race conditions cause silence or crash in lecture; students learn bad habits | Never for lecture patches. Use manual ezdac~ toggle. |
| Connecting signal source directly to dac~ without gain~ | Faster to build, fewer objects | Full-amplitude blast; no way to gracefully silence audio during demo | Never. Always include gain~ even in "test" patches. |
| Using default font size (9-10pt) | Faster patch creation | Illegible on projector, back-row students lose the visual thread | Never for lecture patches. Set 14pt minimum from the start. |
| Skipping annotations/comments in demo patches | Faster iteration during design | Students who study patches later have no guide; instructor forgets what objects do under pressure | Acceptable during early prototyping; must annotate before rehearsal. |
| Building one massive patch instead of a numbered series | Fewer files to manage | Cannot recover if the live build goes wrong; students get overwhelmed by complexity all at once | Never. The numbered series is a safety net and a pedagogical tool. |
| Using presentation mode exclusively during teaching | Clean, visually appealing | Students never see how patches are actually built; they cannot learn patching by watching presentation mode | Acceptable for the opening "wow" demo only. Teaching walkthrough MUST show patching mode. |

## Integration Gotchas

Common mistakes when connecting to external services/systems.

| Integration | Common Mistake | Correct Approach |
|-------------|----------------|------------------|
| Classroom PA / speakers | Testing patches on laptop speakers or headphones, which mask volume problems | Test on the actual classroom audio system. What sounds fine in headphones at 80% may blast at 40% on a PA. |
| HDMI projector | Connecting HDMI after Max is open, causing audio driver to switch to HDMI output and losing the PA connection | Connect HDMI FIRST, then open Max and set the correct audio output device. Or use a separate audio connection (3.5mm / USB interface) independent of HDMI. |
| Classroom computer (not your own) | Assuming your Max version, audio settings, and preferences will be present | Bring patches on USB. Open Max. Verify Audio Status settings. Run all patches once. Budget 15 minutes minimum for this. |
| macOS audio routing | Relying on "Built-in Output" which may reroute to HDMI or Bluetooth | Use "Audio MIDI Setup" to verify the output device. Consider creating an Aggregate Device that locks the output to a specific hardware port. |
| Student handout files | Giving students the same .maxpat files you use for the demo (with loadbangs, auto-start, lecture-specific routing) | Create separate "student" versions of patches stripped of lecture-specific scaffolding, with extra annotations. |

## Performance Traps

Patterns that work at small scale but fail as usage grows.

| Trap | Symptoms | Prevention | When It Breaks |
|------|----------|------------|----------------|
| Running all demo patches simultaneously with DSP on | Audio glitches, CPU spikes, Max becomes unresponsive | Close each demo patch before opening the next, or use a single master patch with subpatchers enabled/disabled via gate~ | With 3+ patches open, each running signal generators and filters |
| Using poly~ or complex signal chains in demo patches | CPU monitor in Audio Status climbs above 50%, audio begins stuttering | Keep demo patches simple (under 20 signal objects). The noise sculpture should be the most complex patch, and even it should be lean. | On older classroom computers or when other software (Zoom, screen recording) is running |
| Excessively high sample rate (96kHz) | Double CPU usage for no audible benefit in a lecture context | Use 44100Hz sample rate for all lecture patches. Students do not need high-res audio for learning concepts. | Immediately on any non-optimized machine |
| Large I/O Vector Size causing latency | Noticeable delay between clicking ezdac~ and hearing sound, making live demos feel sluggish | Set I/O Vector Size to 512 (balanced latency/performance). Do not go below 256 or above 1024. | Noticeable above 1024 samples, which is ~23ms at 44.1kHz |

## Safety Mistakes

Domain-specific safety issues beyond general lecture preparation.

| Mistake | Risk | Prevention |
|---------|------|------------|
| No amplitude limiter before dac~ | Speaker damage, hearing damage to students and instructor | Insert [clip~ -0.95 0.95] or omx.peaklim~ before dac~ in every patch. Use gain~ with a reasonable maximum. |
| Leaving headphone monitoring on while connected to PA | Feedback loop through adc~ if microphone is live; deafening squeal through PA | Never enable adc~ (audio input) during the lecture unless it is explicitly part of a demo, and even then use gain~ at zero first. |
| Using adc~ in demo patches without explicit purpose | Picks up classroom noise, creates feedback if speakers are near microphones | Remove adc~ from all patches unless audio input is being explicitly demonstrated. If demonstrating ezadc~, mute input gain until ready. |
| No visual volume indicator | Instructor cannot see that signal amplitude is dangerously high before unmuting | Include meter~ or live.meter~ in every demo patch. Check visually before bringing up gain~. |
| DC offset in noise patches | Subsonic pressure can damage speakers over time; sounds silent but meter shows signal | Add dcblock~ after any noise processing chain, especially after filtering and amplitude manipulation. |

## UX Pitfalls

Common user experience mistakes in this domain (where "users" are students watching a lecture).

| Pitfall | User Impact | Better Approach |
|---------|-------------|-----------------|
| Opening patches in patching mode with unlock | Students see object handles, blue highlights, and edit affordances that distract from the content | Open patches, lock them (Cmd-E), then present. Or use presentation mode for the demo, patching mode (locked) for teaching. |
| Switching between many patches rapidly | Students lose track of which patch demonstrates which concept | Number patches clearly (01, 02, 03...), announce the switch ("Now I'm opening patch 03, basic operators"), and keep the previous patch description visible in lecture notes. |
| Mouse cursor wandering aimlessly while talking | Students try to follow the cursor instead of listening; creates visual noise | Park the cursor at the edge of the screen when speaking. Only move it when deliberately pointing at a specific object. |
| Explaining objects by name without pointing at them | "As you can see, the cycle~ is generating a 440Hz tone" — but students cannot find cycle~ in a dense patch | Point directly at each object as you name it. Better: use comment labels ("OSCILLATOR: cycle~ 440") next to key objects. |
| Not explaining what the yellow-striped cords mean | Students see the visual difference but do not know it is semantically meaningful | Explicitly teach this: "See these striped cords? That's MSP telling you 'this is a continuous audio signal, not a single message.' Every striped cord carries 44,100 numbers per second." |

## "Looks Done But Isn't" Checklist

Things that appear complete but are missing critical pieces.

- [ ] **Every patch file:** Has gain~ between source and dac~ — verify no direct source-to-dac~ connections exist
- [ ] **Every patch file:** Font size is 14pt+ — verify by opening on external display, not laptop
- [ ] **Every patch file:** Locked on open — verify by reopening each .maxpat cold
- [ ] **Noise sculpture demo:** Sounds good AND is constrained to Week 7 objects only — verify object list against syllabus
- [ ] **Noise sculpture demo:** Has limiter, dcblock~, and meter~ — verify audio safety chain is complete
- [ ] **Build-up series:** Final patch audibly resembles the opening demo — verify by playing both back to back
- [ ] **Build-up series:** Each patch introduces exactly one new concept — verify no patch introduces two concepts simultaneously
- [ ] **Lecture outline:** Has timing cues for every topic transition — verify by reading it as if you are following it live
- [ ] **Lecture outline:** Has "bridge from Max" talking points for every MSP concept — verify at least one Max-equivalent reference per topic
- [ ] **Student handout:** Lists every ~object covered with a one-line description — verify against Topics 1-5
- [ ] **Student handout:** Does not assume knowledge not yet taught — verify no references to Weeks 8-13 content
- [ ] **All patches tested on classroom system:** Audio comes out of the correct speakers — verify in the actual room, not your office

## Recovery Strategies

When pitfalls occur despite prevention, how to recover.

| Pitfall | Recovery Cost | Recovery Steps |
|---------|---------------|----------------|
| Audio blowout (full-amplitude blast) | LOW | Immediately click ezdac~ to stop audio. Wait 2 seconds. Say "That's actually a great example of why volume control matters in MSP." Turn gain~ to zero. Re-enable audio. Fade up slowly. Turn the mistake into a teaching moment. |
| No audio comes out | MEDIUM | Check: (1) Is ezdac~ on? (2) Is gain~ above zero? (3) Check Audio Status window > Output Device. (4) Check system volume. If nothing works within 60 seconds, switch to pre-recorded audio examples (have these ready as .wav files playable in QuickTime as backup). |
| Patch crashes Max | MEDIUM | Reopen Max. Reopen the patch. If it crashes again, skip to the next patch in the series. The numbered series provides natural fallback points. |
| Running out of time (only covered 3 of 5 topics) | LOW | Say "We've covered the foundation — signals, oscillators, and amplitude. Topics 4 and 5 are in your handout with the annotated patches. Study them before next week." The handout and annotated patches exist precisely for this scenario. |
| Projector fails / display issues | MEDIUM | Have whiteboard diagrams prepared as backup teaching tools (signal flow, control-vs-signal comparison chart). The whiteboard diagrams listed in requirements serve as projection-independent teaching aids. |
| Students seem confused by signal-vs-control | LOW | Pause and return to the comparison patch. "Let me show you this again." Having a dedicated comparison patch means you always have a reset point for the hardest concept. |

## Pitfall-to-Phase Mapping

How roadmap phases should address these pitfalls.

| Pitfall | Prevention Phase | Verification |
|---------|------------------|--------------|
| Audio blowout | Patch Design (earliest) | Review every .maxpat for direct source-to-dac~ connections. Every path must go through gain~ and limiter. |
| Abstract signal-vs-control teaching | Content Design | The comparison patch exists, has audio output, and takes at least 8 minutes in the timed rehearsal. |
| Audio driver failure | Tech Check / Rehearsal | All patches run with audio on the classroom system. A pre-lecture checklist is printed. |
| Time pacing failure | Lecture Outline Design | Timing sheet exists with minute-marks. Timed rehearsal completed under 43 minutes. |
| Illegible patches on projector | Patch Design (earliest) | All patches tested at projection size. 14pt font minimum. Thicker patch cords. Back-row readability confirmed. |
| Demo disconnected from build-up | Content Design | Object audit: demo uses only Week 7 objects. Final build-up patch sounds like the demo. |
| No bridge from Max to MSP | Lecture Outline / Content Design | Every topic section in lecture notes starts with a "You already know X in Max..." bridge. |
| No recovery plan | Rehearsal | Backup audio files exist. Whiteboard diagrams prepared. Instructor has rehearsed the "skip to next patch" fallback. |

## Sources

- [Cycling '74 MSP Basics Tutorial 1: Test Tone](https://docs.cycling74.com/max7/tutorials/05_mspbasicchapter01) — amplitude safety warning, gain~ best practice (HIGH confidence)
- [Cycling '74: How MSP Works](https://docs.cycling74.com/max7/tutorials/03_msphowmspworks) — signal vs. control rate distinction, patch cord visual differences (HIGH confidence)
- [Cycling '74: Audio Input and Output](https://docs.cycling74.com/max7/tutorials/04_mspaudioio) — audio driver configuration, adstatus behavior (HIGH confidence)
- [Cycling '74: Presentation Mode](https://docs.cycling74.com/max7/vignettes/presentation_mode) — presentation vs. patching mode, visual limitations (HIGH confidence)
- [Cycling '74: Audio Status Window](https://docs.cycling74.com/max7/vignettes/audio_status) — driver settings, vector sizes (HIGH confidence)
- [Cycling '74 Forum: Blown Filters and Speaker Damage](https://cycling74.com/forums/blown-filters-and-speaker-damage) — extreme amplitude values (160,000), dcblock~ usage, real-world speaker damage (MEDIUM confidence)
- [Cycling '74 Forum: Max 8.6.3 DSP Behavior Change](https://cycling74.com/forums/max-863-existing-patches-open-with-dsp-off-and-new-patchers-require-a-dac-object-to-start-dsp) — version-specific DSP startup issue (MEDIUM confidence)
- [Cycling '74 Forum: adstatus Issues on Mac](https://cycling74.com/forums/adstatus-issues-max-8-on-mac) — beachballing, device index instability with AirPlay (MEDIUM confidence)
- [Chris Swithinbank: 264 Ways to Teach Max](https://www.chrisswithinbank.net/2016/01/teaching-max-msp/) — time-to-music problem, modular pre-built tools, equity in CS education (MEDIUM confidence)
- [UCI Max Cookbook: Ways to Turn MSP On and Off](https://music.arts.uci.edu/dobrian/maxcookbook/ways-turn-msp-and) — loadbang timing issues, deferlow workaround (MEDIUM confidence)
- [Cycling '74 Forum: Font Size / Screen Scaling](https://cycling74.com/forums/screen-scaling) — high-resolution display issues, no separate presentation-mode font sizes (MEDIUM confidence)
- [Cycling '74: Filter Tutorial 4 — Subtractive Synthesis](https://docs.cycling74.com/max7/tutorials/08_filterchapter04) — noise sculpting objects (noise~, lores~, fffb~), resonance behavior (HIGH confidence)
- [Dobrian: Getting Started with Max and MSP](https://dobrian.github.io/cmp/topics/intro-to-max-and-msp/1.Getting-started-with-Max-and-MSP.html) — beginner misconceptions, message ordering confusion (MEDIUM confidence)
- [Mauro Graziani: Max/MSP Primer Lesson 02](https://www.maurograziani.org/text_pages/maxmsp/primer/lesson02/lesson02.html) — signal rate efficiency (why *~ for a static value wastes CPU), tilde naming convention (MEDIUM confidence)

---
*Pitfalls research for: Max/MSP educational lecture preparation (MUSC 320 Week 7, Introduction to MSP)*
*Researched: 2026-02-13*
