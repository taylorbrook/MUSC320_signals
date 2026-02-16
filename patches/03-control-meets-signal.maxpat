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
        "description": "03 — Control Meets Signal: sig~ and number~ bridge the control-signal divide (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-2",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.33333206176758, 301.36054134368896, 50.0, 22.0 ]
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
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 78.0, 580.0, 31.0 ],
                    "text": "In Max, the number box updates only when you change the slider. In MSP, sig~ continuously outputs the value at the sample rate, usually 48,000 or 44,100 samples per second — that's what the ~ signifies.",
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
                    "patching_rect": [ 99.99999904632568, 265.0, 129.9319715499878, 20.0 ],
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
                    "patching_rect": [ 359.7826018333435, 264.4565165042877, 116.0, 20.0 ],
                    "text": "SIGNAL DOMAIN"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "min": 80.0,
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 160.0, 20.0, 120.0 ],
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
                    "text": "Slider"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-number",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 83.67346858978271, 336.0, 168.0272092819214, 31.0 ],
                    "text": "The float number box updates only when you move the slider."
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 359.7826018333435, 309.7826027870178, 31.0, 22.0 ],
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
                    "patching_rect": [ 397.8260793685913, 311.2826027870178, 430.0, 19.0 ],
                    "text": "sig~ — converts a single Max number into a continuous audio-rate signal."
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
                    "patching_rect": [ 359.7826018333435, 358.6956453323364, 65.98639392852783, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-numtilde",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 434.78260040283203, 353.260862827301, 349.5798110961914, 31.0 ],
                    "text": "number~ — displays the current value of a signal. Updates about 4 times per second (not at audio rate — that would be too fast to read)."
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 77.8985505104065, 463.0434694290161, 45.0, 22.0 ],
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
                    "patching_rect": [ 77.8985505104065, 503.2608599662781, 40.0, 22.0 ],
                    "text": "*~ 0.5"
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
                    "patching_rect": [ 133.69564962387085, 454.3478174209595, 754.3478116989136, 81.521737575531 ]
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
                    "patching_rect": [ 97.46376752853394, 574.9999890327454, 48.0, 100.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
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
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 97.46376752853394, 705.434769153595, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 220.0, 130.0, 58.0, 22.0 ],
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
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-freq",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 83.67346858978271, 156.5, 134.32653141021729, 19.0 ],
                    "text": "185 = F# below middle C",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-range",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 220.0, 200.0, 19.0 ],
                    "text": "Range: 80-400 (set using inspector)",
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
                    "patching_rect": [ 64.13043355941772, 447.826078414917, 834.7825927734375, 97.8260850906372 ],
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
                    "patching_rect": [ 65.2173900604248, 119.56521511077881, 833.6956362724304, 309.7826027870178 ],
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
                    "patching_rect": [ 63.76811599731445, 559.7825980186462, 117.0, 201.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 87.3985505104065, 561.0, 135.96376752853394, 561.0 ],
                    "order": 0,
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 87.3985505104065, 561.0, 106.96376752853394, 561.0 ],
                    "order": 1,
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-amp", 0 ],
                    "midpoints": [ 87.3985505104065, 486.0, 87.3985505104065, 486.0 ],
                    "order": 1,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope", 0 ],
                    "midpoints": [ 87.3985505104065, 486.0, 129.0, 486.0, 129.0, 450.0, 143.19564962387085, 450.0 ],
                    "order": 0,
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "midpoints": [ 114.21376752853394, 690.0, 132.96376752853394, 690.0 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "midpoints": [ 106.96376752853394, 675.0, 106.96376752853394, 675.0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-init", 0 ],
                    "midpoints": [ 229.5, 153.0, 229.5, 153.0 ],
                    "source": [ "obj-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-slider", 0 ],
                    "midpoints": [ 229.5, 189.0, 267.0, 189.0, 267.0, 156.0, 289.5, 156.0 ],
                    "source": [ "obj-msg-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cycle", 0 ],
                    "midpoints": [ 369.2826018333435, 345.0, 261.0, 345.0, 261.0, 441.0, 87.3985505104065, 441.0 ],
                    "order": 1,
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-numtilde", 0 ],
                    "midpoints": [ 369.2826018333435, 333.0, 369.2826018333435, 333.0 ],
                    "order": 0,
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 289.5, 297.0, 142.83333206176758, 297.0 ],
                    "order": 1,
                    "source": [ "obj-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig", 0 ],
                    "midpoints": [ 289.5, 294.0, 369.2826018333435, 294.0 ],
                    "order": 0,
                    "source": [ "obj-slider", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-03 Vol", "Vol", 0 ],
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