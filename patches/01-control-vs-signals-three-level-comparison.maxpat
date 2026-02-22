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
        "rect": [ 106.0, 103.0, 1226.0, 857.0 ],
        "description": "Three Levels of Processing in Max: control rate (metro) vs signal rate (phasor~) vs sample rate (gen~)",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.49179553985596, 104.0, 189.8524670600891, 69.0 ],
                    "text": "~ hint: look for the tilda! This means the object is working with signals or at least outputting a signal.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "obj-40",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 754.9180111885071, 184.0, 125.0, 40.0 ],
                    "text": "ezdac~ turns on and off audio",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-37",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 791.8032560348511, 571.3114590644836, 95.08196449279785, 40.0 ],
                    "text": "live.scope~ to visualize the signal as a waveform",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-36",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 607.4153212308884, 198.5, 100.0, 29.0 ],
                    "text": "counting samples between flags",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.3934235572815, 511.4753952026367, 212.0, 29.0 ],
                    "text": "snapshot~ takes a sample of the signal at the rate of the first argument in milliseconds",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-34",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 628.4999985694885, 472.3114619255066, 238.52458333969116, 29.0 ],
                    "text": "*~ multiplies a signal, I'm scaling it down a little just so it looks a little neater on the live.scope~ object",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-33",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 638.3360638618469, 433.78687286376953, 146.72130727767944, 29.0 ],
                    "text": "cycle~ produces a sine wave at the rate of the first argument",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-32",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 254.91802549362183, 508.37703466415405, 100.81966924667358, 29.0 ],
                    "text": "sig~ converts numbers into signals",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 262.0901560783386, 554.7868685722351, 109.0, 29.0 ],
                    "text": "number~ visualizes the singal",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-30",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 380.0, 590.7458848953247, 109.0, 29.0 ],
                    "text": "multislider visualizes the output",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-29",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 117.21311140060425, 585.2458848953247, 109.0, 40.0 ],
                    "text": "the ouput of the drunk is scaled down and converted to a float",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-28",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 494.2622809410095, 80.0, 96.0 ],
                    "text": "drunk moves between 0 and the first argument with step sizes at or lower than the second argument -1",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 467.57375717163086, 80.0, 18.0 ],
                    "text": "every 100ms",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 578.5, 475.5901503562927, 40.0, 22.0 ],
                    "text": "*~ 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 374.5901532173157, 472.1311340332031, 125.0, 108.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 5
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-25",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 666.3934235572815, 549.1803121566772, 122.13114404678345, 82.78688287734985 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 117.21311140060425, 436.06556129455566, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 117.21311140060425, 465.57375717163086, 63.0, 22.0 ],
                    "text": "metro 100"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 117.21311140060425, 558.0655570030212, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 117.21311140060425, 511.6557230949402, 72.0, 22.0 ],
                    "text": "drunk 100 5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 397.5409722328186, 420.0, 27.0 ],
                    "text": "Convert Between Control Rate to Signal Rate:"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 578.5, 437.06556129455566, 53.0, 22.0 ],
                    "text": "cycle~ 1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-12",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 578.5, 549.3606400489807, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 205.53278064727783, 558.0655570030212, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 218.03278064727783, 511.6557230949402, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 578.5, 511.6557230949402, 81.0, 22.0 ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-7",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 218.03278064727783, 455.73769187927246, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 515.385247707367, 511.6557230949402, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.475409507751465, 10.655737400054932, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-2",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 357.0, 185.0, 103.0, 56.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 555.0, 115.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 179.50819158554077, 8.196721076965332, 420.0, 27.0 ],
                    "text": "Three Levels of Processing in Max"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.7764705882352941, 0.7764705882352941, 0.7764705882352941, 0.0 ],
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col1-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 44.0, 190.0, 22.0 ],
                    "text": "CONTROL RATE",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col1-sub",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 66.0, 200.0, 56.0 ],
                    "text": "~1,000 updates/sec or 1 ms at high priority scheduler rate.\n30hz (33.33ms updates at refresh rate.\n"
                }
            },
            {
                "box": {
                    "id": "obj-toggle1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 70.0, 114.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 70.0, 145.0, 72.0, 22.0 ],
                    "text": "metro 500"
                }
            },
            {
                "box": {
                    "id": "obj-counter",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 70.0, 175.0, 75.0, 22.0 ],
                    "text": "counter 0 10"
                }
            },
            {
                "box": {
                    "id": "obj-num1",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 101.0, 209.33333957195282, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-multislider1",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.60655355453491, 250.0, 190.0, 90.0 ],
                    "setminmax": [ 0.0, 10.0 ],
                    "size": 100,
                    "slidercolor": [ 0.9, 0.4, 0.1, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col2-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 271.3114676475525, 44.0, 189.8524670600891, 22.0 ],
                    "text": "SIGNAL RATE",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col2-sub",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 271.3114676475525, 66.0, 199.6885323524475, 31.0 ],
                    "text": "44,100 or 48,000 samples/sec \nas audio vectors."
                }
            },
            {
                "box": {
                    "id": "obj-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 269.3278601169586, 183.67212557792664, 72.0, 22.0 ],
                    "text": "phasor~ 2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-numtilde2",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 284.0901560783386, 219.0, 65.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope2",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 270.0, 250.0, 190.0, 90.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-col3-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 510.6557230949402, 44.0, 182.34427690505981, 22.0 ],
                    "text": "SAMPLE RATE (gen~)",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-col3-sub",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 510.6557230949402, 66.0, 182.34427690505981, 31.0 ],
                    "text": "44,100 or 48,000 samples/sec\nas individual samples."
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 868.0, 313.0, 450.0, 350.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 47.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen-accum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 50.0, 92.0, 85.0, 22.0 ],
                                    "text": "counter 24000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen-out1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 133.0, 40.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-gen-accum", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-gen-out1", 0 ],
                                    "source": [ "obj-gen-accum", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 555.0, 155.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-numtilde3",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 534.5, 202.0, 65.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.1, 0.1, 0.12, 1.0 ],
                    "id": "obj-scope3",
                    "interval": 8.0,
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 510.0, 250.0, 190.0, 90.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 759.8360438346863, 225.8032774925232, 101.63934135437012, 101.63934135437012 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-ann-today",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.9016251564026, 348.3606457710266, 211.47540378570557, 33.0 ],
                    "text": "Today we're learning signal rate. \ngen~ is a preview of what's deeper.",
                    "textcolor": [ 0.4, 0.4, 0.8, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-toggle-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 96.0, 119.0, 60.0, 18.0 ],
                    "text": "on/off",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-metro-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 144.0, 145.0, 80.0, 18.0 ],
                    "text": "every 500ms",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-counter-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 175.0, 70.0, 18.0 ],
                    "text": "counts 0-100",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-gen-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 155.0, 100.0, 18.0 ],
                    "text": "per-sample code",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-ann-toggle3-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 581.0, 115.0, 85.0, 18.0 ],
                    "text": "reset trigger",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.9, 0.4, 0.1, 0.46 ],
                    "id": "obj-38",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 27.86885166168213, 427.0491681098938, 477.86883878707886, 210.65573167800903 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.5, 0.85, 0.7 ],
                    "id": "obj-39",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.5737557411194, 427.0491681098938, 386.8852348327637, 210.65573167800903 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.9, 0.4, 0.1, 0.46 ],
                    "id": "obj-41",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 27.86885166168213, 44.26229381561279, 211.47540378570557, 300.8196635246277 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.5, 0.85, 0.7 ],
                    "id": "obj-42",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 259.836058139801, 44.26229381561279, 211.16394186019897, 300.8196635246277 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.8509803921568627, 0.2, 0.7372549019607844, 0.7 ],
                    "id": "obj-43",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.2513793706894, 44.26229381561279, 211.16394186019897, 300.8196635246277 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.5, 0.85, 0.7 ],
                    "id": "obj-44",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 738.5245690345764, 184.0, 146.72130727767944, 159.01638889312744 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 564.5, 141.0, 564.5, 141.0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 588.0, 462.0, 588.0, 462.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 126.71311140060425, 534.0, 126.71311140060425, 534.0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 126.71311140060425, 582.0, 168.0, 582.0, 168.0, 543.0, 204.0, 543.0, 204.0, 450.0, 227.53278064727783, 450.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 126.71311140060425, 489.0, 126.71311140060425, 489.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 126.71311140060425, 462.0, 126.71311140060425, 462.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 588.0, 507.0, 663.0, 507.0, 663.0, 543.0, 675.8934235572815, 543.0 ],
                    "order": 0,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 588.0, 498.0, 524.885247707367, 498.0 ],
                    "order": 2,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 588.0, 498.0, 588.0, 498.0 ],
                    "order": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 20.975409507751465, 39.0, 480.0, 39.0, 480.0, 102.0, 564.5, 102.0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 20.975409507751465, 423.0, 126.71311140060425, 423.0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-toggle1", 0 ],
                    "midpoints": [ 20.975409507751465, 132.0, 66.0, 132.0, 66.0, 114.0, 79.5, 114.0 ],
                    "order": 2,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 227.53278064727783, 489.0, 360.0, 489.0, 360.0, 468.0, 384.0901532173157, 468.0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 227.53278064727783, 480.0, 227.53278064727783, 480.0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 588.0, 534.0, 588.0, 534.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 227.53278064727783, 543.0, 215.03278064727783, 543.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "midpoints": [ 79.5, 237.0, 48.10655355453491, 237.0 ],
                    "order": 1,
                    "source": [ "obj-counter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num1", 0 ],
                    "midpoints": [ 79.5, 204.0, 110.5, 204.0 ],
                    "order": 0,
                    "source": [ "obj-counter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-numtilde3", 0 ],
                    "midpoints": [ 564.5, 189.0, 544.0, 189.0 ],
                    "order": 0,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope3", 0 ],
                    "midpoints": [ 564.5, 189.0, 519.5, 189.0 ],
                    "order": 1,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-counter", 0 ],
                    "midpoints": [ 79.5, 168.0, 79.5, 168.0 ],
                    "source": [ "obj-metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 278.8278601169586, 207.0, 354.0, 207.0, 354.0, 180.0, 366.5, 180.0 ],
                    "order": 0,
                    "source": [ "obj-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-numtilde2", 0 ],
                    "midpoints": [ 278.8278601169586, 216.0, 293.5901560783386, 216.0 ],
                    "order": 1,
                    "source": [ "obj-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope2", 0 ],
                    "midpoints": [ 278.8278601169586, 246.0, 279.5, 246.0 ],
                    "order": 2,
                    "source": [ "obj-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-metro", 0 ],
                    "midpoints": [ 79.5, 141.0, 79.5, 141.0 ],
                    "source": [ "obj-toggle1", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}