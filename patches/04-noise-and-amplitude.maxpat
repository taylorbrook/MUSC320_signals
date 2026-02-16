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
        "description": "04 — Noise and Amplitude: noise~ as a signal source, *~ as amplitude control (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 449.0, 565.0, 172.0, 33.0 ],
                    "presentation_linecount": 3,
                    "text": "bonus: check out the help files for these objects:"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 449.0, 637.0, 58.0, 22.0 ],
                    "text": "onepole~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 449.0, 605.0, 38.0, 22.0 ],
                    "text": "pink~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 211.0, 499.0, 482.0, 19.0 ],
                    "text": "+~ telling the live.gain object to go to -12db on launch so it's not too loud when I open the patch",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 128.0, 497.0, 81.0, 22.0 ],
                    "text": "loadmess -12"
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
                    "patching_rect": [ 30.0, 10.0, 400.0, 24.0 ],
                    "text": "04 — Noise and Amplitude"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 36.0, 350.0, 20.0 ],
                    "text": "What about non-tonal sound?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 62.0, 620.0, 19.0 ],
                    "text": "noise~ -- generates white noise: a random value at every sample. Full bandwidth, full amplitude.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 452.0, 500.0, 19.0 ],
                    "text": "+~ adds two signals together. We'll explore this more in Patch 06.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 51.0, 100.0, 200.0, 20.0 ],
                    "text": "NOISE (aperiodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 51.0, 125.0, 45.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-lbl-slider",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 179.0, 200.0, 19.0 ],
                    "text": "Noise Amplitude (0 to 1)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-slider",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 51.0, 230.0, 20.0, 100.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 51.0, 345.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-mult-noise",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 51.0, 392.0, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-cycle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 635.0, 100.0, 155.0, 20.0 ],
                    "text": "TONE (periodic signal)"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 635.0, 125.0, 66.0, 22.0 ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "id": "obj-mult-tone",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 635.0, 164.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 51.0, 450.0, 32.0, 22.0 ],
                    "text": "+~"
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
                    "patching_rect": [ 51.0, 490.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-04 Vol",
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
                    "patching_rect": [ 45.0, 649.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 191.0, 270.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 191.0, 295.0, 40.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-init-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 191.0, 320.0, 29.5, 22.0 ],
                    "text": "0.3"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-bridge-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 128.0, 520.0, 19.0 ],
                    "text": "random gives one random number per bang — noise~ gives one every sample (48,000 or 44,100 per second).",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-noise",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.0, 345.0, 250.0, 19.0 ],
                    "text": "0.3 = 30% amplitude (safe starting level)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-troubleshoot-04",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 153.0, 520.0, 19.0 ],
                    "text": "WARNING: noise~ at full amplitude is loud! Always start with the amplitude slider low.",
                    "textcolor": [ 0.85, 0.6, 0.2, 1.0 ]
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
                    "patching_rect": [ 31.0, 90.0, 590.0, 119.0 ],
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
                    "patching_rect": [ 31.0, 220.0, 330.0, 209.0 ],
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
                    "patching_rect": [ 31.0, 480.0, 89.0, 225.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
                    "id": "obj-6",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 629.0, 90.0, 174.0, 119.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 137.5, 520.0, 111.0, 520.0, 111.0, 487.0, 60.5, 487.0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-tone", 0 ],
                    "midpoints": [ 644.5, 148.0, 644.5, 148.0 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "midpoints": [ 67.75, 643.0, 80.5, 643.0 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "midpoints": [ 60.5, 628.0, 54.5, 628.0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-slider", 0 ],
                    "midpoints": [ 200.5, 343.0, 186.0, 343.0, 186.0, 331.0, 81.0, 331.0, 81.0, 226.0, 60.5, 226.0 ],
                    "source": [ "obj-init-msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-trigger", 0 ],
                    "midpoints": [ 200.5, 295.0, 200.5, 295.0 ],
                    "source": [ "obj-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sum", 0 ],
                    "midpoints": [ 60.5, 415.0, 60.5, 415.0 ],
                    "source": [ "obj-mult-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sum", 1 ],
                    "midpoints": [ 644.5, 481.0, 120.0, 481.0, 120.0, 472.0, 84.0, 472.0, 84.0, 445.0, 73.5, 445.0 ],
                    "source": [ "obj-mult-tone", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-noise", 0 ],
                    "midpoints": [ 60.5, 217.0, 36.0, 217.0, 36.0, 379.0, 60.5, 379.0 ],
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult-noise", 1 ],
                    "midpoints": [ 60.5, 379.0, 73.5, 379.0 ],
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig", 0 ],
                    "midpoints": [ 60.5, 331.0, 60.5, 331.0 ],
                    "source": [ "obj-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 60.5, 487.0, 89.5, 487.0 ],
                    "order": 0,
                    "source": [ "obj-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 60.5, 475.0, 60.5, 475.0 ],
                    "order": 1,
                    "source": [ "obj-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-msg", 0 ],
                    "midpoints": [ 200.5, 319.0, 200.5, 319.0 ],
                    "source": [ "obj-trigger", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-04 Vol", "Vol", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}