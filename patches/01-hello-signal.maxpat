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
        "rect": [ 100.0, 100.0, 900.0, 800.0 ],
        "description": "01 — Hello Signal: engaging signals with dac~, ezdac~, and your first tone (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "id": "obj-region-source",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 185.0, 155.0, 230.0, 190.0 ],
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
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
                    "patching_rect": [ 85.0, 325.0, 300.0, 290.0 ],
                    "bgcolor": [ 0.2, 0.45, 0.25, 0.1 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-1",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 250.0, 283.0, 138.0, 46.0 ]
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
                    "text": "01 — Hello Signal"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 48.0, 350.0, 20.0 ],
                    "text": "How do I hear anything from MSP?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-topc01-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 80.0, 520.0, 19.0 ],
                    "text": "WHAT IS A SIGNAL? In Max, values update only when a message arrives.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-topc01-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 99.0, 580.0, 19.0 ],
                    "text": "In MSP, signals flow continuously — 44,100 samples every second. That's what the ~ means:",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-topc01-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 118.0, 520.0, 19.0 ],
                    "text": "this object works with signals, not messages.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 200.0, 170.0, 66.0, 22.0 ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 160.0, 460.0, 19.0 ],
                    "text": "cycle~ 220 — generates a cosine wave at 220 Hz (A below middle C).",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-cycle2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 179.0, 460.0, 19.0 ],
                    "text": "metro generates bangs at intervals — cycle~ generates a smooth wave, 44,100 samples/sec.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 200.0, 250.0, 40.0, 22.0 ],
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
                    "patching_rect": [ 400.0, 240.0, 460.0, 19.0 ],
                    "text": "*~ 0.5 — multiplies every sample by 0.5, cutting the amplitude in half.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-amp2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 259.0, 460.0, 19.0 ],
                    "text": "You used * to multiply numbers. *~ multiplies signals — same idea, audio rate.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 250.0, 200.0, 138.0, 46.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-scope",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 213.5, 460.0, 19.0 ],
                    "text": "live.scope~ — oscilloscope display. See the wave, not just hear it.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
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
                    "patching_rect": [ 200.0, 340.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-01 Vol",
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
                    "fontsize": 11.0,
                    "id": "obj-ann-gain",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 380.0, 460.0, 19.0 ],
                    "text": "live.gain~ — a volume slider with a built-in meter. Set to -12 dB for safe listening.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-clipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 180.0, 500.0, 88.0, 22.0 ],
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
                    "patching_rect": [ 280.0, 500.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-clip",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 500.0, 460.0, 19.0 ],
                    "text": "clip~ -0.9 0.9 — safety net. Prevents dangerously loud signals from reaching your speakers.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 560.0, 188.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-dac",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 550.0, 460.0, 19.0 ],
                    "text": "dac~ — digital-to-analog converter. The final stop: signal becomes sound.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-dac2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 569.0, 460.0, 19.0 ],
                    "text": "Double-click to see Audio Status."
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 545.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-ezdac",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 610.0, 460.0, 19.0 ],
                    "text": "ezdac~ — the MSP power switch. Click to start/stop audio processing.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-topc03",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 640.0, 654.0, 19.0 ],
                    "text": "Audio Status: double-click dac~ to see the Audio Status panel. It shows sample rate, I/O vector size, and which audio driver is active.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-adc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 665.0, 580.0, 19.0 ],
                    "text": "adc~ is the input equivalent of dac~ — it brings microphone audio INTO Max. We won't use it today.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-freq",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 198.0, 300.0, 19.0 ],
                    "text": "220 = A below middle C (A3)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-amp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 278.0, 300.0, 19.0 ],
                    "text": "0.5 = half amplitude (-6 dB)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-experiment-01",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 695.0, 520.0, 19.0 ],
                    "text": "EXPERIMENT: Disconnect *~ from cycle~ and send cycle~ directly into live.gain~ — what happens to the waveform on the scope?",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ],
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-experiment-02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 718.0, 520.0, 19.0 ],
                    "text": "EXPERIMENT: Change cycle~ from 220 to 20 — can you still hear it? Watch the scope.",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ],
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-troubleshoot-01",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 600.0, 600.0, 19.0 ],
                    "text": "IF YOU HEAR NOTHING: Is ezdac~ toggled on? Is live.gain~ turned up? Double-click ezdac~ to check Audio Status.",
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
                    "patching_rect": [ 30.0, 745.0, 450.0, 18.0 ],
                    "text": "COLOR REGIONS:  Blue = Source (oscillators, noise)  |  Orange = Processing (envelopes, operators)  |  Green = Output (gain, dac~)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "order": 1,
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "order": 2,
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-clipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-clipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-amp", 0 ],
                    "order": 1,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope", 0 ],
                    "order": 0,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clipL", 0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clipR", 0 ],
                    "source": [ "obj-gain", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-01 Vol", "Vol", 0 ],
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