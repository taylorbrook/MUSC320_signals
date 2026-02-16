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
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 112.00000333786011, 203.33333939313889, 208.00000619888306, 60.666668474674225 ]
                }
            },
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
                    "patching_rect": [ 30.0, 40.000001192092896, 300.0, 24.0 ],
                    "text": "02 — First Tone"
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
                    "patching_rect": [ 30.0, 73.10923933982849, 200.0, 20.0 ],
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
                    "patching_rect": [ 30.0, 124.0, 72.0, 22.0 ],
                    "text": "cycle~ 440"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-cycle",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.00000089406967, 163.333338201046, 358.6666773557663, 31.0 ],
                    "text": "cycle~ — sinusoidal wave oscillator. The number after it (the first (and only) argument) is the frequency in Hertz (cycles per second)."
                }
            },
            {
                "box": {
                    "id": "obj-amp-main",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.00000089406967, 222.666673630476, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.00000089406967, 269.0, 358.6666773557663, 31.0 ],
                    "text": "*~ 0.5 — amplitude scaling. This object multiplies every sample by the argument (.5 in this case)."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.00000089406967, 307.00000113248825, 358.6666773557663, 19.0 ],
                    "text": "0.5 = half amplitude (-6 dB). Try 0.25 (quieter) or 1.0 (full).",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-safety",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.00000089406967, 329.6666684746742, 358.6666773557663, 31.0 ],
                    "text": "Why not just turn it up to 1.0? In MSP, managing amplitude is critical. Full-amplitude signals from multiple sources can clip (distort). ",
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
                    "patching_rect": [ 116.0000034570694, 115.33333677053452, 204.00000607967377, 46.666663229465485 ]
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
                    "patching_rect": [ 46.66666805744171, 382.66667807102203, 48.0, 136.0 ],
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
                    "patching_rect": [ 46.66666805744171, 548.6666830182076, 45.0, 45.0 ]
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
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.000000596046448, 100.00000298023224, 368.6666776537895, 273.3333415389061 ],
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
                    "patching_rect": [ 20.000000596046448, 375.33334451913834, 102.66666972637177, 227.33334010839462 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 39.50000089406967, 255.0, 99.0, 255.0, 99.0, 198.0, 121.50000333786011, 198.0 ],
                    "order": 0,
                    "source": [ "obj-amp-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 39.50000089406967, 255.0, 15.0, 255.0, 15.0, 378.0, 85.16666805744171, 378.0 ],
                    "order": 1,
                    "source": [ "obj-amp-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 39.50000089406967, 255.0, 15.0, 255.0, 15.0, 378.0, 56.16666805744171, 378.0 ],
                    "order": 2,
                    "source": [ "obj-amp-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-220", 0 ],
                    "midpoints": [ 539.5, 165.0, 539.5, 165.0 ],
                    "source": [ "obj-cycle-220", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-440", 0 ],
                    "midpoints": [ 783.5, 165.0, 783.5, 165.0 ],
                    "source": [ "obj-cycle-440", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-880", 0 ],
                    "midpoints": [ 1032.5, 165.0, 1032.5, 165.0 ],
                    "source": [ "obj-cycle-880", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-amp-main", 0 ],
                    "midpoints": [ 39.5, 147.0, 15.0, 147.0, 15.0, 207.0, 39.50000089406967, 207.0 ],
                    "order": 1,
                    "source": [ "obj-cycle-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-main", 0 ],
                    "midpoints": [ 39.5, 147.0, 27.0, 147.0, 27.0, 111.0, 125.5000034570694, 111.0 ],
                    "order": 0,
                    "source": [ "obj-cycle-main", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "midpoints": [ 63.41666805744171, 534.0, 82.16666805744171, 534.0 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "midpoints": [ 56.16666805744171, 519.0, 56.16666805744171, 519.0 ],
                    "source": [ "obj-gain", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-02 Vol", "Vol", 0 ],
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