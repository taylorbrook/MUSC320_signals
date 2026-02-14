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
        "default_fontsize": 12.0,
        "description": "03 — Control Meets Signal: sig~ and number~ bridge the control-signal divide (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 400.0, 24.0 ],
                    "text": "03 — Control Meets Signal"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 48.0, 450.0, 20.0 ],
                    "text": "How do I connect Max controls to MSP signals?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-topc02",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 78.0, 580.0, 19.0 ],
                    "text": "In Max, the number box updates only when you change the slider. In MSP, sig~ continuously",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-topc02b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 97.0, 580.0, 19.0 ],
                    "text": "outputs the value at 44,100 samples per second — that's what the ~ means.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-section-control",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 80.0, 135.0, 200.0, 20.0 ],
                    "text": "CONTROL DOMAIN"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-section-signal",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 135.0, 200.0, 20.0 ],
                    "text": "SIGNAL DOMAIN"
                }
            },
            {
                "box": {
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 160.0, 20.0, 120.0 ],
                    "floatoutput": 1,
                    "min": 80.0,
                    "size": 320.0
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-slider",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 200.0, 100.0, 19.0 ],
                    "text": "Frequency (Hz)"
                }
            },
            {
                "box": {
                    "id": "obj-number",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 130.0, 310.0, 56.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-number",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 340.0, 280.0, 19.0 ],
                    "text": "The number box updates only when you move the slider."
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 480.0, 310.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-sig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 310.0, 430.0, 19.0 ],
                    "text": "sig~ — converts a single Max number into a continuous audio-rate signal."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-sig2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 329.0, 430.0, 19.0 ],
                    "text": "This is the bridge between Max and MSP."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-numtilde",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 480.0, 355.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-numtilde",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 355.0, 430.0, 19.0 ],
                    "text": "number~ (mode 2) — displays the current value of a signal. Updates about 4 times"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-numtilde2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 374.0, 430.0, 19.0 ],
                    "text": "per second (not at audio rate — that would be too fast to read)."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-why-sig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 400.0, 530.0, 19.0 ],
                    "text": "Why sig~ instead of connecting the slider directly? Signal inlets need a signal input.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-why-sig2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 419.0, 530.0, 19.0 ],
                    "text": "sig~ provides that continuous stream.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-hear",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 445.0, 500.0, 19.0 ],
                    "text": "This slider controls frequency in Hz. Move it and hear the pitch change in real time."
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 280.0, 470.0, 45.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-amp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 280.0, 510.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-ref",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.0, 510.0, 350.0, 19.0 ],
                    "text": "cycle~, *~, output chain — see Patches 01-02 for details",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 400.0, 460.0, 80.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-scope",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 470.0, 460.0, 19.0 ],
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
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 280.0, 545.0, 48.0, 100.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-03 Vol",
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
                    "patching_rect": [ 260.0, 660.0, 88.0, 22.0 ],
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
                    "patching_rect": [ 360.0, 660.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 700.0, 188.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 685.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 220.0, 130.0, 55.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-msg-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 155.0, 35.0, 22.0 ],
                    "text": "185."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-msg-init", 0 ],
                    "source": [ "obj-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-slider", 0 ],
                    "source": [ "obj-msg-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-number", 0 ],
                    "source": [ "obj-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig", 0 ],
                    "source": [ "obj-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-numtilde", 0 ],
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cycle", 0 ],
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-amp", 0 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope", 0 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "source": [ "obj-amp", 0 ]
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
            }
        ]
    }
}
