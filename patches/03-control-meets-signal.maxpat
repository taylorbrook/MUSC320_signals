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
        "default_fontsize": 12,
        "description": "03 — Control Meets Signal: sig~ and number~ bridge the control-signal divide (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        265,
                        455,
                        230,
                        60
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
                        65,
                        120,
                        540,
                        310
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
                        165,
                        530,
                        300,
                        210
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
                        20,
                        400,
                        24
                    ],
                    "text": "03 — Control Meets Signal"
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
                        48,
                        450,
                        20
                    ],
                    "text": "How do I connect Max controls to MSP signals?"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-topc02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        78,
                        580,
                        19
                    ],
                    "text": "In Max, the number box updates only when you change the slider. In MSP, sig~ continuously",
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
                    "id": "obj-ann-topc02b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        97,
                        580,
                        19
                    ],
                    "text": "outputs the value at 44,100 samples per second — that's what the ~ means.",
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
                    "fontface": 1,
                    "fontsize": 12,
                    "id": "obj-section-control",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        80,
                        135,
                        200,
                        20
                    ],
                    "text": "CONTROL DOMAIN"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12,
                    "id": "obj-section-signal",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        430,
                        135,
                        200,
                        20
                    ],
                    "text": "SIGNAL DOMAIN"
                }
            },
            {
                "box": {
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        280,
                        160,
                        20,
                        120
                    ],
                    "floatoutput": 1,
                    "min": 80,
                    "size": 320
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-slider",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        310,
                        200,
                        100,
                        19
                    ],
                    "text": "Frequency (Hz)"
                }
            },
            {
                "box": {
                    "id": "obj-number",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "patching_rect": [
                        130,
                        310,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-number",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        50,
                        340,
                        280,
                        19
                    ],
                    "text": "The number box updates only when you move the slider."
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
                        480,
                        310,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-sig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        310,
                        430,
                        19
                    ],
                    "text": "sig~ — converts a single Max number into a continuous audio-rate signal."
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-sig2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        329,
                        430,
                        19
                    ],
                    "text": "This is the bridge between Max and MSP."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-numtilde",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        480,
                        355,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-numtilde",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        355,
                        430,
                        19
                    ],
                    "text": "number~ (mode 2) — displays the current value of a signal. Updates about 4 times"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-numtilde2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        374,
                        430,
                        19
                    ],
                    "text": "per second (not at audio rate — that would be too fast to read)."
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-why-sig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        430,
                        400,
                        530,
                        19
                    ],
                    "text": "Why sig~ instead of connecting the slider directly? Signal inlets need a signal input.",
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
                    "id": "obj-ann-why-sig2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        430,
                        419,
                        530,
                        19
                    ],
                    "text": "sig~ provides that continuous stream.",
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
                    "id": "obj-ann-hear",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        445,
                        500,
                        19
                    ],
                    "text": "This slider controls frequency in Hz. Move it and hear the pitch change in real time."
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
                        280,
                        470,
                        45,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        280,
                        510,
                        40,
                        22
                    ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-ref",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        340,
                        510,
                        350,
                        19
                    ],
                    "text": "cycle~, *~, output chain — see Patches 01-02 for details",
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
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1
                    ],
                    "id": "obj-scope",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        400,
                        460,
                        80,
                        40
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-ann-scope",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        470,
                        460,
                        19
                    ],
                    "text": "Watch: move the slider and see the waveform change. Higher pitch = more cycles on screen."
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
                        280,
                        545,
                        48,
                        100
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-03 Vol",
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
                    "id": "obj-clipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        260,
                        660,
                        88,
                        22
                    ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-clipR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        360,
                        660,
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
                        260,
                        700,
                        188,
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
                        180,
                        685,
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
                        220,
                        130,
                        55,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-msg-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        220,
                        155,
                        35,
                        22
                    ],
                    "text": "185."
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-bridge-sig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        295,
                        430,
                        19
                    ],
                    "text": "sig~ is the bridge between Max and MSP — it converts a number into a continuous signal.",
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
                    "id": "obj-bridge-numtilde",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        530,
                        342,
                        430,
                        19
                    ],
                    "text": "number~ — like a number box but for signals. It samples the audio stream to show you a value.",
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
                    "id": "obj-ann-param-freq",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        260,
                        155,
                        250,
                        19
                    ],
                    "text": "185 = F# below middle C",
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
                    "id": "obj-ann-param-range",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        310,
                        220,
                        200,
                        19
                    ],
                    "text": "Range: 80-400 Hz",
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
                        740,
                        580,
                        19
                    ],
                    "text": "EXPERIMENT: Drag the slider while watching number~ — now disconnect sig~ and type a number directly into cycle~ inlet. What is different?",
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
                    "id": "obj-troubleshoot-03",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        430,
                        445,
                        530,
                        19
                    ],
                    "text": "NO SOUND FROM SLIDER? sig~ must be connected — without it, the number never becomes a signal.",
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
                        765,
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
                        "obj-msg-init",
                        0
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
                        "obj-slider",
                        0
                    ],
                    "source": [
                        "obj-msg-init",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-number",
                        0
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
                        "obj-sig",
                        0
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
                        "obj-numtilde",
                        0
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
                        "obj-cycle",
                        0
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
                        "obj-amp",
                        0
                    ],
                    "source": [
                        "obj-cycle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope",
                        0
                    ],
                    "source": [
                        "obj-cycle",
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
                    "source": [
                        "obj-amp",
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
                    "source": [
                        "obj-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-clipL",
                        0
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
                        "obj-clipR",
                        0
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
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-clipL",
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
                    "source": [
                        "obj-clipR",
                        0
                    ]
                }
            }
        ]
    }
}