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
            900,
            750
        ],
        "description": "05 — Envelopes: line~ and *~ create amplitude envelopes (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15,
                        55,
                        340,
                        75
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
                        110,
                        155,
                        180,
                        270
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
                        15,
                        485,
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
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1
                    ],
                    "id": "obj-6",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        160,
                        102,
                        180,
                        60
                    ]
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
                        350,
                        24
                    ],
                    "text": "05 — Envelopes"
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
                    "text": "How do I shape sound over time?"
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
                        350,
                        62,
                        583,
                        19
                    ],
                    "text": "line~ is the signal version of line — smooth ramps at audio rate instead of message rate.",
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
                    "id": "obj-c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        82,
                        520,
                        19
                    ],
                    "text": "0, 1. 500 -- start at 0 (silence), then ramp to 1.0 over 500 milliseconds (fade in)",
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
                        350,
                        102,
                        520,
                        19
                    ],
                    "text": "0 100 -- ramp to 0 over 100 milliseconds (fade out, faster than the fade in)",
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
                        350,
                        128,
                        546,
                        19
                    ],
                    "text": "Multiplying the tone by line~'s output is like turning a volume knob: 0 = silent, 1 = full volume, 0.5 = half volume",
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
                        148,
                        530,
                        19
                    ],
                    "text": "This is an AMPLITUDE ENVELOPE -- it shapes the volume of a sound over time.",
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
                    "id": "obj-c5b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        168,
                        530,
                        19
                    ],
                    "text": "Every real instrument has one (pluck = fast attack, slow decay; bowed = slow attack, sustained)",
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
                    "id": "obj-c6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        198,
                        530,
                        19
                    ],
                    "text": "EXPERIMENT: Change the fade-in from 500 to 2000 — how does a 2-second fade feel? Now try 50 for a percussive click.",
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
                    "id": "obj-c7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        228,
                        530,
                        19
                    ],
                    "text": "sel 0 1 -- routes toggle output: 0 (off) triggers the fade-out message, 1 (on) triggers the fade-in message",
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
                    "id": "obj-c8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        248,
                        530,
                        19
                    ],
                    "text": "toggle -> sel 0 1 is a control-domain pattern you know from Max. line~ is the new signal-domain part.",
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
                    "id": "obj-c9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        280,
                        400,
                        19
                    ],
                    "text": "Reference: cycle~, *~, output chain -- see Patches 01-02 for details",
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
                    "id": "obj-c-comma",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        420,
                        290,
                        19
                    ],
                    "text": "The comma separates: immediate-set (0)",
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
                    "id": "obj-c-comma2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        438,
                        290,
                        19
                    ],
                    "text": "from the ramp target-time pair (1. 500)",
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
                    "id": "obj-lbl-source",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        62,
                        200,
                        20
                    ],
                    "text": "Sound source"
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
                        30,
                        88,
                        66,
                        22
                    ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12,
                    "id": "obj-lbl-toggle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        160,
                        167.5,
                        80,
                        20
                    ],
                    "text": "ON / OFF"
                }
            },
            {
                "box": {
                    "id": "obj-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        160,
                        195,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        160,
                        240,
                        60,
                        22
                    ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-msg-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        160,
                        275,
                        42,
                        22
                    ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-msg-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        210,
                        275,
                        57,
                        22
                    ],
                    "text": "0, 1. 500"
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-fadeout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        125,
                        300,
                        72,
                        18
                    ],
                    "text": "fade out (fast)",
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
                    "fontsize": 10,
                    "id": "obj-lbl-fadein",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        210,
                        300,
                        70,
                        18
                    ],
                    "text": "fade in (slow)",
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
                    "id": "obj-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        160,
                        335,
                        37,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-mult",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        395,
                        32,
                        22
                    ],
                    "text": "*~"
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
                    "id": "obj-scope-env",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        350,
                        335,
                        180,
                        60
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-scope-env",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        397,
                        180,
                        18
                    ],
                    "text": "line~ output (envelope shape)",
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
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1
                    ],
                    "id": "obj-scope-tone",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        350,
                        425,
                        180,
                        60
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-scope-tone",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        487,
                        180,
                        18
                    ],
                    "text": "*~ output (shaped tone)",
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
                        30,
                        500,
                        48,
                        136
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-05 Vol",
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
                        30,
                        650,
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
                        140,
                        650,
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
                        30,
                        680,
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
                        250,
                        650,
                        45,
                        45
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
                        350,
                        310,
                        530,
                        19
                    ],
                    "text": "EXPERIMENT: Disconnect line~ from *~ and connect a sig~ with value 0.5 instead — what happens to the envelope?",
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
                    "id": "obj-troubleshoot-05",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250,
                        210,
                        450,
                        19
                    ],
                    "text": "IF YOU HEAR NOTHING: Toggle must be ON (yellow). Make sure ezdac~ is also on.",
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
                    "fontsize": 11,
                    "id": "obj-ann-param-fadein",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        275,
                        275,
                        330,
                        19
                    ],
                    "text": "0, 1. 500 = ramp from 0 to 1.0 over 500ms (fade in)",
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
                    "id": "obj-ann-param-fadeout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        100,
                        300,
                        260,
                        19
                    ],
                    "text": "0 100 = snap to 0 over 100ms (fade out)",
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
                    "fontsize": 10,
                    "id": "obj-color-legend",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        720,
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
                    "source": [
                        "obj-clip-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mult",
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
                        "obj-clip-l",
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
                        "obj-clip-r",
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
                        "obj-mult",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-env",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-line",
                        0
                    ],
                    "source": [
                        "obj-msg-off",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-line",
                        0
                    ],
                    "source": [
                        "obj-msg-on",
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
                    "order": 1,
                    "source": [
                        "obj-mult",
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
                    "order": 2,
                    "source": [
                        "obj-mult",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-tone",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-mult",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-msg-off",
                        0
                    ],
                    "source": [
                        "obj-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-msg-on",
                        0
                    ],
                    "source": [
                        "obj-sel",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sel",
                        0
                    ],
                    "source": [
                        "obj-toggle",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [
                "Build-05 Vol",
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