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
        "rect": [ 100.0, 100.0, 929.0, 777.0 ],
        "description": "05 — Envelopes: line~ and *~ create amplitude envelopes (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "autofit": 1,
                    "forceaspect": 1,
                    "id": "obj-5",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
                    "patching_rect": [ 353.0, 475.51019954681396, 297.0, 148.5 ],
                    "pic": "diagrams/adsr-envelope.svg"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 353.0, 435.7142815589905, 297.0, 33.0 ],
                    "presentation_linecount": 2,
                    "text": "Attack, decay, sustain, release - a common way of creating and understanding envelopes:"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.265305519104, 636.7346878051758, 234.0, 18.0 ],
                    "text": "as a bonus, check out the help file for this object",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 353.0, 634.6938714981079, 61.0, 22.0 ],
                    "text": "adsr~"
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
                    "patching_rect": [ 30.0, 6.338028252124786, 350.0, 24.0 ],
                    "text": "05 — Envelopes"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 32.39436662197113, 350.0, 20.0 ],
                    "text": "Shaping sound over time"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 215.39436662197113, 520.0, 19.0 ],
                    "text": "line~ is the signal version of line — smooth ramps at audio rate instead of message rate.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 158.39436662197113, 351.3333438038826, 19.0 ],
                    "text": "0, 1. 500 -- start at 0 (silence), then ramp to 1.0 over 500 milliseconds",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 177.39436662197113, 351.3333438038826, 19.0 ],
                    "text": "0 100 -- ramp to 0 over 100 milliseconds",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0, 369.0, 546.0, 19.0 ],
                    "text": "Multiplying the tone by line~'s output is like turning a volume knob: 0 = silent, 1 = full volume, 0.5 = half volume",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 309.0, 266.89437249302864, 416.40815782546997, 19.0 ],
                    "text": "This is an AMPLITUDE ENVELOPE -- it shapes the volume of a sound over time.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ],
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-c6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.89795565605164, 685.0, 530.0, 31.0 ],
                    "text": "EXPERIMENT: Change the fade-in from 500 to 2000 — how does a 2-second fade feel? Now try 50 for a percussive attack.",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 122.39436662197113, 340.14084953069687, 31.0 ],
                    "text": "sel 0 1 -- routes toggle output: 0 (off) triggers the fade-out message, 1 (on) triggers the fade-in message",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 238.0, 87.39436662197113, 372.36274442076683, 19.0 ],
                    "text": "toggle -> sel 0 1 is a control-domain pattern.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-source",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 61.74489736557007, 98.0, 20.0 ],
                    "text": "Sound source"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 88.0, 66.0, 22.0 ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-toggle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 191.0, 61.74489736557007, 80.0, 20.0 ],
                    "text": "ON / OFF"
                }
            },
            {
                "box": {
                    "id": "obj-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 81.39436662197113, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 205.0, 126.39436662197113, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-msg-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 205.0, 161.39436662197113, 42.0, 22.0 ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-msg-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 165.39436662197113, 57.0, 22.0 ],
                    "text": "0, 1. 500"
                }
            },
            {
                "box": {
                    "id": "obj-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 161.0, 213.39436662197113, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-mult",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 369.0, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-env",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 182.0, 249.39436662197113, 124.99999612569809, 54.00001174211502 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-env",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 308.9999961256981, 249.39436662197113, 180.0, 18.0 ],
                    "text": "line~ output (envelope shape)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-tone",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 110.0, 489.0, 180.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-tone",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 551.0, 180.0, 18.0 ],
                    "text": "*~ output (shaped tone)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
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
                    "patching_rect": [ 30.0, 500.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-05 Vol",
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
                    "patching_rect": [ 23.5, 658.0, 45.0, 45.0 ]
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
                    "patching_rect": [ 23.5, 54.39436662197113, 123.0, 72.0 ],
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
                    "patching_rect": [ 155.0, 54.39436662197113, 570.40815782547, 257.0408124923706 ],
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
                    "patching_rect": [ 15.0, 485.0, 85.0, 231.0 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-mult", 0 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mult", 1 ],
                    "order": 1,
                    "source": [ "obj-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-env", 0 ],
                    "order": 0,
                    "source": [ "obj-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-line", 0 ],
                    "source": [ "obj-msg-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-line", 0 ],
                    "source": [ "obj-msg-on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "order": 1,
                    "source": [ "obj-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "order": 2,
                    "source": [ "obj-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-tone", 0 ],
                    "order": 0,
                    "source": [ "obj-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-off", 0 ],
                    "source": [ "obj-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-on", 0 ],
                    "source": [ "obj-sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel", 0 ],
                    "source": [ "obj-toggle", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-05 Vol", "Vol", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}