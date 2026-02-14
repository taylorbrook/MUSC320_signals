{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 100.0, 100.0, 1100.0, 850.0 ],
        "default_fontsize": 12.0,
        "description": "06 \u2014 Modulation and Mixing: phasor~ automation, +~ voice mixing, multi-voice architecture (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 10.0, 400.0, 24.0 ],
                    "text": "06 \u2014 Modulation and Mixing"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 36.0, 350.0, 20.0 ],
                    "text": "How do I make sound evolve continuously?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 62.0, 680.0, 19.0 ],
                    "text": "phasor~ 0.5 -- generates a repeating ramp from 0 to 1, completing 0.5 cycles per second (one ramp every 2 seconds)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 82.0, 740.0, 19.0 ],
                    "text": "cycle~ 0 -- when cycle~ has 0 as argument, it reads frequency from the LEFT inlet. Here we use the RIGHT inlet (phase), driven by phasor~.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 102.0, 740.0, 19.0 ],
                    "text": "phasor~ -> cycle~ phase = smooth cyclical modulation. Think of phasor~ as 'metro for signals' -- it repeats automatically without any control-domain timing.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 122.0, 700.0, 19.0 ],
                    "text": "*~ 0.5 -> +~ 0.5 -- converts the -1..1 cycle~ output to a 0..1 range (unipolar). This is a standard MSP idiom.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 150.0, 500.0, 19.0 ],
                    "text": "+~ adds signals just like + adds numbers. Here it mixes two voices into one output.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 170.0, 500.0, 19.0 ],
                    "text": "The 3 Hz difference between 220 and 223 creates a gentle beating effect -- two nearly identical frequencies",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c6b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 190.0, 500.0, 19.0 ],
                    "text": "interfere, creating a pulsing volume.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 220.0, 500.0, 19.0 ],
                    "text": "*~ 0.7 on the detuned partial -- slightly quieter than the fundamental for a natural sound.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-c8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 250.0, 500.0, 19.0 ],
                    "text": "TRY THIS: change phasor~ 0.5 to 2.0 for faster modulation, or 0.1 for glacial evolution.",
                    "textcolor": [ 0.4, 0.6, 0.4, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 280.0, 500.0, 19.0 ],
                    "text": "This patch combines everything from Patches 01-05: cycle~ for tone, *~ for amplitude,",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c9b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 300.0, 500.0, 19.0 ],
                    "text": "line~ for fade in/out, and now phasor~ for continuous modulation and +~ for mixing.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 330.0, 500.0, 19.0 ],
                    "text": "phasor~ demonstrates why signals are powerful: it generates 44,100 ramp values per second,",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c10b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 350.0, 500.0, 19.0 ],
                    "text": "giving you sample-accurate control over modulation. No metro or scheduling needed.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-master",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 150.0, 130.0, 20.0 ],
                    "text": "MASTER ON/OFF"
                }
            },
            {
                "box": {
                    "id": "obj-master-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 175.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-master-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 430.0, 215.0, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-master-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 250.0, 42.0, 22.0 ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-master-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 250.0, 57.0, 22.0 ],
                    "text": "0, 1. 500"
                }
            },
            {
                "box": {
                    "id": "obj-master-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 430.0, 285.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-voiceA",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 150.0, 200.0, 20.0 ],
                    "text": "Voice A: Tremolo"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 172.0, 220.0, 18.0 ],
                    "text": "LFO: phasor~ -> cycle~ phase -> unipolar",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 195.0, 66.0, 22.0 ],
                    "text": "phasor~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 225.0, 52.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 255.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-offset",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 285.0, 42.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-tone-A",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 130.0, 255.0, 66.0, 22.0 ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "id": "obj-am",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 130.0, 320.0, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-lfo",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 30.0, 385.0, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 437.0, 130.0, 18.0 ],
                    "text": "LFO (0 to 1 cycling)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-voiceA",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 175.0, 385.0, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-voiceA",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 175.0, 437.0, 130.0, 18.0 ],
                    "text": "Voice A (tremolo)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-voiceB",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 150.0, 200.0, 20.0 ],
                    "text": "Voice B: Drone"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-beat",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 172.0, 220.0, 18.0 ],
                    "text": "Two detuned oscillators = beating",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-drone-fund",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 195.0, 66.0, 22.0 ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "id": "obj-drone-det",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 225.0, 66.0, 22.0 ],
                    "text": "cycle~ 223"
                }
            },
            {
                "box": {
                    "id": "obj-drone-scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 255.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-drone-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 320.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-voiceB",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 320.0, 385.0, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-voiceB",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 437.0, 130.0, 18.0 ],
                    "text": "Voice B (beating drone)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-mix",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 460.0, 200.0, 20.0 ],
                    "text": "Mix Bus"
                }
            },
            {
                "box": {
                    "id": "obj-voice-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 200.0, 490.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-master-mult",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 200.0, 530.0, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 200.0, 570.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-06 Vol",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Vol",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-clip-l",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 200.0, 720.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-clip-r",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 310.0, 720.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 760.0, 37.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 420.0, 720.0, 45.0, 45.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [ "obj-phasor", 0 ],
                    "destination": [ "obj-lfo-cycle", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-lfo-cycle", 0 ],
                    "destination": [ "obj-lfo-scale", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-lfo-scale", 0 ],
                    "destination": [ "obj-lfo-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-lfo-offset", 0 ],
                    "destination": [ "obj-am", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-lfo-offset", 0 ],
                    "destination": [ "obj-scope-lfo", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-tone-A", 0 ],
                    "destination": [ "obj-am", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-am", 0 ],
                    "destination": [ "obj-scope-voiceA", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-am", 0 ],
                    "destination": [ "obj-voice-mix", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-drone-fund", 0 ],
                    "destination": [ "obj-drone-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-drone-det", 0 ],
                    "destination": [ "obj-drone-scale", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-drone-scale", 0 ],
                    "destination": [ "obj-drone-sum", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-drone-sum", 0 ],
                    "destination": [ "obj-scope-voiceB", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-drone-sum", 0 ],
                    "destination": [ "obj-voice-mix", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-voice-mix", 0 ],
                    "destination": [ "obj-master-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-toggle", 0 ],
                    "destination": [ "obj-master-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-sel", 0 ],
                    "destination": [ "obj-master-off", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-sel", 1 ],
                    "destination": [ "obj-master-on", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-off", 0 ],
                    "destination": [ "obj-master-line", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-on", 0 ],
                    "destination": [ "obj-master-line", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-line", 0 ],
                    "destination": [ "obj-master-mult", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-mult", 0 ],
                    "destination": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-master-mult", 0 ],
                    "destination": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-gain", 0 ],
                    "destination": [ "obj-clip-l", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-gain", 1 ],
                    "destination": [ "obj-clip-r", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-clip-l", 0 ],
                    "destination": [ "obj-dac", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-clip-r", 0 ],
                    "destination": [ "obj-dac", 1 ]
                }
            }
        ]
    }
}
