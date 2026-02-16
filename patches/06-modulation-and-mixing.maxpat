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
        "rect": [ 369.0, 136.0, 1100.0, 850.0 ],
        "description": "06 — Modulation and Mixing: phasor~ automation, +~ voice mixing, multi-voice architecture (MUSC 320 Week 7)",
        "boxes": [
            {
                "box": {
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
                    "id": "obj-2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 594.20290350914, 128.98550832271576, 192.0, 200.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 664.492759168148, 271.01449501514435, 106.0, 29.0 ],
                    "text": "fades in and out by multiplying the signal",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
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
                    "patching_rect": [ 29.710145175457, 12.318840682506561, 248.55072671175003, 24.0 ],
                    "text": "06 — Modulation and Mixing"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.710145175457, 38.40579742193222, 248.55072671175003, 20.0 ],
                    "text": "control signals and combining sources"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.68116015195847, 166.6666680574417, 257.24637895822525, 43.0 ],
                    "text": "cycle~ 0 -- when cycle~ has 0 as argument, it reads frequency from the LEFT inlet. Here we use the RIGHT inlet (phase), driven by phasor~.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c4",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 78.26087021827698, 230.43478453159332, 200.00000166893005, 56.0 ],
                    "text": "*~ 0.5 -> +~ 0.5 -- converts the -1..1 cycle~ output to a 0..1 range (unipolar). This is a common and useful MSP pattern.",
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
                    "patching_rect": [ 71.0144933462143, 458.69565600156784, 500.0, 19.0 ],
                    "text": "+~ adds signals just like + adds numbers. Here it mixes two voices into one output.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-c6",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 404.3478294610977, 230.43478453159332, 178.0, 68.0 ],
                    "text": "Voice B: The 3 Hz difference between 220 and 223 creates a gentle beating effect -- two nearly identical frequencies interfere, creating a pulsing volume.",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.12, 0.2, 0.12, 1.0 ],
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "obj-c8",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.811596930027, 530.4347870349884, 274.0, 43.0 ],
                    "text": "EXPERIMENT: Change phasor~ from 0.5 to 5.0 — hear how the modulation speeds up? Now try 0.01 for a very slow sweep.",
                    "textcolor": [ 0.3, 0.65, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-master",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 625.3623240590096, 136.9565228819847, 130.0, 20.0 ],
                    "text": "MASTER ON/OFF"
                }
            },
            {
                "box": {
                    "id": "obj-master-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 625.3623240590096, 158.69565349817276, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-master-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 625.3623240590096, 205.07246547937393, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-master-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 625.3623240590096, 239.8550744652748, 42.0, 22.0 ],
                    "text": "0 100"
                }
            },
            {
                "box": {
                    "id": "obj-master-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.3623244762421, 239.8550744652748, 57.0, 22.0 ],
                    "text": "0, 1. 500"
                }
            },
            {
                "box": {
                    "id": "obj-master-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 625.3623240590096, 274.6376834511757, 37.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-voiceA",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.710145175457, 77.53623253107071, 200.0, 20.0 ],
                    "text": "Voice A: Tremolo"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.710145175457, 99.27536314725876, 220.0, 18.0 ],
                    "text": "LFO: phasor~ -> cycle~ phase -> unipolar",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 29.710145175457, 122.46376913785934, 72.0, 22.0 ],
                    "text": "phasor~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 32.608695924282074, 166.6666680574417, 53.0, 22.0 ],
                    "text": "cycle~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 29.710145175457, 230.43478453159332, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-lfo-offset",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 29.710145175457, 260.1449297070503, 43.0, 22.0 ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-tone-A",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 175.36232030391693, 295.65217638015747, 66.0, 22.0 ],
                    "text": "cycle~ 330"
                }
            },
            {
                "box": {
                    "id": "obj-am",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 175.36232030391693, 327.5362346172333, 32.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-lfo",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 29.710145175457, 360.14493054151535, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.710145175457, 412.31884402036667, 130.0, 18.0 ],
                    "text": "LFO (0 to 1 cycling)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-voiceA",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 175.36232030391693, 360.14493054151535, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-voiceA",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 175.36232030391693, 412.31884402036667, 130.0, 18.0 ],
                    "text": "Voice A (tremolo)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-lbl-voiceB",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 360.14493054151535, 77.53623253107071, 200.0, 20.0 ],
                    "text": "Voice B: Drone"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-beat",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 360.14493054151535, 99.27536314725876, 159.0, 18.0 ],
                    "text": "Two detuned oscillators = beating",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-drone-fund",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.14493054151535, 170.28985649347305, 66.0, 22.0 ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "id": "obj-drone-det",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.14493054151535, 200.72463935613632, 66.0, 22.0 ],
                    "text": "cycle~ 223"
                }
            },
            {
                "box": {
                    "id": "obj-drone-scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.14493054151535, 230.43478453159332, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-drone-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.14493054151535, 295.65217638015747, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope-voiceB",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 418.8405832052231, 360.14493054151535, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-scope-voiceB",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 418.8405832052231, 412.31884402036667, 130.0, 18.0 ],
                    "text": "Voice B (beating drone)",
                    "textcolor": [ 0.6, 0.6, 0.6, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-voice-mix",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 23.913043677806854, 457.2463806271553, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-master-mult",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 42.75362354516983, 489.8550765514374, 32.0, 22.0 ],
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
                    "patching_rect": [ 34.78260898590088, 545.65217846632, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -12 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Build-06 Vol",
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
                    "id": "obj-clip-explain",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 89.130435526371, 628.2608748078346, 214.0, 43.0 ],
                    "text": "clip~ limits signal to -0.9/0.9 — safety net preventing dangerously loud output when mixing signals",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-clip-l",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 34.78260898590088, 695.6521797180176, 88.0, 22.0 ],
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
                    "patching_rect": [ 144.92753744125366, 695.6521797180176, 88.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 34.78260898590088, 735.5072525143623, 37.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 255.07246589660645, 695.6521797180176, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-ann-param-lfo",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 109.42029076814651, 122.46376913785934, 139.85507154464722, 31.0 ],
                    "text": "0.5 Hz = one cycle every 2 seconds (slow LFO)",
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
                    "patching_rect": [ 20.289855241775513, 65.94202953577042, 324.5719068646431, 372.4637712240219 ],
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
                    "patching_rect": [ 20.289855241775513, 442.02898919582367, 550.7692356109619, 76.6153392791748 ],
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
                    "patching_rect": [ 20.289855241775513, 530.4347870349884, 300.0, 230.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.3, 0.55, 0.1 ],
                    "id": "obj-4",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 348.55072754621506, 65.94202953577042, 242.02898752689362, 372.4637712240219 ],
                    "rounded": 12
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-scope-voiceA", 0 ],
                    "midpoints": [ 184.86232030391693, 350.3623186349869, 184.86232030391693, 350.3623186349869 ],
                    "order": 0,
                    "source": [ "obj-am", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-voice-mix", 0 ],
                    "midpoints": [ 184.86232030391693, 350.3623186349869, 171.0, 350.3623186349869, 171.0, 443.3623186349869, 33.413043677806854, 443.3623186349869 ],
                    "order": 1,
                    "source": [ "obj-am", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "midpoints": [ 44.28260898590088, 719.3623186349869, 44.28260898590088, 719.3623186349869 ],
                    "source": [ "obj-clip-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "midpoints": [ 154.42753744125366, 731.3623186349869, 62.28260898590088, 731.3623186349869 ],
                    "source": [ "obj-clip-r", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-drone-scale", 0 ],
                    "midpoints": [ 369.64493054151535, 224.36231863498688, 369.64493054151535, 224.36231863498688 ],
                    "source": [ "obj-drone-det", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-drone-sum", 0 ],
                    "midpoints": [ 369.64493054151535, 194.36231863498688, 353.62771746329963, 194.36231863498688, 353.62771746329963, 281.3623186349869, 369.64493054151535, 281.3623186349869 ],
                    "source": [ "obj-drone-fund", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-drone-sum", 1 ],
                    "midpoints": [ 369.64493054151535, 281.3623186349869, 382.64493054151535, 281.3623186349869 ],
                    "source": [ "obj-drone-scale", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-voiceB", 0 ],
                    "midpoints": [ 369.64493054151535, 344.3623186349869, 428.3405832052231, 344.3623186349869 ],
                    "order": 0,
                    "source": [ "obj-drone-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-voice-mix", 1 ],
                    "midpoints": [ 369.64493054151535, 443.3623186349869, 46.413043677806854, 443.3623186349869 ],
                    "order": 1,
                    "source": [ "obj-drone-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clip-l", 0 ],
                    "midpoints": [ 44.28260898590088, 683.3623186349869, 44.28260898590088, 683.3623186349869 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-clip-r", 0 ],
                    "midpoints": [ 51.53260898590088, 689.3623186349869, 154.42753744125366, 689.3623186349869 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lfo-scale", 0 ],
                    "midpoints": [ 42.108695924282074, 227.36231863498688, 39.210145175457, 227.36231863498688 ],
                    "source": [ "obj-lfo-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-am", 1 ],
                    "midpoints": [ 39.210145175457, 323.3623186349869, 197.86232030391693, 323.3623186349869 ],
                    "order": 0,
                    "source": [ "obj-lfo-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-lfo", 0 ],
                    "midpoints": [ 39.210145175457, 284.3623186349869, 39.210145175457, 284.3623186349869 ],
                    "order": 1,
                    "source": [ "obj-lfo-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lfo-offset", 0 ],
                    "midpoints": [ 39.210145175457, 254.36231863498688, 39.210145175457, 254.36231863498688 ],
                    "source": [ "obj-lfo-scale", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-mult", 1 ],
                    "midpoints": [ 634.8623240590096, 443.73766739922576, 65.25362354516983, 443.73766739922576 ],
                    "source": [ "obj-master-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "midpoints": [ 52.25362354516983, 530.3623186349869, 73.28260898590088, 530.3623186349869 ],
                    "order": 0,
                    "source": [ "obj-master-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "midpoints": [ 52.25362354516983, 542.3623186349869, 44.28260898590088, 542.3623186349869 ],
                    "order": 1,
                    "source": [ "obj-master-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-line", 0 ],
                    "midpoints": [ 634.8623240590096, 263.3623186349869, 634.8623240590096, 263.3623186349869 ],
                    "source": [ "obj-master-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-line", 0 ],
                    "midpoints": [ 684.8623244762421, 263.3623186349869, 636.0, 263.3623186349869, 636.0, 269.3623186349869, 634.8623240590096, 269.3623186349869 ],
                    "source": [ "obj-master-on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-off", 0 ],
                    "midpoints": [ 634.8623240590096, 227.36231863498688, 634.8623240590096, 227.36231863498688 ],
                    "source": [ "obj-master-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-on", 0 ],
                    "midpoints": [ 655.3623240590096, 233.36231863498688, 684.8623244762421, 233.36231863498688 ],
                    "source": [ "obj-master-sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-sel", 0 ],
                    "midpoints": [ 634.8623240590096, 191.36231863498688, 634.8623240590096, 191.36231863498688 ],
                    "source": [ "obj-master-toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lfo-cycle", 1 ],
                    "midpoints": [ 39.210145175457, 158.36231863498688, 76.10869592428207, 158.36231863498688 ],
                    "source": [ "obj-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-am", 0 ],
                    "midpoints": [ 184.86232030391693, 320.3623186349869, 184.86232030391693, 320.3623186349869 ],
                    "source": [ "obj-tone-A", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-master-mult", 0 ],
                    "midpoints": [ 33.413043677806854, 483.13552971719764, 52.25362354516983, 483.13552971719764 ],
                    "source": [ "obj-voice-mix", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "Build-06 Vol", "Vol", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}