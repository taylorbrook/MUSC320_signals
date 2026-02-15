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
            95,
            1100,
            932
        ],
        "description": "07 — Noise Sculpture Rebuild: complete demo reconstruction from all concepts (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20,
                        408,
                        960,
                        260
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
                        20,
                        218,
                        870,
                        185
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
                        230,
                        840,
                        200,
                        380
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
                        500,
                        24
                    ],
                    "text": "07 — Noise Sculpture Rebuild"
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        36,
                        420,
                        19
                    ],
                    "text": "We built everything in the demo — from scratch.",
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
                    "id": "obj-ann1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        540,
                        10,
                        530,
                        18
                    ],
                    "text": "This patch combines everything from Patches 01-06 into the complete noise sculpture.",
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
                    "id": "obj-ann2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        540,
                        28,
                        540,
                        18
                    ],
                    "text": "Compare this patch to the demo: same sound, same objects, different layout. The demo adds Presentation Mode polish.",
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
                    "id": "obj-ann3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        540,
                        46,
                        530,
                        19
                    ],
                    "text": "EXPERIMENT: Open the demo patch side by side — can you hear the same sound? What looks different in the patching?",
                    "textcolor": [
                        0.3,
                        0.65,
                        0.3,
                        1
                    ],
                    "fontface": 1,
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
                    "id": "obj-master-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        68,
                        260,
                        20
                    ],
                    "text": "=== MASTER ON/OFF GATE ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-master",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        300,
                        68,
                        380,
                        18
                    ],
                    "text": "Master level uses toggle -> sel -> line~ envelope (Patch 05 pattern)",
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
                    "id": "obj-tog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        100,
                        93,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-lbl-onoff",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        46,
                        98,
                        54,
                        20
                    ],
                    "text": "ON/OFF"
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
                        100,
                        128,
                        80,
                        22
                    ],
                    "text": "sel 0 1"
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
                        142,
                        157,
                        75,
                        22
                    ],
                    "text": "0, 1. 2000"
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
                        25,
                        150,
                        39,
                        22
                    ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-line-master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        5,
                        191,
                        37,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-phasor-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        225,
                        330,
                        20
                    ],
                    "text": "=== PHASOR~ AUTOMATION (signal domain) ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-phasor",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        380,
                        225,
                        480,
                        18
                    ],
                    "text": "6 ultra-slow phasor~ clocks drive all automation — each cycles at a different rate (Patch 06 concept)",
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
                    "id": "obj-ch1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch1: V1 LFO rate mod",
                    "textcolor": [
                        0.85,
                        0.4,
                        0.3,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ch2-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch2: V1 amplitude",
                    "textcolor": [
                        0.85,
                        0.4,
                        0.3,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ch3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        320,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch3: V2 freq mod",
                    "textcolor": [
                        0.3,
                        0.5,
                        0.85,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ch4-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        460,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch4: V2 amplitude",
                    "textcolor": [
                        0.3,
                        0.5,
                        0.85,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ch5-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        610,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch5: V3 base freq",
                    "textcolor": [
                        0.85,
                        0.75,
                        0.3,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ch6-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        760,
                        242,
                        130,
                        18
                    ],
                    "text": "Ch6: V3 amplitude",
                    "textcolor": [
                        0.85,
                        0.75,
                        0.3,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-ph1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.071"
                }
            },
            {
                "box": {
                    "id": "obj-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        28,
                        316,
                        42,
                        22
                    ],
                    "text": "*~ 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.053"
                }
            },
            {
                "box": {
                    "id": "obj-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc2a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        310,
                        47,
                        22
                    ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-sc2b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        335,
                        43,
                        22
                    ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        320,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.041"
                }
            },
            {
                "box": {
                    "id": "obj-cy3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        320,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        320,
                        310,
                        40,
                        22
                    ],
                    "text": "*~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-ph4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.062"
                }
            },
            {
                "box": {
                    "id": "obj-cy4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc4a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        310,
                        47,
                        22
                    ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-sc4b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        335,
                        43,
                        22
                    ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        610,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.031"
                }
            },
            {
                "box": {
                    "id": "obj-cy5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        610,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc5a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        610,
                        310,
                        40,
                        22
                    ],
                    "text": "*~ 25"
                }
            },
            {
                "box": {
                    "id": "obj-sc5b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        610,
                        335,
                        46,
                        22
                    ],
                    "text": "+~ 110"
                }
            },
            {
                "box": {
                    "id": "obj-ph6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        760,
                        260,
                        86,
                        22
                    ],
                    "text": "phasor~ 0.047"
                }
            },
            {
                "box": {
                    "id": "obj-cy6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        760,
                        285,
                        53,
                        22
                    ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc6a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        760,
                        310,
                        42,
                        22
                    ],
                    "text": "*~ 0.4"
                }
            },
            {
                "box": {
                    "id": "obj-sc6b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        760,
                        335,
                        49,
                        22
                    ],
                    "text": "+~ 0.45"
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
                    "id": "obj-phsc1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        30,
                        365,
                        120,
                        35
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
                    "id": "obj-phsc2",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        170,
                        365,
                        120,
                        35
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
                    "id": "obj-phsc3",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        320,
                        365,
                        120,
                        35
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
                    "id": "obj-phsc4",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        460,
                        365,
                        120,
                        35
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
                    "id": "obj-phsc5",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        610,
                        365,
                        120,
                        35
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
                    "id": "obj-phsc6",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        760,
                        365,
                        120,
                        35
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        415,
                        260,
                        20
                    ],
                    "text": "=== VOICE 1: Rhythmic Noise ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-v1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30,
                        435,
                        329,
                        18
                    ],
                    "text": "Voice 1 uses noise~ (Patch 04) with phasor~ LFO modulation (Patch 06)",
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
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        470,
                        45,
                        22
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        140,
                        440,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-cy",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        140,
                        470,
                        43,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-half",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        140,
                        500,
                        42,
                        22
                    ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-uni",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        140,
                        530,
                        43,
                        22
                    ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        195,
                        500,
                        260,
                        18
                    ],
                    "text": "LFO: cycle~ -> *~ 0.5 -> +~ 0.5 (unipolar 0..1)",
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
                    "id": "obj-v1-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        520,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        568,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        620,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v2-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        415,
                        260,
                        20
                    ],
                    "text": "=== VOICE 2: Tonal AM / Beating ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-v2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        435,
                        349,
                        18
                    ],
                    "text": "Voice 2 uses ring modulation: two detuned cycle~ multiplied (Patches 02, 06)",
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
                    "id": "obj-v2-freqadd",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        370,
                        455,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        370,
                        485,
                        43,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-detune",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        470,
                        35,
                        22
                    ],
                    "text": "+~ 2"
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-detune",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        470,
                        120,
                        18
                    ],
                    "text": "detuned carrier (+2 Hz)",
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
                    "id": "obj-v2-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        460,
                        500,
                        43,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-ring",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        370,
                        530,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        370,
                        560,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        370,
                        590,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650,
                        415,
                        260,
                        20
                    ],
                    "text": "=== VOICE 3: Evolving Drone ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-v3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650,
                        435,
                        356,
                        18
                    ],
                    "text": "Voice 3 uses additive synthesis: two detuned cycle~ summed (Patches 02, 06)",
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
                    "id": "obj-v3-detuneadd",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        730,
                        460,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        660,
                        480,
                        43,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        730,
                        500,
                        43,
                        22
                    ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-partial",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        730,
                        530,
                        42,
                        22
                    ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-partial",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        775,
                        500,
                        170,
                        18
                    ],
                    "text": "detuned partial (slider-controlled)",
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
                    "id": "obj-v3-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        660,
                        560,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        660,
                        590,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        660,
                        620,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-slider-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58,
                        665,
                        260,
                        20
                    ],
                    "text": "=== PERFORMANCE SLIDERS ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-mix",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58,
                        685,
                        538,
                        18
                    ],
                    "text": "The mix slider uses !- 1. — a control-domain trick: one slider controls noise level (direct) and tone+drone level (inverted)",
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
                    "id": "obj-lbl-s1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        37,
                        700,
                        80,
                        18
                    ],
                    "text": "Noise Speed",
                    "textcolor": [
                        0.8,
                        0.8,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-s1",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        37,
                        718,
                        120,
                        20
                    ],
                    "size": 8
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-s2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170,
                        700,
                        80,
                        18
                    ],
                    "text": "Tone Pitch",
                    "textcolor": [
                        0.8,
                        0.8,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-s2",
                    "maxclass": "slider",
                    "min": 80,
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        170,
                        718,
                        120,
                        20
                    ],
                    "size": 320
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-s3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        700,
                        100,
                        18
                    ],
                    "text": "Noise/Tone Mix",
                    "textcolor": [
                        0.8,
                        0.8,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-s3",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        350,
                        718,
                        120,
                        20
                    ],
                    "size": 1
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-lbl-s4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        550,
                        700,
                        90,
                        18
                    ],
                    "text": "Drone Detune",
                    "textcolor": [
                        0.8,
                        0.8,
                        0.8,
                        1
                    ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-s4",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        550,
                        718,
                        120,
                        20
                    ],
                    "size": 10
                }
            },
            {
                "box": {
                    "id": "obj-sig1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        37,
                        756,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        170,
                        756,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        350,
                        756,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-s3inv",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        435,
                        743,
                        35,
                        22
                    ],
                    "text": "!- 1."
                }
            },
            {
                "box": {
                    "id": "obj-sig3b",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        435,
                        768,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        550,
                        756,
                        31,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-num1",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        79,
                        756,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-num2",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        207,
                        756,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-num3",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        350,
                        798,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-num3b",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        435,
                        798,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12,
                    "id": "obj-num4",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        594,
                        756,
                        56,
                        22
                    ],
                    "sig": 0
                }
            },
            {
                "box": {
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        700,
                        718,
                        58,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-lbt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        700,
                        773,
                        134,
                        22
                    ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-lbd1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        700,
                        745,
                        29,
                        22
                    ],
                    "text": "2."
                }
            },
            {
                "box": {
                    "id": "obj-lbd2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        735,
                        745,
                        32,
                        22
                    ],
                    "text": "185."
                }
            },
            {
                "box": {
                    "id": "obj-lbd3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        770,
                        745,
                        29,
                        22
                    ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lbd4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        805,
                        745,
                        29,
                        22
                    ],
                    "text": "3."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-mix-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250,
                        850,
                        220,
                        20
                    ],
                    "text": "=== MIX BUS & OUTPUT STAGE ==="
                }
            },
            {
                "box": {
                    "id": "obj-mix1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        250,
                        875,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-mix2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        250,
                        905,
                        30,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-master-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        250,
                        940,
                        30,
                        22
                    ],
                    "text": "*~"
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
                        250,
                        975,
                        48,
                        136
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-07 Vol",
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
                        250,
                        1125,
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
                        340,
                        1125,
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
                        250,
                        1160,
                        35,
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
                        320,
                        1160,
                        45,
                        45
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-scope-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        850,
                        180,
                        20
                    ],
                    "text": "=== SCOPE DISPLAYS ==="
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-scope-main-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        870,
                        80,
                        18
                    ],
                    "text": "Main output",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
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
                    "id": "obj-scope-main",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        500,
                        888,
                        120,
                        40
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-scope-v1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650,
                        870,
                        80,
                        18
                    ],
                    "text": "V1 Noise",
                    "textcolor": [
                        0.85,
                        0.4,
                        0.3,
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
                    "id": "obj-scope-v1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        650,
                        888,
                        80,
                        40
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-scope-v2-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        750,
                        870,
                        80,
                        18
                    ],
                    "text": "V2 Tone",
                    "textcolor": [
                        0.3,
                        0.5,
                        0.85,
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
                    "id": "obj-scope-v2",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        750,
                        888,
                        80,
                        40
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-scope-v3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        850,
                        870,
                        80,
                        18
                    ],
                    "text": "V3 Drone",
                    "textcolor": [
                        0.85,
                        0.75,
                        0.3,
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
                    "id": "obj-scope-v3",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        850,
                        888,
                        80,
                        40
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "obj-troubleshoot-07",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        940,
                        480,
                        19
                    ],
                    "text": "COMPARE: Open the demo patch in a separate window. Toggle ezdac~ in BOTH — does Patch 07 sound like the demo?",
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
                        1210,
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
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "obj-ann-cross-ref",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        960,
                        480,
                        18
                    ],
                    "text": "All objects here were introduced in Patches 01-06. See those patches for full explanations.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
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
                        259.5,
                        1149,
                        259.5,
                        1149
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
                    "midpoints": [
                        349.5,
                        1149,
                        276,
                        1149,
                        276,
                        1155,
                        275.5,
                        1155
                    ],
                    "source": [
                        "obj-clipR",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc1",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        309,
                        15,
                        309,
                        15,
                        351,
                        39.5,
                        351
                    ],
                    "order": 0,
                    "source": [
                        "obj-cy1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc1",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        309,
                        37.5,
                        309
                    ],
                    "order": 1,
                    "source": [
                        "obj-cy1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc2a",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        309,
                        179.5,
                        309
                    ],
                    "source": [
                        "obj-cy2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc3",
                        0
                    ],
                    "midpoints": [
                        329.5,
                        309,
                        306,
                        309,
                        306,
                        351,
                        329.5,
                        351
                    ],
                    "order": 0,
                    "source": [
                        "obj-cy3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc3",
                        0
                    ],
                    "midpoints": [
                        329.5,
                        309,
                        329.5,
                        309
                    ],
                    "order": 1,
                    "source": [
                        "obj-cy3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc4a",
                        0
                    ],
                    "midpoints": [
                        469.5,
                        309,
                        469.5,
                        309
                    ],
                    "source": [
                        "obj-cy4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc5",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        309,
                        597,
                        309,
                        597,
                        360,
                        619.5,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "obj-cy5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc5a",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        309,
                        619.5,
                        309
                    ],
                    "order": 1,
                    "source": [
                        "obj-cy5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc6a",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        309,
                        769.5,
                        309
                    ],
                    "source": [
                        "obj-cy6",
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
                    "midpoints": [
                        259.5,
                        1113,
                        259.5,
                        1113
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
                    "midpoints": [
                        266.75,
                        1119,
                        349.5,
                        1119
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
                        "obj-lbt",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        741,
                        696,
                        741,
                        696,
                        768,
                        709.5,
                        768
                    ],
                    "source": [
                        "obj-lb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-s1",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        768,
                        660,
                        768,
                        660,
                        831,
                        24,
                        831,
                        24,
                        714,
                        46.5,
                        714
                    ],
                    "source": [
                        "obj-lbd1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-s2",
                        0
                    ],
                    "midpoints": [
                        744.5,
                        768,
                        660,
                        768,
                        660,
                        831,
                        156,
                        831,
                        156,
                        738,
                        165,
                        738,
                        165,
                        714,
                        179.5,
                        714
                    ],
                    "source": [
                        "obj-lbd2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-s3",
                        0
                    ],
                    "midpoints": [
                        779.5,
                        768,
                        660,
                        768,
                        660,
                        831,
                        336,
                        831,
                        336,
                        714,
                        359.5,
                        714
                    ],
                    "source": [
                        "obj-lbd3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-s4",
                        0
                    ],
                    "midpoints": [
                        814.5,
                        768,
                        660,
                        768,
                        660,
                        789,
                        537,
                        789,
                        537,
                        714,
                        559.5,
                        714
                    ],
                    "source": [
                        "obj-lbd4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lbd1",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        798,
                        687,
                        798,
                        687,
                        741,
                        709.5,
                        741
                    ],
                    "source": [
                        "obj-lbt",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lbd2",
                        0
                    ],
                    "midpoints": [
                        747.8333333333334,
                        807,
                        687,
                        807,
                        687,
                        741,
                        744.5,
                        741
                    ],
                    "source": [
                        "obj-lbt",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lbd3",
                        0
                    ],
                    "midpoints": [
                        786.1666666666666,
                        807,
                        846,
                        807,
                        846,
                        732,
                        779.5,
                        732
                    ],
                    "source": [
                        "obj-lbt",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lbd4",
                        0
                    ],
                    "midpoints": [
                        824.5,
                        798,
                        846,
                        798,
                        846,
                        732,
                        814.5,
                        732
                    ],
                    "source": [
                        "obj-lbt",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-master-mul",
                        1
                    ],
                    "midpoints": [
                        14.5,
                        936,
                        270.5,
                        936
                    ],
                    "source": [
                        "obj-line-master",
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
                        259.5,
                        969,
                        288.5,
                        969
                    ],
                    "order": 0,
                    "source": [
                        "obj-master-mul",
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
                        259.5,
                        963,
                        259.5,
                        963
                    ],
                    "order": 1,
                    "source": [
                        "obj-master-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mix2",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        900,
                        259.5,
                        900
                    ],
                    "source": [
                        "obj-mix1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-master-mul",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        930,
                        259.5,
                        930
                    ],
                    "order": 1,
                    "source": [
                        "obj-mix2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-main",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        930,
                        486,
                        930,
                        486,
                        885,
                        509.5,
                        885
                    ],
                    "order": 0,
                    "source": [
                        "obj-mix2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-line-master",
                        0
                    ],
                    "midpoints": [
                        34.5,
                        174,
                        14.5,
                        174
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
                        "obj-line-master",
                        0
                    ],
                    "midpoints": [
                        151.5,
                        189,
                        42,
                        189,
                        42,
                        186,
                        14.5,
                        186
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
                        "obj-v1-gate",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        495,
                        39.5,
                        495
                    ],
                    "source": [
                        "obj-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy1",
                        1
                    ],
                    "midpoints": [
                        39.5,
                        282,
                        73.5,
                        282
                    ],
                    "source": [
                        "obj-ph1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy2",
                        1
                    ],
                    "midpoints": [
                        179.5,
                        282,
                        213.5,
                        282
                    ],
                    "source": [
                        "obj-ph2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy3",
                        1
                    ],
                    "midpoints": [
                        329.5,
                        282,
                        363.5,
                        282
                    ],
                    "source": [
                        "obj-ph3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy4",
                        1
                    ],
                    "midpoints": [
                        469.5,
                        282,
                        503.5,
                        282
                    ],
                    "source": [
                        "obj-ph4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy5",
                        1
                    ],
                    "midpoints": [
                        619.5,
                        282,
                        653.5,
                        282
                    ],
                    "source": [
                        "obj-ph5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-cy6",
                        1
                    ],
                    "midpoints": [
                        769.5,
                        282,
                        803.5,
                        282
                    ],
                    "source": [
                        "obj-ph6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig1",
                        0
                    ],
                    "midpoints": [
                        46.5,
                        741,
                        46.5,
                        741
                    ],
                    "source": [
                        "obj-s1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig2",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        741,
                        179.5,
                        741
                    ],
                    "source": [
                        "obj-s2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-s3inv",
                        0
                    ],
                    "midpoints": [
                        359.5,
                        741,
                        432,
                        741,
                        432,
                        738,
                        444.5,
                        738
                    ],
                    "order": 0,
                    "source": [
                        "obj-s3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig3",
                        0
                    ],
                    "midpoints": [
                        359.5,
                        741,
                        359.5,
                        741
                    ],
                    "order": 1,
                    "source": [
                        "obj-s3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig3b",
                        0
                    ],
                    "midpoints": [
                        444.5,
                        768,
                        444.5,
                        768
                    ],
                    "source": [
                        "obj-s3inv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sig4",
                        0
                    ],
                    "midpoints": [
                        559.5,
                        741,
                        559.5,
                        741
                    ],
                    "source": [
                        "obj-s4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-lfo-add",
                        1
                    ],
                    "midpoints": [
                        37.5,
                        351,
                        160.5,
                        351
                    ],
                    "source": [
                        "obj-sc1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc2b",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        333,
                        179.5,
                        333
                    ],
                    "source": [
                        "obj-sc2a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc2",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        360,
                        179.5,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "obj-sc2b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-amp",
                        1
                    ],
                    "midpoints": [
                        179.5,
                        360,
                        15,
                        360,
                        15,
                        555,
                        50.5,
                        555
                    ],
                    "order": 1,
                    "source": [
                        "obj-sc2b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-freqadd",
                        1
                    ],
                    "midpoints": [
                        329.5,
                        351,
                        213,
                        351,
                        213,
                        357,
                        156,
                        357,
                        156,
                        351,
                        15,
                        351,
                        15,
                        465,
                        357,
                        465,
                        357,
                        477,
                        402,
                        477,
                        402,
                        453,
                        390.5,
                        453
                    ],
                    "source": [
                        "obj-sc3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc4b",
                        0
                    ],
                    "midpoints": [
                        469.5,
                        333,
                        469.5,
                        333
                    ],
                    "source": [
                        "obj-sc4a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc4",
                        0
                    ],
                    "midpoints": [
                        469.5,
                        360,
                        469.5,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "obj-sc4b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-amp",
                        1
                    ],
                    "midpoints": [
                        469.5,
                        360,
                        390,
                        360,
                        390,
                        351,
                        213,
                        351,
                        213,
                        357,
                        156,
                        357,
                        156,
                        351,
                        15,
                        351,
                        15,
                        555,
                        126,
                        555,
                        126,
                        564,
                        357,
                        564,
                        357,
                        555,
                        390.5,
                        555
                    ],
                    "order": 1,
                    "source": [
                        "obj-sc4b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc5b",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        333,
                        619.5,
                        333
                    ],
                    "source": [
                        "obj-sc5a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-cy1",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        360,
                        669,
                        360,
                        669,
                        351,
                        747,
                        351,
                        747,
                        357,
                        819,
                        357,
                        819,
                        351,
                        1017,
                        351,
                        1017,
                        483,
                        714,
                        483,
                        714,
                        465,
                        669.5,
                        465
                    ],
                    "order": 1,
                    "source": [
                        "obj-sc5b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-detuneadd",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        360,
                        819,
                        360,
                        819,
                        351,
                        1017,
                        351,
                        1017,
                        465,
                        762,
                        465,
                        762,
                        456,
                        739.5,
                        456
                    ],
                    "order": 0,
                    "source": [
                        "obj-sc5b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc6b",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        333,
                        769.5,
                        333
                    ],
                    "source": [
                        "obj-sc6a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-phsc6",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        360,
                        769.5,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "obj-sc6b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-amp",
                        1
                    ],
                    "midpoints": [
                        769.5,
                        360,
                        819,
                        360,
                        819,
                        351,
                        1017,
                        351,
                        1017,
                        585,
                        680.5,
                        585
                    ],
                    "order": 1,
                    "source": [
                        "obj-sc6b",
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
                    "midpoints": [
                        109.5,
                        153,
                        75,
                        153,
                        75,
                        135,
                        34.5,
                        135
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
                    "midpoints": [
                        140,
                        153,
                        151.5,
                        153
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
                        "obj-num1",
                        0
                    ],
                    "midpoints": [
                        46.5,
                        780,
                        75,
                        780,
                        75,
                        753,
                        88.5,
                        753
                    ],
                    "order": 1,
                    "source": [
                        "obj-sig1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-lfo-add",
                        0
                    ],
                    "midpoints": [
                        46.5,
                        780,
                        15,
                        780,
                        15,
                        411,
                        149.5,
                        411
                    ],
                    "order": 0,
                    "source": [
                        "obj-sig1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-num2",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        780,
                        204,
                        780,
                        204,
                        753,
                        216.5,
                        753
                    ],
                    "order": 1,
                    "source": [
                        "obj-sig2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-freqadd",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        789,
                        15,
                        789,
                        15,
                        600,
                        195,
                        600,
                        195,
                        519,
                        192,
                        519,
                        192,
                        486,
                        357,
                        486,
                        357,
                        453,
                        379.5,
                        453
                    ],
                    "order": 0,
                    "source": [
                        "obj-sig2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-num3",
                        0
                    ],
                    "midpoints": [
                        359.5,
                        780,
                        359.5,
                        780
                    ],
                    "order": 0,
                    "source": [
                        "obj-sig3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-mix",
                        1
                    ],
                    "midpoints": [
                        359.5,
                        780,
                        273,
                        780,
                        273,
                        789,
                        15,
                        789,
                        15,
                        606,
                        50.5,
                        606
                    ],
                    "order": 1,
                    "source": [
                        "obj-sig3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-num3b",
                        0
                    ],
                    "midpoints": [
                        444.5,
                        792,
                        444.5,
                        792
                    ],
                    "order": 1,
                    "source": [
                        "obj-sig3b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-mix",
                        1
                    ],
                    "midpoints": [
                        444.5,
                        792,
                        681,
                        792,
                        681,
                        654,
                        411,
                        654,
                        411,
                        585,
                        390.5,
                        585
                    ],
                    "order": 2,
                    "source": [
                        "obj-sig3b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-mix",
                        1
                    ],
                    "midpoints": [
                        444.5,
                        792,
                        687,
                        792,
                        687,
                        654,
                        702,
                        654,
                        702,
                        615,
                        680.5,
                        615
                    ],
                    "order": 0,
                    "source": [
                        "obj-sig3b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-num4",
                        0
                    ],
                    "midpoints": [
                        559.5,
                        780,
                        591,
                        780,
                        591,
                        753,
                        603.5,
                        753
                    ],
                    "order": 1,
                    "source": [
                        "obj-sig4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-detuneadd",
                        1
                    ],
                    "midpoints": [
                        559.5,
                        789,
                        687,
                        789,
                        687,
                        654,
                        717,
                        654,
                        717,
                        456,
                        750.5,
                        456
                    ],
                    "order": 0,
                    "source": [
                        "obj-sig4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sel",
                        0
                    ],
                    "midpoints": [
                        109.5,
                        126,
                        109.5,
                        126
                    ],
                    "source": [
                        "obj-tog",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-v1",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        606,
                        15,
                        606,
                        15,
                        837,
                        486,
                        837,
                        486,
                        939,
                        636,
                        939,
                        636,
                        885,
                        659.5,
                        885
                    ],
                    "order": 0,
                    "source": [
                        "obj-v1-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-mix",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        591,
                        39.5,
                        591
                    ],
                    "order": 1,
                    "source": [
                        "obj-v1-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-amp",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        543,
                        39.5,
                        543
                    ],
                    "source": [
                        "obj-v1-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-lfo-cy",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        465,
                        149.5,
                        465
                    ],
                    "source": [
                        "obj-v1-lfo-add",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-lfo-half",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        495,
                        149.5,
                        495
                    ],
                    "source": [
                        "obj-v1-lfo-cy",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-lfo-uni",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        525,
                        149.5,
                        525
                    ],
                    "source": [
                        "obj-v1-lfo-half",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v1-gate",
                        1
                    ],
                    "midpoints": [
                        149.5,
                        555,
                        72,
                        555,
                        72,
                        516,
                        50.5,
                        516
                    ],
                    "source": [
                        "obj-v1-lfo-uni",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mix1",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        687,
                        24,
                        687,
                        24,
                        870,
                        259.5,
                        870
                    ],
                    "source": [
                        "obj-v1-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-v2",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        585,
                        645,
                        585,
                        645,
                        687,
                        687,
                        687,
                        687,
                        837,
                        747,
                        837,
                        747,
                        885,
                        759.5,
                        885
                    ],
                    "order": 0,
                    "source": [
                        "obj-v2-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-mix",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        585,
                        379.5,
                        585
                    ],
                    "order": 1,
                    "source": [
                        "obj-v2-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-ring",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        510,
                        379.5,
                        510
                    ],
                    "source": [
                        "obj-v2-cy1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-ring",
                        1
                    ],
                    "midpoints": [
                        469.5,
                        534,
                        411,
                        534,
                        411,
                        525,
                        390.5,
                        525
                    ],
                    "source": [
                        "obj-v2-cy2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-cy2",
                        0
                    ],
                    "midpoints": [
                        469.5,
                        495,
                        469.5,
                        495
                    ],
                    "source": [
                        "obj-v2-detune",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-cy1",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        480,
                        379.5,
                        480
                    ],
                    "order": 1,
                    "source": [
                        "obj-v2-freqadd",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-detune",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        480,
                        447,
                        480,
                        447,
                        465,
                        469.5,
                        465
                    ],
                    "order": 0,
                    "source": [
                        "obj-v2-freqadd",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mix1",
                        1
                    ],
                    "midpoints": [
                        379.5,
                        651,
                        45,
                        651,
                        45,
                        687,
                        24,
                        687,
                        24,
                        870,
                        270.5,
                        870
                    ],
                    "source": [
                        "obj-v2-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v2-amp",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        555,
                        379.5,
                        555
                    ],
                    "source": [
                        "obj-v2-ring",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope-v3",
                        0
                    ],
                    "midpoints": [
                        669.5,
                        615,
                        846,
                        615,
                        846,
                        885,
                        859.5,
                        885
                    ],
                    "order": 0,
                    "source": [
                        "obj-v3-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-mix",
                        0
                    ],
                    "midpoints": [
                        669.5,
                        615,
                        669.5,
                        615
                    ],
                    "order": 1,
                    "source": [
                        "obj-v3-amp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-sum",
                        0
                    ],
                    "midpoints": [
                        669.5,
                        504,
                        669.5,
                        504
                    ],
                    "source": [
                        "obj-v3-cy1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-partial",
                        0
                    ],
                    "midpoints": [
                        739.5,
                        525,
                        739.5,
                        525
                    ],
                    "source": [
                        "obj-v3-cy2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-cy2",
                        0
                    ],
                    "midpoints": [
                        739.5,
                        483,
                        739.5,
                        483
                    ],
                    "source": [
                        "obj-v3-detuneadd",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mix2",
                        1
                    ],
                    "midpoints": [
                        669.5,
                        705,
                        681,
                        705,
                        681,
                        837,
                        480,
                        837,
                        480,
                        900,
                        270.5,
                        900
                    ],
                    "source": [
                        "obj-v3-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-sum",
                        1
                    ],
                    "midpoints": [
                        739.5,
                        555,
                        680.5,
                        555
                    ],
                    "source": [
                        "obj-v3-partial",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-v3-amp",
                        0
                    ],
                    "midpoints": [
                        669.5,
                        585,
                        669.5,
                        585
                    ],
                    "source": [
                        "obj-v3-sum",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [
                "Build-07 Vol",
                "Vol",
                0
            ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}