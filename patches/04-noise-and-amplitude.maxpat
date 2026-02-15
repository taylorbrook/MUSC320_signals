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
        "rect": [
            100,
            100,
            1000,
            750
        ],
        "description": "04 — Noise and Amplitude: noise~ as a signal source, *~ as amplitude control (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40,
                        140,
                        770,
                        120
                    ],
                    "bgcolor": [
                        0.2,
                        0.3,
                        0.55,
                        0.1
                    ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "id": "obj-region-processing",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40,
                        270,
                        310,
                        210
                    ],
                    "bgcolor": [
                        0.55,
                        0.35,
                        0.15,
                        0.1
                    ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "id": "obj-region-output",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40,
                        525,
                        300,
                        230
                    ],
                    "bgcolor": [
                        0.2,
                        0.45,
                        0.25,
                        0.1
                    ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        10,
                        400,
                        24
                    ],
                    "text": "04 — Noise and Amplitude"
                }
            },
            {
                "box": {
                    "fontsize": 12,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        36,
                        350,
                        20
                    ],
                    "text": "What about non-tonal sound?"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        62,
                        620,
                        19
                    ],
                    "text": "noise~ -- generates white noise: a random value at every sample. Full bandwidth, full amplitude.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        82,
                        680,
                        19
                    ],
                    "text": "WITHOUT *~ controlling its amplitude, noise~ at full blast would be painfully loud. Always scale noise before it reaches the speakers.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        102,
                        700,
                        19
                    ],
                    "text": "*~ as an amplitude gate: when the right inlet is 0, no sound passes. When it's 1.0, full volume. Anything between = proportional loudness.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        122,
                        700,
                        19
                    ],
                    "text": "slider -> sig~ -> *~ right inlet: same pattern as Patch 03, but now controlling noise amplitude instead of cycle~ frequency.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        280,
                        646,
                        19
                    ],
                    "text": "scope~ shows the chaos of noise vs the clean wave of cycle~ -- this is the visual difference between periodic and aperiodic signals.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        580,
                        500,
                        19
                    ],
                    "text": "Reference: cycle~, *~, sig~, output chain -- see Patches 01-03 for details",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        510,
                        500,
                        19
                    ],
                    "text": "+~ adds two signals together. We'll explore this more in Patch 06.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12,
                    "id": "obj-lbl-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        60,
                        150,
                        200,
                        20
                    ],
                    "text": "NOISE (aperiodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60,
                        175,
                        45,
                        22
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1
                    ],
                    "id": "obj-scope-noise",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        160,
                        175,
                        155,
                        60
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-scope-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        160,
                        237,
                        150,
                        18
                    ],
                    "text": "noise~ output (chaotic)",
                    "textcolor": [
                        0.6,
                        0.6,
                        0.6,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-lbl-slider",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        120,
                        260,
                        200,
                        19
                    ],
                    "text": "Noise Amplitude (0 to 1)",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        60,
                        280,
                        20,
                        100
                    ],
                    "size": 1
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60,
                        395,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-mult-noise",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60,
                        435,
                        32,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12,
                    "id": "obj-lbl-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        550,
                        150,
                        200,
                        20
                    ],
                    "text": "TONE (periodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        550,
                        175,
                        66,
                        22
                    ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1
                    ],
                    "id": "obj-scope-cycle",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        650,
                        175,
                        150,
                        60
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-scope-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650,
                        237,
                        150,
                        18
                    ],
                    "text": "cycle~ 330 output (periodic)",
                    "textcolor": [
                        0.6,
                        0.6,
                        0.6,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-c-compare",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        550,
                        262,
                        400,
                        19
                    ],
                    "text": "Compare: noise is random at every sample. cycle~ repeats the same pattern.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-mult-tone",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        550,
                        300,
                        40,
                        22
                    ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60,
                        500,
                        32,
                        22
                    ],
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
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        60,
                        540,
                        48,
                        136
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-04 Vol",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
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
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60,
                        690,
                        88,
                        22
                    ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-clip-r",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        690,
                        88,
                        22
                    ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        60,
                        720,
                        37,
                        22
                    ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        280,
                        690,
                        45,
                        45
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        200,
                        320,
                        60,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        200,
                        345,
                        40,
                        22
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-init-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        200,
                        370,
                        29.5,
                        22
                    ],
                    "text": "0.3"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-bridge-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        120,
                        175,
                        520,
                        19
                    ],
                    "text": "random gives one random number per bang — noise~ gives one every sample (44,100 per second).",
                    "textcolor": [
                        0.4,
                        0.4,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-bridge-plus",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        530,
                        500,
                        19
                    ],
                    "text": "+~ adds two signals — you added numbers with +, now +~ adds signals. Full intro in Patch 06.",
                    "textcolor": [
                        0.4,
                        0.4,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-param-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        120,
                        395,
                        250,
                        19
                    ],
                    "text": "0.3 = 30% amplitude (safe starting level)",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "obj-experiment-01",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        760,
                        580,
                        19
                    ],
                    "text": "EXPERIMENT: Set the amplitude slider to 0, then slowly bring it up. At what point does the noise become audible?",
                    "textcolor": [
                        0.3,
                        0.65,
                        0.3,
                        1
                    ],
                    "bgcolor": [
                        0.12,
                        0.2,
                        0.12,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "obj-experiment-02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        783,
                        580,
                        19
                    ],
                    "text": "EXPERIMENT: Disconnect noise~ from *~ and connect cycle~ instead — you just built Patch 01 again!",
                    "textcolor": [
                        0.3,
                        0.65,
                        0.3,
                        1
                    ],
                    "bgcolor": [
                        0.12,
                        0.2,
                        0.12,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-troubleshoot-04",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        120,
                        200,
                        520,
                        19
                    ],
                    "text": "WARNING: noise~ at full amplitude is loud! Always start with the amplitude slider low.",
                    "textcolor": [
                        0.85,
                        0.6,
                        0.2,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-color-legend",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        810,
                        450,
                        18
                    ],
                    "text": "COLOR REGIONS:  Blue = Source (oscillators, noise)  |  Orange = Processing (envelopes, operators)  |  Green = Output (gain, dac~)",
                    "textcolor": [
                        0.6,
                        0.6,
                        0.6,
                        1
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        714,
                        69.5,
                        714
                    ],
                    "source": [
                        "obj-clip-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "midpoints": [
                        179.5,
                        723,
                        99,
                        723,
                        99,
                        717,
                        87.5,
                        717
                    ],
                    "source": [
                        "obj-clip-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mult-tone",
                        0
                    ],
                    "midpoints": [
                        559.5,
                        249,
                        336,
                        249,
                        336,
                        309,
                        546,
                        309,
                        546,
                        300,
                        559.5,
                        300
                    ],
                    "order": 1,
                    "source": [
                        "obj-cycle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-cycle",
                        0
                    ],
                    "midpoints": [
                        559.5,
                        207,
                        636,
                        207,
                        636,
                        171,
                        659.5,
                        171
                    ],
                    "order": 0,
                    "source": [
                        "obj-cycle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-clip-l",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        678,
                        69.5,
                        678
                    ],
                    "source": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-clip-r",
                        0
                    ],
                    "midpoints": [
                        76.75,
                        684,
                        179.5,
                        684
                    ],
                    "source": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-slider",
                        0
                    ],
                    "midpoints": [
                        209.5,
                        393,
                        102,
                        393,
                        102,
                        276,
                        69.5,
                        276
                    ],
                    "source": [
                        "obj-init-msg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-trigger",
                        0
                    ],
                    "midpoints": [
                        209.5,
                        345,
                        209.5,
                        345
                    ],
                    "source": [
                        "obj-loadbang",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sum",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        459,
                        69.5,
                        459
                    ],
                    "source": [
                        "obj-mult-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sum",
                        1
                    ],
                    "midpoints": [
                        559.5,
                        486,
                        82.5,
                        486
                    ],
                    "source": [
                        "obj-mult-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mult-noise",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        267,
                        45,
                        267,
                        45,
                        432,
                        69.5,
                        432
                    ],
                    "order": 1,
                    "source": [
                        "obj-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-noise",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        207,
                        147,
                        207,
                        147,
                        171,
                        169.5,
                        171
                    ],
                    "order": 0,
                    "source": [
                        "obj-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mult-noise",
                        1
                    ],
                    "midpoints": [
                        69.5,
                        429,
                        82.5,
                        429
                    ],
                    "source": [
                        "obj-sig",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        381,
                        69.5,
                        381
                    ],
                    "source": [
                        "obj-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain",
                        1
                    ],
                    "midpoints": [
                        69.5,
                        537,
                        98.5,
                        537
                    ],
                    "order": 0,
                    "source": [
                        "obj-sum",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain",
                        0
                    ],
                    "midpoints": [
                        69.5,
                        525,
                        69.5,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "obj-sum",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-init-msg",
                        0
                    ],
                    "midpoints": [
                        209.5,
                        369,
                        209.5,
                        369
                    ],
                    "source": [
                        "obj-trigger",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [
                "Build-04 Vol",
                "Vol",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}