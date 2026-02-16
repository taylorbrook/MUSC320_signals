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
        "rect": [ 100.0, 100.0, 1000.0, 750.0 ],
        "description": "04 — Noise and Amplitude: noise~ as a signal source, *~ as amplitude control (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.0, 530.0, 81.0, 22.0 ],
                    "text": "loadmess -12"
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
                    "patching_rect": [ 30.0, 10.0, 400.0, 24.0 ],
                    "text": "04 — Noise and Amplitude"
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
                    "text": "What about non-tonal sound?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 62.0, 620.0, 19.0 ],
                    "text": "noise~ -- generates white noise: a random value at every sample. Full bandwidth, full amplitude.",
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
                    "patching_rect": [ 30.0, 82.0, 680.0, 19.0 ],
                    "text": "WITHOUT *~ controlling its amplitude, noise~ at full blast would be painfully loud. Always scale noise before it reaches the speakers.",
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
                    "patching_rect": [ 30.0, 102.0, 700.0, 19.0 ],
                    "text": "*~ as an amplitude gate: when the right inlet is 0, no sound passes. When it's 1.0, full volume. Anything between = proportional loudness.",
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
                    "text": "slider -> sig~ -> *~ right inlet: same pattern as Patch 03, but now controlling noise amplitude instead of cycle~ frequency.",
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
                    "patching_rect": [ 350.0, 280.0, 646.0, 19.0 ],
                    "text": "scope~ shows the chaos of noise vs the clean wave of cycle~ -- this is the visual difference between periodic and aperiodic signals.",
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
                    "patching_rect": [ 350.0, 580.0, 500.0, 19.0 ],
                    "text": "Reference: cycle~, *~, sig~, output chain -- see Patches 01-03 for details",
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
                    "patching_rect": [ 350.0, 510.0, 500.0, 19.0 ],
                    "text": "+~ adds two signals together. We'll explore this more in Patch 06.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 60.0, 150.0, 200.0, 20.0 ],
                    "text": "NOISE (aperiodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 60.0, 175.0, 45.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-noise",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 160.0, 175.0, 155.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 237.0, 150.0, 18.0 ],
                    "text": "noise~ output (chaotic)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl-slider",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 260.0, 200.0, 19.0 ],
                    "text": "Noise Amplitude (0 to 1)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 60.0, 280.0, 20.0, 100.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 60.0, 395.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-mult-noise",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 59.5, 442.0, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 550.0, 150.0, 200.0, 20.0 ],
                    "text": "TONE (periodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 550.0, 175.0, 66.0, 22.0 ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-cycle",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 650.0, 175.0, 150.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 237.0, 150.0, 18.0 ],
                    "text": "cycle~ 330 output (periodic)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c-compare",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 550.0, 262.0, 400.0, 19.0 ],
                    "text": "Compare: noise is random at every sample. cycle~ repeats the same pattern.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-mult-tone",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 550.0, 300.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 60.0, 500.0, 32.0, 22.0 ],
                    "text": "+~"
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
                    "patching_rect": [ 60.0, 540.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-04 Vol",
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
                    "patching_rect": [ 53.5, 699.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 200.0, 320.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 200.0, 345.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-init-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 370.0, 29.5, 22.0 ],
                    "text": "0.3"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-bridge-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 175.0, 520.0, 19.0 ],
                    "text": "random gives one random number per bang — noise~ gives one every sample (44,100 per second).",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-bridge-plus",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 530.0, 500.0, 19.0 ],
                    "text": "+~ adds two signals — you added numbers with +, now +~ adds signals. Full intro in Patch 06.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 395.0, 250.0, 19.0 ],
                    "text": "0.3 = 30% amplitude (safe starting level)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
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
                    "patching_rect": [ 30.0, 760.0, 603.0, 19.0 ],
                    "text": "EXPERIMENT: Set the amplitude slider to 0, then slowly bring it up. At what point does the noise become audible?",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ],
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-experiment-02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 783.0, 580.0, 19.0 ],
                    "text": "EXPERIMENT: Disconnect noise~ from *~ and connect cycle~ instead — you just built Patch 01 again!",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-troubleshoot-04",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 200.0, 520.0, 19.0 ],
                    "text": "WARNING: noise~ at full amplitude is loud! Always start with the amplitude slider low.",
                    "textcolor": [ 0.85, 0.6, 0.2, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-color-legend",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 810.0, 597.0, 18.0 ],
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
                    "patching_rect": [ 40.0, 140.0, 770.0, 120.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.55, 0.35, 0.15, 0.1 ],
                    "id": "obj-region-processing",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 270.0, 310.0, 210.0 ],
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
                    "patching_rect": [ 40.0, 530.0, 89.0, 225.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 147.5, 555.0, 120.0, 555.0, 120.0, 537.0, 69.5, 537.0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-tone", 0 ],
                    "midpoints": [ 559.5, 249.0, 546.0, 249.0, 546.0, 294.0, 559.5, 294.0 ],
                    "order": 1,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-cycle", 0 ],
                    "midpoints": [ 559.5, 231.0, 645.0, 231.0, 645.0, 171.0, 659.5, 171.0 ],
                    "order": 0,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "midpoints": [ 76.75, 693.0, 89.0, 693.0 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "midpoints": [ 69.5, 678.0, 63.0, 678.0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-slider", 0 ],
                    "midpoints": [ 209.5, 393.0, 195.0, 393.0, 195.0, 381.0, 90.0, 381.0, 90.0, 276.0, 69.5, 276.0 ],
                    "source": [ "obj-init-msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-trigger", 0 ],
                    "midpoints": [ 209.5, 345.0, 209.5, 345.0 ],
                    "source": [ "obj-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sum", 0 ],
                    "midpoints": [ 69.0, 465.0, 69.5, 465.0 ],
                    "source": [ "obj-mult-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sum", 1 ],
                    "midpoints": [ 559.5, 495.0, 82.5, 495.0 ],
                    "source": [ "obj-mult-tone", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-noise", 0 ],
                    "midpoints": [ 69.5, 267.0, 45.0, 267.0, 45.0, 429.0, 69.0, 429.0 ],
                    "order": 1,
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-noise", 0 ],
                    "midpoints": [ 69.5, 198.0, 117.0, 198.0, 117.0, 171.0, 169.5, 171.0 ],
                    "order": 0,
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-noise", 1 ],
                    "midpoints": [ 69.5, 429.0, 82.0, 429.0 ],
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig", 0 ],
                    "midpoints": [ 69.5, 381.0, 69.5, 381.0 ],
                    "source": [ "obj-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 69.5, 537.0, 98.5, 537.0 ],
                    "order": 0,
                    "source": [ "obj-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 69.5, 525.0, 69.5, 525.0 ],
                    "order": 1,
                    "source": [ "obj-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-msg", 0 ],
                    "midpoints": [ 209.5, 369.0, 209.5, 369.0 ],
                    "source": [ "obj-trigger", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-04 Vol", "Vol", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}