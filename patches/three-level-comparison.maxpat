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
            100.0,
            100.0,
            780.0,
            620.0
        ],
        "description": "Three Levels of Processing in Max: control rate (metro) vs signal rate (phasor~) vs sample rate (gen~)",
        "boxes": [
            {
                "box": {
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1.0
                    ],
                    "id": "obj-2",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        387.0,
                        158.0,
                        103.0,
                        56.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        551.0,
                        114.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        180.0,
                        15.0,
                        420.0,
                        27.0
                    ],
                    "text": "Three Levels of Processing in Max"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col1-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        55.0,
                        190.0,
                        22.0
                    ],
                    "text": "CONTROL RATE",
                    "textcolor": [
                        0.9,
                        0.4,
                        0.1,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col1-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        77.0,
                        200.0,
                        19.0
                    ],
                    "text": "~1,000 updates/sec (scheduler rate)"
                }
            },
            {
                "box": {
                    "id": "obj-toggle1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        70.0,
                        105.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        70.0,
                        140.0,
                        72.0,
                        22.0
                    ],
                    "text": "metro 500"
                }
            },
            {
                "box": {
                    "id": "obj-counter",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "",
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        70.0,
                        175.0,
                        88.0,
                        22.0
                    ],
                    "text": "counter 0 100"
                }
            },
            {
                "box": {
                    "id": "obj-num1",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        70.0,
                        210.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-multislider1",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        250.0,
                        190.0,
                        90.0
                    ],
                    "setminmax": [
                        0.0,
                        100.0
                    ],
                    "size": 100,
                    "slidercolor": [
                        0.9,
                        0.4,
                        0.1,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col1-ann1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        350.0,
                        200.0,
                        18.0
                    ],
                    "text": "metro fires individual messages --",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col1-ann2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        365.0,
                        200.0,
                        18.0
                    ],
                    "text": "you see discrete jumps (staircase).",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col2-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        55.0,
                        200.0,
                        22.0
                    ],
                    "text": "SIGNAL RATE (MSP)",
                    "textcolor": [
                        0.2,
                        0.5,
                        0.85,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col2-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        77.0,
                        210.0,
                        19.0
                    ],
                    "text": "44,100 samples/sec (audio vectors)"
                }
            },
            {
                "box": {
                    "id": "obj-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        270.0,
                        115.0,
                        72.0,
                        22.0
                    ],
                    "text": "phasor~ 2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-numtilde2",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        310.0,
                        195.0,
                        65.0,
                        22.0
                    ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1.0
                    ],
                    "id": "obj-scope2",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        270.0,
                        250.0,
                        190.0,
                        90.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col2-ann1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        350.0,
                        200.0,
                        18.0
                    ],
                    "text": "phasor~ generates 44,100 values/sec --",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col2-ann2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        365.0,
                        200.0,
                        18.0
                    ],
                    "text": "smooth and continuous ramp.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col3-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        55.0,
                        220.0,
                        22.0
                    ],
                    "text": "SAMPLE RATE (gen~)",
                    "textcolor": [
                        0.55,
                        0.27,
                        0.68,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col3-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        77.0,
                        220.0,
                        19.0
                    ],
                    "text": "44,100 samples/sec (per-sample)"
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            868.0,
                            313.0,
                            450.0,
                            350.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        47.0,
                                        28.0,
                                        22.0
                                    ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen-accum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        92.0,
                                        85.0,
                                        22.0
                                    ],
                                    "text": "counter 24000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen-out1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        133.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-gen-accum",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-gen-out1",
                                        0
                                    ],
                                    "source": [
                                        "obj-gen-accum",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        555.0,
                        155.0,
                        36.0,
                        22.0
                    ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-numtilde3",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        555.0,
                        195.0,
                        65.0,
                        22.0
                    ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.1,
                        0.1,
                        0.12,
                        1.0
                    ],
                    "id": "obj-scope3",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        510.0,
                        250.0,
                        190.0,
                        90.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col3-ann1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        350.0,
                        210.0,
                        18.0
                    ],
                    "text": "gen~ sees every single sample --",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-col3-ann2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        365.0,
                        210.0,
                        18.0
                    ],
                    "text": "the most granular level of processing.",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        350.0,
                        450.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-left",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        400.0,
                        220.0,
                        18.0
                    ],
                    "text": "LEFT: Max scheduler sends messages at",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-left2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        415.0,
                        220.0,
                        18.0
                    ],
                    "text": "low rate (~once per millisecond).",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-center",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        400.0,
                        220.0,
                        18.0
                    ],
                    "text": "CENTER: MSP processes audio in vectors",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-center2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        415.0,
                        220.0,
                        18.0
                    ],
                    "text": "of 64 samples.",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-right",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        400.0,
                        220.0,
                        18.0
                    ],
                    "text": "RIGHT: gen~ processes one sample at",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-right2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        415.0,
                        220.0,
                        18.0
                    ],
                    "text": "a time (compiled to native code).",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-today",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170.0,
                        510.0,
                        430.0,
                        18.0
                    ],
                    "text": "Today we're learning MSP (center column). gen~ is a preview of what's deeper.",
                    "textcolor": [
                        0.4,
                        0.4,
                        0.8,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-dsp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        300.0,
                        497.0,
                        150.0,
                        18.0
                    ],
                    "text": "Click to start DSP",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col1-exp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        440.0,
                        210.0,
                        18.0
                    ],
                    "text": "CONTROL RATE: metro sends bangs at",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col1-exp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        455.0,
                        210.0,
                        18.0
                    ],
                    "text": "message rate -- one value per bang,",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col1-exp3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        470.0,
                        210.0,
                        18.0
                    ],
                    "text": "like a dripping faucet.",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col2-exp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        440.0,
                        210.0,
                        18.0
                    ],
                    "text": "SIGNAL RATE: phasor~ generates a",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col2-exp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        455.0,
                        210.0,
                        18.0
                    ],
                    "text": "continuous ramp -- 44,100 values",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col2-exp3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        470.0,
                        210.0,
                        18.0
                    ],
                    "text": "per second, smooth flow.",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col3-exp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        440.0,
                        220.0,
                        18.0
                    ],
                    "text": "SAMPLE RATE: gen~ counter increments",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col3-exp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        455.0,
                        220.0,
                        18.0
                    ],
                    "text": "every single sample -- the fastest",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-col3-exp3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        470.0,
                        220.0,
                        18.0
                    ],
                    "text": "possible rate in Max.",
                    "textcolor": [
                        0.7,
                        0.7,
                        0.7,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-toggle-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        96.0,
                        110.0,
                        60.0,
                        18.0
                    ],
                    "text": "on/off",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-metro-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        144.0,
                        140.0,
                        80.0,
                        18.0
                    ],
                    "text": "every 500ms",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-counter-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        160.0,
                        175.0,
                        70.0,
                        18.0
                    ],
                    "text": "counts 0-100",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-phasor-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        344.0,
                        115.0,
                        45.0,
                        18.0
                    ],
                    "text": "2 Hz",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-gen-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        593.0,
                        155.0,
                        100.0,
                        18.0
                    ],
                    "text": "per-sample code",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-ezdac-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        397.0,
                        460.0,
                        70.0,
                        18.0
                    ],
                    "text": "DSP on/off",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-toggle3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        577.0,
                        114.0,
                        85.0,
                        18.0
                    ],
                    "text": "reset trigger",
                    "textcolor": [
                        0.5,
                        0.5,
                        0.5,
                        1.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-multislider1",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-counter",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-num1",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-counter",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-numtilde3",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope3",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-counter",
                        0
                    ],
                    "source": [
                        "obj-metro",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-phasor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-numtilde2",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-phasor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scope2",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-phasor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-metro",
                        0
                    ],
                    "source": [
                        "obj-toggle1",
                        0
                    ]
                }
            }
        ],
        "autosave": 0
    }
}