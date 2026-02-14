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
        "rect": [ 134.0, 167.0, 1200.0, 900.0 ],
        "openinpresentation": 1,
        "description": "Noise Sculpture — 3-voice evolving synthesis with phasor~-driven modulation (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "bgcolor": [ 0.15, 0.15, 0.17, 1.0 ],
                    "id": "obj-p1",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 10.0, 200.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 175.0, 500.0, 330.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 35.0, 220.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 155.0, 480.0, 29.0 ],
                    "text": "NOISE SCULPTURE",
                    "textcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 60.0, 80.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 15.0, 120.0, 19.0 ],
                    "text": "Noise Speed",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 80.0, 80.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 250.0, 15.0, 120.0, 19.0 ],
                    "text": "Tone Pitch",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 100.0, 100.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 390.0, 15.0, 120.0, 19.0 ],
                    "text": "Noise/Tone Mix",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 120.0, 90.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 80.0, 120.0, 19.0 ],
                    "text": "Drone Detune",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-main",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 140.0, 60.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 215.0, 100.0, 18.0 ],
                    "text": "Output",
                    "textcolor": [ 0.7, 0.7, 0.7, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-v1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 160.0, 50.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 385.0, 140.0, 18.0 ],
                    "text": "Noise",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-v2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 180.0, 50.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.0, 385.0, 140.0, 18.0 ],
                    "text": "Tone",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-v3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 200.0, 50.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 385.0, 140.0, 18.0 ],
                    "text": "Drone",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-vol",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1050.0, 220.0, 50.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 550.0, 35.0, 48.0, 18.0 ],
                    "text": "Volume",
                    "textcolor": [ 0.7, 0.7, 0.7, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 10.0, 420.0, 24.0 ],
                    "text": "NOISE SCULPTURE — MUSC 320 Week 7 Demo"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 40.0, 260.0, 20.0 ],
                    "text": "=== MASTER ON/OFF GATE ==="
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 100.0, 65.0, 30.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 30.0, 50.0, 50.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 100.0, 105.0, 80.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 135.0, 75.0, 22.0 ],
                    "text": "0, 1. 2000"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 135.0, 63.0, 22.0 ],
                    "text": "0, 0 100"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 100.0, 160.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 60.0, 72.0, 54.0, 20.0 ],
                    "text": "ON/OFF"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 880.0, 40.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 880.0, 70.0, 180.0, 22.0 ],
                    "text": "t b b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 880.0, 100.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 100.0, 29.5, 22.0 ],
                    "text": "30"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 955.0, 100.0, 29.5, 22.0 ],
                    "text": "42"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 990.0, 100.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1025.0, 100.0, 29.5, 22.0 ],
                    "text": "38"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 880.0, 130.0, 232.0, 20.0 ],
                    "text": "=== SLIDER DEFAULTS (loadbang) ==="
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 195.0, 330.0, 20.0 ],
                    "text": "=== PHASOR~ AUTOMATION (signal domain) ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch1: V1 LFO rate mod",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch2: V1 amplitude",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.071"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 280.0, 42.0, 22.0 ],
                    "text": "*~ 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.053"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 280.0, 46.0, 22.0 ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 305.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-27a",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch3: V2 freq mod",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-27b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 460.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch4: V2 amplitude",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.041"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 280.0, 40.0, 22.0 ],
                    "text": "*~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.062"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 280.0, 46.0, 22.0 ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-34a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 305.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-34b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 610.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch5: V3 base freq",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-34c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 212.0, 130.0, 18.0 ],
                    "text": "Ch6: V3 amplitude",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.031"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 280.0, 40.0, 22.0 ],
                    "text": "*~ 25"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 305.0, 46.0, 22.0 ],
                    "text": "+~ 110"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 230.0, 85.0, 22.0 ],
                    "text": "phasor~ 0.047"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 255.0, 50.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 280.0, 42.0, 22.0 ],
                    "text": "*~ 0.4"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 305.0, 46.0, 22.0 ],
                    "text": "+~ 0.45"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 345.0, 203.0, 20.0 ],
                    "text": "=== VOICE 1: Rhythmic Noise ==="
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 400.0, 45.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 370.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 400.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 430.0, 42.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 460.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 490.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 520.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 550.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 195.0, 430.0, 260.0, 18.0 ],
                    "text": "LFO: cycle~ -> *~ 0.5 -> +~ 0.5 (unipolar 0..1)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 345.0, 220.0, 20.0 ],
                    "text": "=== VOICE 2: Tonal AM / Beating ==="
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 370.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 400.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 390.0, 35.0, 22.0 ],
                    "text": "+~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 420.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 450.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 480.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 510.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 390.0, 120.0, 18.0 ],
                    "text": "detuned carrier (+2 Hz)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 345.0, 200.0, 20.0 ],
                    "text": "=== VOICE 3: Evolving Drone ==="
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 390.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 400.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 420.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 450.0, 42.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 480.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 510.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 540.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 420.0, 170.0, 18.0 ],
                    "text": "detuned partial (slider-controlled)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 590.0, 207.0, 20.0 ],
                    "text": "=== PERFORMANCE SLIDERS ==="
                }
            },
            {
                "box": {
                    "id": "obj-s1",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 615.0, 120.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 35.0, 120.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-s1a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 30.0, 640.0, 42.0, 22.0 ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-s1b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 30.0, 665.0, 38.0, 22.0 ],
                    "text": "* 7.9"
                }
            },
            {
                "box": {
                    "id": "obj-s1c",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 30.0, 690.0, 38.0, 22.0 ],
                    "text": "+ 0.1"
                }
            },
            {
                "box": {
                    "id": "obj-s1d",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 715.0, 66.0, 22.0 ],
                    "text": "pack 0. 50"
                }
            },
            {
                "box": {
                    "id": "obj-s1e",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 30.0, 740.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-s2",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 170.0, 615.0, 120.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 250.0, 35.0, 120.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-s2a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 170.0, 640.0, 42.0, 22.0 ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-s2b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 170.0, 665.0, 44.0, 22.0 ],
                    "text": "* 320."
                }
            },
            {
                "box": {
                    "id": "obj-s2c",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 170.0, 690.0, 40.0, 22.0 ],
                    "text": "+ 80."
                }
            },
            {
                "box": {
                    "id": "obj-s2d",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 715.0, 66.0, 22.0 ],
                    "text": "pack 0. 50"
                }
            },
            {
                "box": {
                    "id": "obj-s2e",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 170.0, 740.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-s3",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 615.0, 120.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 390.0, 35.0, 120.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-s3a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 350.0, 640.0, 42.0, 22.0 ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-s3b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 350.0, 665.0, 66.0, 22.0 ],
                    "text": "pack 0. 50"
                }
            },
            {
                "box": {
                    "id": "obj-s3c",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 350.0, 690.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-s3d",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 435.0, 640.0, 35.0, 22.0 ],
                    "text": "* -1."
                }
            },
            {
                "box": {
                    "id": "obj-s3e",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 435.0, 665.0, 33.0, 22.0 ],
                    "text": "+ 1."
                }
            },
            {
                "box": {
                    "id": "obj-s3f",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 690.0, 66.0, 22.0 ],
                    "text": "pack 0. 50"
                }
            },
            {
                "box": {
                    "id": "obj-s3g",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 435.0, 715.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "obj-s3h",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 720.0, 200.0, 17.0 ],
                    "text": "noise level (slider) -> line~ -> V1 *~",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "obj-s3i",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 740.0, 230.0, 17.0 ],
                    "text": "tone level (1-slider) -> line~ -> V2+V3 *~",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-s4",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 550.0, 615.0, 120.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 100.0, 120.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-s4a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 550.0, 640.0, 42.0, 22.0 ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-s4b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 550.0, 665.0, 38.0, 22.0 ],
                    "text": "* 10."
                }
            },
            {
                "box": {
                    "id": "obj-s4c",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 550.0, 690.0, 66.0, 22.0 ],
                    "text": "pack 0. 50"
                }
            },
            {
                "box": {
                    "id": "obj-s4d",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 550.0, 715.0, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 770.0, 220.0, 20.0 ],
                    "text": "=== MIX BUS & OUTPUT STAGE ==="
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 795.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 825.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 860.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 250.0, 895.0, 48.0, 136.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 550.0, 50.0, 48.0, 420.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Master Volume",
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
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 1045.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 340.0, 1045.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 1080.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 1080.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 530.0, 480.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 770.0, 180.0, 20.0 ],
                    "text": "=== SCOPE DISPLAYS ==="
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "calccount": 128,
                    "fgcolor": [ 0.3, 0.85, 0.5, 1.0 ],
                    "id": "obj-sc1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 795.0, 120.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 230.0, 480.0, 140.0 ],
                    "range": [ -1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "calccount": 128,
                    "fgcolor": [ 0.85, 0.4, 0.3, 1.0 ],
                    "id": "obj-sc2",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 795.0, 80.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 400.0, 140.0, 90.0 ],
                    "range": [ -1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "calccount": 128,
                    "fgcolor": [ 0.3, 0.5, 0.85, 1.0 ],
                    "id": "obj-sc3",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 800.0, 795.0, 80.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.0, 400.0, 140.0, 90.0 ],
                    "range": [ -1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "calccount": 128,
                    "fgcolor": [ 0.85, 0.75, 0.3, 1.0 ],
                    "id": "obj-sc4",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 900.0, 795.0, 80.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 400.0, 140.0, 90.0 ],
                    "range": [ -1.0, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 1 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-10", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-10", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 1 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34a", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "source": [ "obj-34a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "order": 0,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 1 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 1 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc2", 0 ],
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "order": 1,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "order": 0,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 1 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 1 ],
                    "order": 1,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc3", 0 ],
                    "order": 0,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 1 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 1 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc4", 0 ],
                    "order": 0,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "order": 1,
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc1", 0 ],
                    "order": 0,
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "order": 1,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 1 ],
                    "order": 0,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-84", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 1 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1a", 0 ],
                    "source": [ "obj-s1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1b", 0 ],
                    "source": [ "obj-s1a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1c", 0 ],
                    "source": [ "obj-s1b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1d", 0 ],
                    "source": [ "obj-s1c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1e", 0 ],
                    "source": [ "obj-s1d", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-s1e", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2a", 0 ],
                    "source": [ "obj-s2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2b", 0 ],
                    "source": [ "obj-s2a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2c", 0 ],
                    "source": [ "obj-s2b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2d", 0 ],
                    "source": [ "obj-s2c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2e", 0 ],
                    "source": [ "obj-s2d", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-s2e", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3a", 0 ],
                    "source": [ "obj-s3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3b", 0 ],
                    "order": 1,
                    "source": [ "obj-s3a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3d", 0 ],
                    "order": 0,
                    "source": [ "obj-s3a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3c", 0 ],
                    "source": [ "obj-s3b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "source": [ "obj-s3c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3e", 0 ],
                    "source": [ "obj-s3d", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3f", 0 ],
                    "source": [ "obj-s3e", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3g", 0 ],
                    "source": [ "obj-s3f", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "order": 1,
                    "source": [ "obj-s3g", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 1 ],
                    "order": 0,
                    "source": [ "obj-s3g", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4a", 0 ],
                    "source": [ "obj-s4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4b", 0 ],
                    "source": [ "obj-s4a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4c", 0 ],
                    "source": [ "obj-s4b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4d", 0 ],
                    "source": [ "obj-s4c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "source": [ "obj-s4d", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-84": [ "Master Volume", "Vol", 0 ],
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