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
        "rect": [ 100.0, 100.0, 900.0, 750.0 ],
        "default_fontsize": 12.0,
        "description": "05 \u2014 Envelopes: line~ and *~ create amplitude envelopes (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 10.0, 350.0, 24.0 ],
                    "text": "05 \u2014 Envelopes"
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
                    "text": "How do I shape sound over time?"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 62.0, 520.0, 19.0 ],
                    "text": "line~ -- the signal version of 'line' (which you already know from Max). It ramps smoothly between values at audio rate.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 82.0, 520.0, 19.0 ],
                    "text": "0, 1. 500 -- start at 0 (silence), then ramp to 1.0 over 500 milliseconds (fade in)",
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
                    "patching_rect": [ 350.0, 102.0, 520.0, 19.0 ],
                    "text": "0 100 -- ramp to 0 over 100 milliseconds (fade out, faster than the fade in)",
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
                    "patching_rect": [ 350.0, 128.0, 530.0, 19.0 ],
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
                    "patching_rect": [ 350.0, 148.0, 530.0, 19.0 ],
                    "text": "This is an AMPLITUDE ENVELOPE -- it shapes the volume of a sound over time.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c5b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 168.0, 530.0, 19.0 ],
                    "text": "Every real instrument has one (pluck = fast attack, slow decay; bowed = slow attack, sustained)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-c6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 198.0, 530.0, 19.0 ],
                    "text": "TRY THIS: change 500 to 2000 -- hear the difference? Now try 50 for a fast punch.",
                    "textcolor": [ 0.4, 0.6, 0.4, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 228.0, 530.0, 19.0 ],
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
                    "patching_rect": [ 350.0, 248.0, 530.0, 19.0 ],
                    "text": "toggle -> sel 0 1 is a control-domain pattern you know from Max. line~ is the new signal-domain part.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 280.0, 400.0, 19.0 ],
                    "text": "Reference: cycle~, *~, output chain -- see Patches 01-02 for details",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c-comma",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 420.0, 290.0, 19.0 ],
                    "text": "The comma separates: immediate-set (0)",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c-comma2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 438.0, 290.0, 19.0 ],
                    "text": "from the ramp target-time pair (1. 500)",
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
                    "patching_rect": [ 30.0, 62.0, 200.0, 20.0 ],
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
                    "patching_rect": [ 120.0, 172.0, 80.0, 20.0 ],
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
                    "patching_rect": [ 160.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 160.0, 240.0, 60.0, 22.0 ],
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
                    "patching_rect": [ 160.0, 275.0, 42.0, 22.0 ],
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
                    "patching_rect": [ 210.0, 275.0, 57.0, 22.0 ],
                    "text": "0, 1. 500"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-fadeout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 125.0, 300.0, 72.0, 18.0 ],
                    "text": "fade out (fast)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-fadein",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 300.0, 70.0, 18.0 ],
                    "text": "fade in (slow)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 160.0, 335.0, 37.0, 22.0 ],
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
                    "patching_rect": [ 30.0, 395.0, 32.0, 22.0 ],
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
                    "patching_rect": [ 350.0, 335.0, 180.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-env",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 397.0, 180.0, 18.0 ],
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
                    "patching_rect": [ 350.0, 425.0, 180.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-tone",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 487.0, 180.0, 18.0 ],
                    "text": "*~ output (shaped tone)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 30.0, 500.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12.0 ],
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
                    "id": "obj-clip-l",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 650.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-clip-r",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 650.0, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 680.0, 37.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 650.0, 45.0, 45.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [ "obj-cycle", 0 ],
                    "destination": [ "obj-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-toggle", 0 ],
                    "destination": [ "obj-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-sel", 0 ],
                    "destination": [ "obj-msg-off", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-sel", 1 ],
                    "destination": [ "obj-msg-on", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-msg-off", 0 ],
                    "destination": [ "obj-line", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-msg-on", 0 ],
                    "destination": [ "obj-line", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-line", 0 ],
                    "destination": [ "obj-mult", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-line", 0 ],
                    "destination": [ "obj-scope-env", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-mult", 0 ],
                    "destination": [ "obj-scope-tone", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-mult", 0 ],
                    "destination": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-mult", 0 ],
                    "destination": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-gain", 0 ],
                    "destination": [ "obj-clip-l", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-gain", 1 ],
                    "destination": [ "obj-clip-r", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-clip-l", 0 ],
                    "destination": [ "obj-dac", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-clip-r", 0 ],
                    "destination": [ "obj-dac", 1 ]
                }
            }
        ]
    }
}
