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
        "rect": [ 100.0, 95.0, 1100.0, 932.0 ],
        "description": "07 — Noise Sculpture Rebuild: complete demo reconstruction from all concepts (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 10.0, 500.0, 24.0 ],
                    "text": "07 — Noise Sculpture Rebuild"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 36.0, 420.0, 19.0 ],
                    "text": "We built everything in the demo — from scratch.",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 10.0, 530.0, 18.0 ],
                    "text": "This patch combines everything from Patches 01-06 into the complete noise sculpture.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 28.0, 540.0, 18.0 ],
                    "text": "Compare this patch to the demo: same sound, same objects, different layout. The demo adds Presentation Mode polish.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ],
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-ann3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 46.0, 639.0, 19.0 ],
                    "text": "EXPERIMENT: Open the demo patch side by side — can you hear the same sound? What looks different in the patching?",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-master-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 68.0, 260.0, 20.0 ],
                    "text": "=== MASTER ON/OFF GATE ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-master",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 68.0, 380.0, 18.0 ],
                    "text": "Master level uses toggle -> sel -> line~ envelope (Patch 05 pattern)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-tog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 100.0, 93.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-lbl-onoff",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 98.0, 54.0, 20.0 ],
                    "text": "ON/OFF"
                }
            },
            {
                "box": {
                    "id": "obj-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 100.0, 128.0, 80.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-msg-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 142.0, 157.0, 75.0, 22.0 ],
                    "text": "0, 1. 2000"
                }
            },
            {
                "box": {
                    "id": "obj-msg-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 150.0, 39.0, 22.0 ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-line-master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 5.0, 191.0, 37.0, 22.0 ],
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
                    "patching_rect": [ 30.0, 225.0, 330.0, 20.0 ],
                    "text": "=== PHASOR~ AUTOMATION (signal domain) ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-phasor",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 380.0, 225.0, 480.0, 18.0 ],
                    "text": "6 ultra-slow phasor~ clocks drive all automation — each cycles at a different rate (Patch 06 concept)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch1: V1 LFO rate mod",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch2-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch2: V1 amplitude",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch3: V2 freq mod",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch4-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 460.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch4: V2 amplitude",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch5-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 610.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch5: V3 base freq",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ch6-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 242.0, 130.0, 18.0 ],
                    "text": "Ch6: V3 amplitude",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-ph1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.071"
                }
            },
            {
                "box": {
                    "id": "obj-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 316.0, 42.0, 22.0 ],
                    "text": "*~ 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.053"
                }
            },
            {
                "box": {
                    "id": "obj-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc2a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 310.0, 47.0, 22.0 ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-sc2b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 335.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.041"
                }
            },
            {
                "box": {
                    "id": "obj-cy3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 310.0, 40.0, 22.0 ],
                    "text": "*~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-ph4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.062"
                }
            },
            {
                "box": {
                    "id": "obj-cy4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc4a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 310.0, 47.0, 22.0 ],
                    "text": "*~ 0.45"
                }
            },
            {
                "box": {
                    "id": "obj-sc4b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 335.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-ph5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.031"
                }
            },
            {
                "box": {
                    "id": "obj-cy5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc5a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 310.0, 40.0, 22.0 ],
                    "text": "*~ 25"
                }
            },
            {
                "box": {
                    "id": "obj-sc5b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 335.0, 46.0, 22.0 ],
                    "text": "+~ 110"
                }
            },
            {
                "box": {
                    "id": "obj-ph6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 260.0, 86.0, 22.0 ],
                    "text": "phasor~ 0.047"
                }
            },
            {
                "box": {
                    "id": "obj-cy6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 285.0, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-sc6a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 310.0, 42.0, 22.0 ],
                    "text": "*~ 0.4"
                }
            },
            {
                "box": {
                    "id": "obj-sc6b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 335.0, 49.0, 22.0 ],
                    "text": "+~ 0.45"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 30.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc2",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 170.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc3",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 320.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc4",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 460.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc5",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 610.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-phsc6",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 760.0, 365.0, 120.0, 35.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 415.0, 260.0, 20.0 ],
                    "text": "=== VOICE 1: Rhythmic Noise ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-v1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 435.0, 329.0, 18.0 ],
                    "text": "Voice 1 uses noise~ (Patch 04) with phasor~ LFO modulation (Patch 06)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 470.0, 45.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 440.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-cy",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 470.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-half",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 500.0, 42.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-v1-lfo-uni",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 530.0, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 195.0, 500.0, 260.0, 18.0 ],
                    "text": "LFO: cycle~ -> *~ 0.5 -> +~ 0.5 (unipolar 0..1)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-v1-gate",
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
                    "id": "obj-v1-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 568.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v1-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 620.0, 30.0, 22.0 ],
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
                    "patching_rect": [ 350.0, 415.0, 260.0, 20.0 ],
                    "text": "=== VOICE 2: Tonal AM / Beating ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-v2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 435.0, 349.0, 18.0 ],
                    "text": "Voice 2 uses ring modulation: two detuned cycle~ multiplied (Patches 02, 06)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-v2-freqadd",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 455.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 485.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-detune",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 470.0, 35.0, 22.0 ],
                    "text": "+~ 2"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-detune",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 470.0, 120.0, 18.0 ],
                    "text": "detuned carrier (+2 Hz)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-v2-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 460.0, 500.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-ring",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 530.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 560.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v2-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 590.0, 30.0, 22.0 ],
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
                    "patching_rect": [ 650.0, 415.0, 260.0, 20.0 ],
                    "text": "=== VOICE 3: Evolving Drone ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-v3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 435.0, 356.0, 18.0 ],
                    "text": "Voice 3 uses additive synthesis: two detuned cycle~ summed (Patches 02, 06)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-v3-detuneadd",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 460.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-cy1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 480.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-cy2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 500.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-partial",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 730.0, 530.0, 42.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-partial",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 500.0, 170.0, 18.0 ],
                    "text": "detuned partial (slider-controlled)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-v3-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 560.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 590.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-v3-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 660.0, 620.0, 30.0, 22.0 ],
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
                    "patching_rect": [ 58.0, 665.0, 260.0, 20.0 ],
                    "text": "=== PERFORMANCE SLIDERS ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-mix",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 58.0, 685.0, 538.0, 18.0 ],
                    "text": "The mix slider uses !- 1. — a control-domain trick: one slider controls noise level (direct) and tone+drone level (inverted)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-s1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 700.0, 80.0, 18.0 ],
                    "text": "Noise Speed",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
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
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 37.0, 718.0, 120.0, 20.0 ],
                    "size": 8.0
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-s2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 700.0, 80.0, 18.0 ],
                    "text": "Tone Pitch",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-s2",
                    "maxclass": "slider",
                    "min": 80.0,
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 170.0, 718.0, 120.0, 20.0 ],
                    "size": 320.0
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-s3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 700.0, 100.0, 18.0 ],
                    "text": "Noise/Tone Mix",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
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
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 718.0, 120.0, 20.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-s4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 550.0, 700.0, 90.0, 18.0 ],
                    "text": "Drone Detune",
                    "textcolor": [ 0.8, 0.8, 0.8, 1.0 ]
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
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 550.0, 718.0, 120.0, 20.0 ],
                    "size": 10.0
                }
            },
            {
                "box": {
                    "id": "obj-sig1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 37.0, 756.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 170.0, 756.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 350.0, 756.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-s3inv",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 435.0, 743.0, 35.0, 22.0 ],
                    "text": "!- 1."
                }
            },
            {
                "box": {
                    "id": "obj-sig3b",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 435.0, 768.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sig4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 550.0, 756.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num1",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 79.0, 756.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num2",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 207.0, 756.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num3",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 350.0, 798.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num3b",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 435.0, 798.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num4",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 594.0, 756.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 700.0, 718.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-lbt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 700.0, 773.0, 134.0, 22.0 ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-lbd1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 745.0, 29.0, 22.0 ],
                    "text": "2."
                }
            },
            {
                "box": {
                    "id": "obj-lbd2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 735.0, 745.0, 32.0, 22.0 ],
                    "text": "185."
                }
            },
            {
                "box": {
                    "id": "obj-lbd3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 770.0, 745.0, 29.0, 22.0 ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lbd4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 805.0, 745.0, 29.0, 22.0 ],
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
                    "patching_rect": [ 250.0, 850.0, 220.0, 20.0 ],
                    "text": "=== MIX BUS & OUTPUT STAGE ==="
                }
            },
            {
                "box": {
                    "id": "obj-mix1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 875.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-mix2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 905.0, 30.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-master-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 940.0, 30.0, 22.0 ],
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
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 250.0, 975.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-07 Vol",
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
                    "id": "obj-clipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 1125.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-clipR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 340.0, 1125.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 1160.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 1160.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-scope-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 850.0, 180.0, 20.0 ],
                    "text": "=== SCOPE DISPLAYS ==="
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-scope-main-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 870.0, 80.0, 18.0 ],
                    "text": "Main output",
                    "textcolor": [ 0.7, 0.7, 0.7, 1.0 ]
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
                    "patching_rect": [ 500.0, 888.0, 120.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-scope-v1-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 870.0, 80.0, 18.0 ],
                    "text": "V1 Noise",
                    "textcolor": [ 0.85, 0.4, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-v1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 650.0, 888.0, 80.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-scope-v2-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 750.0, 870.0, 80.0, 18.0 ],
                    "text": "V2 Tone",
                    "textcolor": [ 0.3, 0.5, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-v2",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 750.0, 888.0, 80.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-scope-v3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 850.0, 870.0, 80.0, 18.0 ],
                    "text": "V3 Drone",
                    "textcolor": [ 0.85, 0.75, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-v3",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 850.0, 888.0, 80.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-troubleshoot-07",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 940.0, 598.0, 19.0 ],
                    "text": "COMPARE: Open the demo patch in a separate window. Toggle ezdac~ in BOTH — does Patch 07 sound like the demo?",
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
                    "patching_rect": [ 30.0, 1210.0, 597.0, 18.0 ],
                    "text": "COLOR REGIONS:  Blue = Source (oscillators, noise)  |  Orange = Processing (envelopes, operators)  |  Green = Output (gain, dac~)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-cross-ref",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 960.0, 480.0, 18.0 ],
                    "text": "All objects here were introduced in Patches 01-06. See those patches for full explanations.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
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
                    "patching_rect": [ 20.0, 408.0, 960.0, 260.0 ],
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
                    "patching_rect": [ 20.0, 218.0, 870.0, 185.0 ],
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
                    "patching_rect": [ 230.0, 840.0, 200.0, 380.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "midpoints": [ 259.5, 1149.0, 259.5, 1149.0 ],
                    "source": [ "obj-clipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "midpoints": [ 349.5, 1149.0, 276.0, 1149.0, 276.0, 1155.0, 275.5, 1155.0 ],
                    "source": [ "obj-clipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc1", 0 ],
                    "midpoints": [ 39.5, 309.0, 15.0, 309.0, 15.0, 351.0, 39.5, 351.0 ],
                    "order": 0,
                    "source": [ "obj-cy1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc1", 0 ],
                    "midpoints": [ 39.5, 309.0, 37.5, 309.0 ],
                    "order": 1,
                    "source": [ "obj-cy1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc2a", 0 ],
                    "midpoints": [ 179.5, 309.0, 179.5, 309.0 ],
                    "source": [ "obj-cy2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc3", 0 ],
                    "midpoints": [ 329.5, 309.0, 306.0, 309.0, 306.0, 351.0, 329.5, 351.0 ],
                    "order": 0,
                    "source": [ "obj-cy3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc3", 0 ],
                    "midpoints": [ 329.5, 309.0, 329.5, 309.0 ],
                    "order": 1,
                    "source": [ "obj-cy3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc4a", 0 ],
                    "midpoints": [ 469.5, 309.0, 469.5, 309.0 ],
                    "source": [ "obj-cy4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc5", 0 ],
                    "midpoints": [ 619.5, 309.0, 597.0, 309.0, 597.0, 360.0, 619.5, 360.0 ],
                    "order": 0,
                    "source": [ "obj-cy5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc5a", 0 ],
                    "midpoints": [ 619.5, 309.0, 619.5, 309.0 ],
                    "order": 1,
                    "source": [ "obj-cy5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc6a", 0 ],
                    "midpoints": [ 769.5, 309.0, 769.5, 309.0 ],
                    "source": [ "obj-cy6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clipL", 0 ],
                    "midpoints": [ 259.5, 1113.0, 259.5, 1113.0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clipR", 0 ],
                    "midpoints": [ 266.75, 1119.0, 349.5, 1119.0 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lbt", 0 ],
                    "midpoints": [ 709.5, 741.0, 696.0, 741.0, 696.0, 768.0, 709.5, 768.0 ],
                    "source": [ "obj-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s1", 0 ],
                    "midpoints": [ 709.5, 768.0, 660.0, 768.0, 660.0, 831.0, 24.0, 831.0, 24.0, 714.0, 46.5, 714.0 ],
                    "source": [ "obj-lbd1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s2", 0 ],
                    "midpoints": [ 744.5, 768.0, 660.0, 768.0, 660.0, 831.0, 156.0, 831.0, 156.0, 738.0, 165.0, 738.0, 165.0, 714.0, 179.5, 714.0 ],
                    "source": [ "obj-lbd2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3", 0 ],
                    "midpoints": [ 779.5, 768.0, 660.0, 768.0, 660.0, 831.0, 336.0, 831.0, 336.0, 714.0, 359.5, 714.0 ],
                    "source": [ "obj-lbd3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s4", 0 ],
                    "midpoints": [ 814.5, 768.0, 660.0, 768.0, 660.0, 789.0, 537.0, 789.0, 537.0, 714.0, 559.5, 714.0 ],
                    "source": [ "obj-lbd4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lbd1", 0 ],
                    "midpoints": [ 709.5, 798.0, 687.0, 798.0, 687.0, 741.0, 709.5, 741.0 ],
                    "source": [ "obj-lbt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lbd2", 0 ],
                    "midpoints": [ 747.8333333333334, 807.0, 687.0, 807.0, 687.0, 741.0, 744.5, 741.0 ],
                    "source": [ "obj-lbt", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lbd3", 0 ],
                    "midpoints": [ 786.1666666666666, 807.0, 846.0, 807.0, 846.0, 732.0, 779.5, 732.0 ],
                    "source": [ "obj-lbt", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lbd4", 0 ],
                    "midpoints": [ 824.5, 798.0, 846.0, 798.0, 846.0, 732.0, 814.5, 732.0 ],
                    "source": [ "obj-lbt", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-mul", 1 ],
                    "midpoints": [ 14.5, 936.0, 270.5, 936.0 ],
                    "source": [ "obj-line-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 259.5, 969.0, 288.5, 969.0 ],
                    "order": 0,
                    "source": [ "obj-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 259.5, 963.0, 259.5, 963.0 ],
                    "order": 1,
                    "source": [ "obj-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mix2", 0 ],
                    "midpoints": [ 259.5, 900.0, 259.5, 900.0 ],
                    "source": [ "obj-mix1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-mul", 0 ],
                    "midpoints": [ 259.5, 930.0, 259.5, 930.0 ],
                    "order": 1,
                    "source": [ "obj-mix2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-main", 0 ],
                    "midpoints": [ 259.5, 930.0, 486.0, 930.0, 486.0, 885.0, 509.5, 885.0 ],
                    "order": 0,
                    "source": [ "obj-mix2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-line-master", 0 ],
                    "midpoints": [ 34.5, 174.0, 14.5, 174.0 ],
                    "source": [ "obj-msg-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-line-master", 0 ],
                    "midpoints": [ 151.5, 189.0, 42.0, 189.0, 42.0, 186.0, 14.5, 186.0 ],
                    "source": [ "obj-msg-on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-gate", 0 ],
                    "midpoints": [ 39.5, 495.0, 39.5, 495.0 ],
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy1", 1 ],
                    "midpoints": [ 39.5, 282.0, 73.5, 282.0 ],
                    "source": [ "obj-ph1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy2", 1 ],
                    "midpoints": [ 179.5, 282.0, 213.5, 282.0 ],
                    "source": [ "obj-ph2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy3", 1 ],
                    "midpoints": [ 329.5, 282.0, 363.5, 282.0 ],
                    "source": [ "obj-ph3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy4", 1 ],
                    "midpoints": [ 469.5, 282.0, 503.5, 282.0 ],
                    "source": [ "obj-ph4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy5", 1 ],
                    "midpoints": [ 619.5, 282.0, 653.5, 282.0 ],
                    "source": [ "obj-ph5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cy6", 1 ],
                    "midpoints": [ 769.5, 282.0, 803.5, 282.0 ],
                    "source": [ "obj-ph6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig1", 0 ],
                    "midpoints": [ 46.5, 741.0, 46.5, 741.0 ],
                    "source": [ "obj-s1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig2", 0 ],
                    "midpoints": [ 179.5, 741.0, 179.5, 741.0 ],
                    "source": [ "obj-s2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-s3inv", 0 ],
                    "midpoints": [ 359.5, 741.0, 432.0, 741.0, 432.0, 738.0, 444.5, 738.0 ],
                    "order": 0,
                    "source": [ "obj-s3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig3", 0 ],
                    "midpoints": [ 359.5, 741.0, 359.5, 741.0 ],
                    "order": 1,
                    "source": [ "obj-s3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig3b", 0 ],
                    "midpoints": [ 444.5, 768.0, 444.5, 768.0 ],
                    "source": [ "obj-s3inv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig4", 0 ],
                    "midpoints": [ 559.5, 741.0, 559.5, 741.0 ],
                    "source": [ "obj-s4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-lfo-add", 1 ],
                    "midpoints": [ 37.5, 351.0, 160.5, 351.0 ],
                    "source": [ "obj-sc1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc2b", 0 ],
                    "midpoints": [ 179.5, 333.0, 179.5, 333.0 ],
                    "source": [ "obj-sc2a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc2", 0 ],
                    "midpoints": [ 179.5, 360.0, 179.5, 360.0 ],
                    "order": 0,
                    "source": [ "obj-sc2b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-amp", 1 ],
                    "midpoints": [ 179.5, 360.0, 15.0, 360.0, 15.0, 555.0, 50.5, 555.0 ],
                    "order": 1,
                    "source": [ "obj-sc2b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-freqadd", 1 ],
                    "midpoints": [ 329.5, 351.0, 213.0, 351.0, 213.0, 357.0, 156.0, 357.0, 156.0, 351.0, 15.0, 351.0, 15.0, 465.0, 357.0, 465.0, 357.0, 477.0, 402.0, 477.0, 402.0, 453.0, 390.5, 453.0 ],
                    "source": [ "obj-sc3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc4b", 0 ],
                    "midpoints": [ 469.5, 333.0, 469.5, 333.0 ],
                    "source": [ "obj-sc4a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc4", 0 ],
                    "midpoints": [ 469.5, 360.0, 469.5, 360.0 ],
                    "order": 0,
                    "source": [ "obj-sc4b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-amp", 1 ],
                    "midpoints": [ 469.5, 360.0, 390.0, 360.0, 390.0, 351.0, 213.0, 351.0, 213.0, 357.0, 156.0, 357.0, 156.0, 351.0, 15.0, 351.0, 15.0, 555.0, 126.0, 555.0, 126.0, 564.0, 357.0, 564.0, 357.0, 555.0, 390.5, 555.0 ],
                    "order": 1,
                    "source": [ "obj-sc4b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc5b", 0 ],
                    "midpoints": [ 619.5, 333.0, 619.5, 333.0 ],
                    "source": [ "obj-sc5a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-cy1", 0 ],
                    "midpoints": [ 619.5, 360.0, 669.0, 360.0, 669.0, 351.0, 747.0, 351.0, 747.0, 357.0, 819.0, 357.0, 819.0, 351.0, 1017.0, 351.0, 1017.0, 483.0, 714.0, 483.0, 714.0, 465.0, 669.5, 465.0 ],
                    "order": 1,
                    "source": [ "obj-sc5b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-detuneadd", 0 ],
                    "midpoints": [ 619.5, 360.0, 819.0, 360.0, 819.0, 351.0, 1017.0, 351.0, 1017.0, 465.0, 762.0, 465.0, 762.0, 456.0, 739.5, 456.0 ],
                    "order": 0,
                    "source": [ "obj-sc5b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sc6b", 0 ],
                    "midpoints": [ 769.5, 333.0, 769.5, 333.0 ],
                    "source": [ "obj-sc6a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-phsc6", 0 ],
                    "midpoints": [ 769.5, 360.0, 769.5, 360.0 ],
                    "order": 0,
                    "source": [ "obj-sc6b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-amp", 1 ],
                    "midpoints": [ 769.5, 360.0, 819.0, 360.0, 819.0, 351.0, 1017.0, 351.0, 1017.0, 585.0, 680.5, 585.0 ],
                    "order": 1,
                    "source": [ "obj-sc6b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-off", 0 ],
                    "midpoints": [ 109.5, 153.0, 75.0, 153.0, 75.0, 135.0, 34.5, 135.0 ],
                    "source": [ "obj-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-on", 0 ],
                    "midpoints": [ 140.0, 153.0, 151.5, 153.0 ],
                    "source": [ "obj-sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num1", 0 ],
                    "midpoints": [ 46.5, 780.0, 75.0, 780.0, 75.0, 753.0, 88.5, 753.0 ],
                    "order": 1,
                    "source": [ "obj-sig1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-lfo-add", 0 ],
                    "midpoints": [ 46.5, 780.0, 15.0, 780.0, 15.0, 411.0, 149.5, 411.0 ],
                    "order": 0,
                    "source": [ "obj-sig1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num2", 0 ],
                    "midpoints": [ 179.5, 780.0, 204.0, 780.0, 204.0, 753.0, 216.5, 753.0 ],
                    "order": 1,
                    "source": [ "obj-sig2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-freqadd", 0 ],
                    "midpoints": [ 179.5, 789.0, 15.0, 789.0, 15.0, 600.0, 195.0, 600.0, 195.0, 519.0, 192.0, 519.0, 192.0, 486.0, 357.0, 486.0, 357.0, 453.0, 379.5, 453.0 ],
                    "order": 0,
                    "source": [ "obj-sig2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num3", 0 ],
                    "midpoints": [ 359.5, 780.0, 359.5, 780.0 ],
                    "order": 0,
                    "source": [ "obj-sig3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-mix", 1 ],
                    "midpoints": [ 359.5, 780.0, 273.0, 780.0, 273.0, 789.0, 15.0, 789.0, 15.0, 606.0, 50.5, 606.0 ],
                    "order": 1,
                    "source": [ "obj-sig3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num3b", 0 ],
                    "midpoints": [ 444.5, 792.0, 444.5, 792.0 ],
                    "order": 1,
                    "source": [ "obj-sig3b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-mix", 1 ],
                    "midpoints": [ 444.5, 792.0, 681.0, 792.0, 681.0, 654.0, 411.0, 654.0, 411.0, 585.0, 390.5, 585.0 ],
                    "order": 2,
                    "source": [ "obj-sig3b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-mix", 1 ],
                    "midpoints": [ 444.5, 792.0, 687.0, 792.0, 687.0, 654.0, 702.0, 654.0, 702.0, 615.0, 680.5, 615.0 ],
                    "order": 0,
                    "source": [ "obj-sig3b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num4", 0 ],
                    "midpoints": [ 559.5, 780.0, 591.0, 780.0, 591.0, 753.0, 603.5, 753.0 ],
                    "order": 1,
                    "source": [ "obj-sig4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-detuneadd", 1 ],
                    "midpoints": [ 559.5, 789.0, 687.0, 789.0, 687.0, 654.0, 717.0, 654.0, 717.0, 456.0, 750.5, 456.0 ],
                    "order": 0,
                    "source": [ "obj-sig4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel", 0 ],
                    "midpoints": [ 109.5, 126.0, 109.5, 126.0 ],
                    "source": [ "obj-tog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-v1", 0 ],
                    "midpoints": [ 39.5, 606.0, 15.0, 606.0, 15.0, 837.0, 486.0, 837.0, 486.0, 939.0, 636.0, 939.0, 636.0, 885.0, 659.5, 885.0 ],
                    "order": 0,
                    "source": [ "obj-v1-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-mix", 0 ],
                    "midpoints": [ 39.5, 591.0, 39.5, 591.0 ],
                    "order": 1,
                    "source": [ "obj-v1-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-amp", 0 ],
                    "midpoints": [ 39.5, 543.0, 39.5, 543.0 ],
                    "source": [ "obj-v1-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-lfo-cy", 0 ],
                    "midpoints": [ 149.5, 465.0, 149.5, 465.0 ],
                    "source": [ "obj-v1-lfo-add", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-lfo-half", 0 ],
                    "midpoints": [ 149.5, 495.0, 149.5, 495.0 ],
                    "source": [ "obj-v1-lfo-cy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-lfo-uni", 0 ],
                    "midpoints": [ 149.5, 525.0, 149.5, 525.0 ],
                    "source": [ "obj-v1-lfo-half", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v1-gate", 1 ],
                    "midpoints": [ 149.5, 555.0, 72.0, 555.0, 72.0, 516.0, 50.5, 516.0 ],
                    "source": [ "obj-v1-lfo-uni", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mix1", 0 ],
                    "midpoints": [ 39.5, 687.0, 24.0, 687.0, 24.0, 870.0, 259.5, 870.0 ],
                    "source": [ "obj-v1-mix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-v2", 0 ],
                    "midpoints": [ 379.5, 585.0, 645.0, 585.0, 645.0, 687.0, 687.0, 687.0, 687.0, 837.0, 747.0, 837.0, 747.0, 885.0, 759.5, 885.0 ],
                    "order": 0,
                    "source": [ "obj-v2-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-mix", 0 ],
                    "midpoints": [ 379.5, 585.0, 379.5, 585.0 ],
                    "order": 1,
                    "source": [ "obj-v2-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-ring", 0 ],
                    "midpoints": [ 379.5, 510.0, 379.5, 510.0 ],
                    "source": [ "obj-v2-cy1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-ring", 1 ],
                    "midpoints": [ 469.5, 534.0, 411.0, 534.0, 411.0, 525.0, 390.5, 525.0 ],
                    "source": [ "obj-v2-cy2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-cy2", 0 ],
                    "midpoints": [ 469.5, 495.0, 469.5, 495.0 ],
                    "source": [ "obj-v2-detune", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-cy1", 0 ],
                    "midpoints": [ 379.5, 480.0, 379.5, 480.0 ],
                    "order": 1,
                    "source": [ "obj-v2-freqadd", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-detune", 0 ],
                    "midpoints": [ 379.5, 480.0, 447.0, 480.0, 447.0, 465.0, 469.5, 465.0 ],
                    "order": 0,
                    "source": [ "obj-v2-freqadd", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mix1", 1 ],
                    "midpoints": [ 379.5, 651.0, 45.0, 651.0, 45.0, 687.0, 24.0, 687.0, 24.0, 870.0, 270.5, 870.0 ],
                    "source": [ "obj-v2-mix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v2-amp", 0 ],
                    "midpoints": [ 379.5, 555.0, 379.5, 555.0 ],
                    "source": [ "obj-v2-ring", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-v3", 0 ],
                    "midpoints": [ 669.5, 615.0, 846.0, 615.0, 846.0, 885.0, 859.5, 885.0 ],
                    "order": 0,
                    "source": [ "obj-v3-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-mix", 0 ],
                    "midpoints": [ 669.5, 615.0, 669.5, 615.0 ],
                    "order": 1,
                    "source": [ "obj-v3-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-sum", 0 ],
                    "midpoints": [ 669.5, 504.0, 669.5, 504.0 ],
                    "source": [ "obj-v3-cy1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-partial", 0 ],
                    "midpoints": [ 739.5, 525.0, 739.5, 525.0 ],
                    "source": [ "obj-v3-cy2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-cy2", 0 ],
                    "midpoints": [ 739.5, 483.0, 739.5, 483.0 ],
                    "source": [ "obj-v3-detuneadd", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mix2", 1 ],
                    "midpoints": [ 669.5, 705.0, 681.0, 705.0, 681.0, 837.0, 480.0, 837.0, 480.0, 900.0, 270.5, 900.0 ],
                    "source": [ "obj-v3-mix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-sum", 1 ],
                    "midpoints": [ 739.5, 555.0, 680.5, 555.0 ],
                    "source": [ "obj-v3-partial", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-v3-amp", 0 ],
                    "midpoints": [ 669.5, 585.0, 669.5, 585.0 ],
                    "source": [ "obj-v3-sum", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-07 Vol", "Vol", 0 ],
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