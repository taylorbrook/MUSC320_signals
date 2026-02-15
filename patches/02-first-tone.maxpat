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
        "rect": [ 100.0, 100.0, 1430.0, 797.0 ],
        "description": "02 — First Tone: cycle~ frequency and amplitude, *~ scaling (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 530.0, 306.0, 66.0, 22.0 ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 774.0, 306.0, 66.0, 22.0 ],
                    "text": "cycle~ 440"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1023.0, 306.0, 66.0, 22.0 ],
                    "text": "cycle~ 880"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 300.0, 24.0 ],
                    "text": "02 — First Tone"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 48.0, 400.0, 20.0 ],
                    "text": "What makes that tone? Can I change it?"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-section-main",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 85.0, 200.0, 20.0 ],
                    "text": "MAIN SIGNAL CHAIN"
                }
            },
            {
                "box": {
                    "id": "obj-cycle-main",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 100.0, 120.0, 72.0, 22.0 ],
                    "text": "cycle~ 440"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 155.0, 485.0, 19.0 ],
                    "text": "cycle~ — cosine wave oscillator. The number after it is the frequency in Hertz (cycles per second)."
                }
            },
            {
                "box": {
                    "id": "obj-amp-main",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 100.0, 200.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 230.0, 480.0, 19.0 ],
                    "text": "*~ 0.5 — amplitude scaling. Multiply every sample by 0.5 to cut the volume in half."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 249.0, 480.0, 19.0 ],
                    "text": "0.5 = half amplitude (-6 dB). Try 0.25 (quieter) or 1.0 (full).",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 268.0, 480.0, 19.0 ],
                    "text": "*~ is a signal multiplier. It scales every sample. 0.5 = half amplitude, 0.25 = quarter amplitude."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-safety",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 290.0, 480.0, 19.0 ],
                    "text": "Why not just turn it up to 1.0? In MSP, managing amplitude is critical. Full-amplitude",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-safety2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 309.0, 480.0, 19.0 ],
                    "text": "signals from multiple sources can clip (distort). Always scale down.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-main",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 200.0, 115.0, 80.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 100.0, 340.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-02 Vol",
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
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 506.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-output",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 585.0, 480.0, 19.0 ],
                    "text": "ezdac~, dac~, live.gain~, clip~ — see Patch 01 for details",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-section-compare",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 85.0, 250.0, 20.0 ],
                    "text": "FREQUENCY COMPARISON"
                }
            },
            {
                "box": {
                    "id": "obj-cycle-220",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 530.0, 140.0, 53.0, 22.0 ],
                    "text": "cycle~ 1"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-220",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 333.0, 148.0, 18.0 ],
                    "text": "220 Hz — one octave below A4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-220",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 530.0, 170.0, 200.0, 91.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-cycle-440",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 774.0, 140.0, 53.0, 22.0 ],
                    "text": "cycle~ 2"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-440",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 774.0, 333.0, 134.0, 18.0 ],
                    "text": "440 Hz — A4 (concert pitch)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-440",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 774.0, 170.0, 200.0, 91.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-cycle-880",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1023.0, 140.0, 53.0, 22.0 ],
                    "text": "cycle~ 4"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-880",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1023.0, 333.0, 149.0, 18.0 ],
                    "text": "880 Hz — one octave above A4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-880",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1023.0, 170.0, 200.0, 91.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-scope-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 275.0, 693.0, 19.0 ],
                    "text": "live.scope~ shows the waveform. Notice: 4 Hz has twice as many cycles on screen as 2 Hz, which is twice as much as 1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-octave",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 110.0, 700.0, 19.0 ],
                    "text": "Each octave doubles the frequency: 220 -> 440 -> 880. The scope shows this visually — double the cycles on screen.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-troubleshoot-02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 608.0, 480.0, 19.0 ],
                    "text": "See Patch 01 troubleshooting: ezdac~ on, live.gain~ up.",
                    "textcolor": [ 0.85, 0.6, 0.2, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ],
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-experiment-01",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 360.0, 821.0, 19.0 ],
                    "text": "EXPERIMENT: Connect all three cycle~ objects (220, 440, 880) to dac~ through live.gain~ at once — what do you hear when frequencies are close together?",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-color-legend",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 640.0, 597.0, 18.0 ],
                    "text": "COLOR REGIONS:  Blue = Source (oscillators, noise)  |  Orange = Processing (envelopes, operators)  |  Green = Output (gain, dac~)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 100.0, 290.0, 210.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.45, 0.25, 0.1 ],
                    "id": "obj-region-output",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 325.0, 260.0, 270.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "order": 0,
                    "source": [ "obj-amp-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "order": 1,
                    "source": [ "obj-amp-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-220", 0 ],
                    "source": [ "obj-cycle-220", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-440", 0 ],
                    "source": [ "obj-cycle-440", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-880", 0 ],
                    "source": [ "obj-cycle-880", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-amp-main", 0 ],
                    "order": 1,
                    "source": [ "obj-cycle-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-main", 0 ],
                    "order": 0,
                    "source": [ "obj-cycle-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "source": [ "obj-gain", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-02 Vol", "Vol", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}