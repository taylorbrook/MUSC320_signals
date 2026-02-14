{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [34.0, 87.0, 1200.0, 850.0],
		"openinpresentation": 1,
		"default_fontsize": 12.0,
		"default_fontface": 0,
		"default_fontname": "Arial",
		"gridonopen": 1,
		"gridsize": [15.0, 15.0],
		"gridsnaponopen": 1,
		"objectsnaponopen": 1,
		"statusbarvisible": 2,
		"toolbarvisible": 1,
		"lefttoolbarpinned": 0,
		"toptoolbarpinned": 0,
		"righttoolbarpinned": 0,
		"bottomtoolbarpinned": 0,
		"toolbars_unpinned_last_save": 0,
		"tallnewobj": 0,
		"boxanimatetime": 200,
		"enablehscroll": 1,
		"enablevscroll": 1,
		"devicewidth": 0.0,
		"description": "Noise Sculpture — 3-voice evolving synthesis demo for MUSC 320 Week 7",
		"digest": "",
		"tags": "",
		"style": "",
		"subpatcher_template": "",
		"assistshowspatchername": 0,
		"boxes": [
			{
				"box": {
					"maxclass": "panel",
					"id": "obj-p1",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 10.0, 200.0, 20.0],
					"presentation": 1,
					"presentation_rect": [20.0, 175.0, 500.0, 330.0],
					"rounded": 8,
					"bgcolor": [0.15, 0.15, 0.17, 1.0],
					"mode": 0
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "NOISE SCULPTURE",
					"id": "obj-title",
					"fontsize": 20.0,
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 35.0, 220.0, 29.0],
					"presentation": 1,
					"presentation_rect": [30.0, 155.0, 480.0, 25.0],
					"textcolor": [0.9, 0.9, 0.9, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Noise Speed",
					"id": "obj-lbl1",
					"fontsize": 11.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 60.0, 80.0, 19.0],
					"presentation": 1,
					"presentation_rect": [110.0, 15.0, 120.0, 18.0],
					"textcolor": [0.8, 0.8, 0.8, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Tone Pitch",
					"id": "obj-lbl2",
					"fontsize": 11.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 80.0, 80.0, 19.0],
					"presentation": 1,
					"presentation_rect": [250.0, 15.0, 120.0, 18.0],
					"textcolor": [0.8, 0.8, 0.8, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Noise/Tone Mix",
					"id": "obj-lbl3",
					"fontsize": 11.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 100.0, 100.0, 19.0],
					"presentation": 1,
					"presentation_rect": [390.0, 15.0, 120.0, 18.0],
					"textcolor": [0.8, 0.8, 0.8, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Drone Detune",
					"id": "obj-lbl4",
					"fontsize": 11.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 120.0, 90.0, 19.0],
					"presentation": 1,
					"presentation_rect": [110.0, 80.0, 120.0, 18.0],
					"textcolor": [0.8, 0.8, 0.8, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Output",
					"id": "obj-lbl-main",
					"fontsize": 10.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 140.0, 60.0, 18.0],
					"presentation": 1,
					"presentation_rect": [30.0, 215.0, 100.0, 15.0],
					"textcolor": [0.7, 0.7, 0.7, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Noise",
					"id": "obj-lbl-v1",
					"fontsize": 10.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 160.0, 50.0, 18.0],
					"presentation": 1,
					"presentation_rect": [30.0, 385.0, 140.0, 15.0],
					"textcolor": [0.85, 0.4, 0.3, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Tone",
					"id": "obj-lbl-v2",
					"fontsize": 10.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 180.0, 50.0, 18.0],
					"presentation": 1,
					"presentation_rect": [190.0, 385.0, 140.0, 15.0],
					"textcolor": [0.3, 0.5, 0.85, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Drone",
					"id": "obj-lbl-v3",
					"fontsize": 10.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 200.0, 50.0, 18.0],
					"presentation": 1,
					"presentation_rect": [350.0, 385.0, 140.0, 15.0],
					"textcolor": [0.85, 0.75, 0.3, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Volume",
					"id": "obj-lbl-vol",
					"fontsize": 10.0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [950.0, 220.0, 50.0, 18.0],
					"presentation": 1,
					"presentation_rect": [550.0, 35.0, 48.0, 15.0],
					"textcolor": [0.7, 0.7, 0.7, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "NOISE SCULPTURE — MUSC 320 Week 7 Demo",
					"id": "obj-1",
					"fontsize": 16.0,
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 10.0, 420.0, 24.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== AUTOMATION ENGINE ===",
					"id": "obj-2",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 40.0, 200.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "toggle",
					"id": "obj-3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["int"],
					"patching_rect": [100.0, 65.0, 30.0, 30.0],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [30.0, 30.0, 50.0, 50.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "select 0 1",
					"id": "obj-4",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["bang", "bang", ""],
					"patching_rect": [100.0, 105.0, 80.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "metro 15000",
					"id": "obj-5",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["bang"],
					"patching_rect": [160.0, 145.0, 80.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "loadbang",
					"id": "obj-6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["bang"],
					"patching_rect": [830.0, 40.0, 58.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0",
					"id": "obj-7",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [830.0, 70.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "ON/OFF",
					"id": "obj-8",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [60.0, 72.0, 42.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "STOP: fade out + stop metro",
					"id": "obj-9",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 130.0, 170.0, 20.0],
					"textcolor": [0.8, 0.2, 0.2, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "t b b b b",
					"id": "obj-10",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": ["bang", "bang", "bang", "bang"],
					"patching_rect": [30.0, 150.0, 62.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "stop",
					"id": "obj-11",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [75.0, 175.0, 35.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0, 0 100",
					"id": "obj-12",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 195.0, 55.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0, 0 100",
					"id": "obj-13",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 218.0, 55.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0, 0 100",
					"id": "obj-14",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 241.0, 55.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "START: metro triggers automation messages",
					"id": "obj-15",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [160.0, 130.0, 260.0, 20.0],
					"textcolor": [0.2, 0.6, 0.2, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "t b b b b b b",
					"id": "obj-16",
					"numinlets": 1,
					"numoutlets": 6,
					"outlettype": ["bang", "bang", "bang", "bang", "bang", "bang"],
					"patching_rect": [160.0, 175.0, 520.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V1: LFO rate",
					"id": "obj-17",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [120.0, 200.0, 80.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "1.5, 4. 5000, 0.8 3000, 5.5 4000, 1.5 3000",
					"id": "obj-18",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [120.0, 215.0, 260.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V1: amplitude",
					"id": "obj-19",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [120.0, 237.0, 85.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0.05, 0.8 3500, 1. 3000, 0.5 4500, 0.05 4000",
					"id": "obj-20",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [120.0, 252.0, 272.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V2: base freq",
					"id": "obj-21",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [410.0, 200.0, 80.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "185, 220 6000, 170 5000, 185 4000",
					"id": "obj-22",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [410.0, 215.0, 208.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V2: amplitude",
					"id": "obj-23",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [410.0, 237.0, 85.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0.05, 0.7 3000, 1. 4500, 0.6 4000, 0.05 3500",
					"id": "obj-24",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [410.0, 252.0, 280.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V3: base freq",
					"id": "obj-25",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [700.0, 200.0, 80.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "110, 95 7000, 130 5000, 110 3000",
					"id": "obj-26",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [700.0, 215.0, 200.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V3: amplitude",
					"id": "obj-27",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [700.0, 237.0, 85.0, 20.0],
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "0.05, 0.6 2000, 0.9 5500, 0.7 4000, 0.05 3500",
					"id": "obj-28",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [700.0, 252.0, 280.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== VOICE 1: Rhythmic Noise ===",
					"id": "obj-29",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 285.0, 200.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-30",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [175.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "cycle~",
					"id": "obj-31",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [175.0, 340.0, 43.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~ 0.5",
					"id": "obj-32",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [175.0, 370.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~ 0.5",
					"id": "obj-33",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [175.0, 400.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "noise~",
					"id": "obj-34",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [55.0, 340.0, 45.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-35",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [55.0, 430.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-36",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [55.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-37",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [55.0, 460.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-38",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [55.0, 490.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "noise~ -> *~ (LFO gate) -> *~ (amp env) -> *~ (mix level)",
					"id": "obj-39",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 515.0, 310.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== VOICE 2: Tonal AM / Beating ===",
					"id": "obj-40",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [350.0, 285.0, 220.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-41",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [420.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "cycle~",
					"id": "obj-42",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [420.0, 340.0, 43.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~ 2",
					"id": "obj-43",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [500.0, 330.0, 35.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "cycle~",
					"id": "obj-44",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [500.0, 360.0, 43.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-45",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [420.0, 400.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-46",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [350.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-47",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [350.0, 440.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-48",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [350.0, 470.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "cycle~ *~ cycle~(+2Hz) -> *~ (amp env) -> *~ (mix level)",
					"id": "obj-49",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [350.0, 495.0, 310.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== VOICE 3: Evolving Drone ===",
					"id": "obj-50",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [650.0, 285.0, 200.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-51",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [720.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "cycle~",
					"id": "obj-52",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [720.0, 345.0, 43.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~",
					"id": "obj-53",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [800.0, 330.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "cycle~",
					"id": "obj-54",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [800.0, 360.0, 43.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~ 0.7",
					"id": "obj-55",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [800.0, 390.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~",
					"id": "obj-56",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [720.0, 420.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-57",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [650.0, 310.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-58",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [650.0, 450.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "*~",
					"id": "obj-59",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [650.0, 480.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "cycle~ +~ cycle~(detune) -> *~ (amp env) -> *~ (mix level)",
					"id": "obj-60",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [650.0, 505.0, 310.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== MIX BUS & OUTPUT STAGE ===",
					"id": "obj-61",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [250.0, 545.0, 220.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~",
					"id": "obj-62",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [250.0, 570.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+~",
					"id": "obj-63",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [250.0, 600.0, 30.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "live.gain~",
					"id": "obj-64",
					"numinlets": 2,
					"numoutlets": 5,
					"outlettype": ["signal", "signal", "", "float", "list"],
					"patching_rect": [250.0, 640.0, 48.0, 136.0],
					"presentation": 1,
					"presentation_rect": [550.0, 50.0, 48.0, 420.0],
					"parameter_enable": 1,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Master Volume",
							"parameter_shortname": "Vol",
							"parameter_type": 0,
							"parameter_unitstyle": 4,
							"parameter_mmin": -70.0,
							"parameter_mmax": 6.0,
							"parameter_initial_enable": 1,
							"parameter_initial": [-12.0]
						}
					}
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "clip~ -0.9 0.9",
					"id": "obj-65",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [250.0, 790.0, 88.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "clip~ -0.9 0.9",
					"id": "obj-66",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [340.0, 790.0, 88.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "dac~",
					"id": "obj-67",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [250.0, 825.0, 35.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "1",
					"id": "obj-68",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [160.0, 120.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V1 amp fade-out",
					"id": "obj-69",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [88.0, 195.0, 95.0, 20.0],
					"fontsize": 9.0,
					"textcolor": [0.8, 0.2, 0.2, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V2 amp fade-out",
					"id": "obj-70",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [88.0, 218.0, 95.0, 20.0],
					"fontsize": 9.0,
					"textcolor": [0.8, 0.2, 0.2, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "V3 amp fade-out",
					"id": "obj-71",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [88.0, 241.0, 95.0, 20.0],
					"fontsize": 9.0,
					"textcolor": [0.8, 0.2, 0.2, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "LFO: cycle~ -> *~ 0.5 -> +~ 0.5 (unipolar 0..1)",
					"id": "obj-72",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [225.0, 370.0, 260.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "detuned carrier (+2 Hz)",
					"id": "obj-73",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [540.0, 330.0, 120.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "detuned partial (slider-controlled)",
					"id": "obj-74",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [835.0, 355.0, 170.0, 20.0],
					"fontsize": 10.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== PERFORMANCE SLIDERS ===",
					"id": "obj-75",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 560.0, 200.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "slider",
					"id": "obj-s1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 585.0, 120.0, 20.0],
					"orientation": 1,
					"size": 128,
					"presentation": 1,
					"presentation_rect": [110.0, 35.0, 120.0, 30.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "/ 127.",
					"id": "obj-s1a",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [30.0, 610.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "* 7.9",
					"id": "obj-s1b",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [30.0, 635.0, 38.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+ 0.1",
					"id": "obj-s1c",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [30.0, 660.0, 38.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 50",
					"id": "obj-s1d",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 685.0, 66.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "slider",
					"id": "obj-s2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [170.0, 585.0, 120.0, 20.0],
					"orientation": 1,
					"size": 128,
					"presentation": 1,
					"presentation_rect": [250.0, 35.0, 120.0, 30.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "/ 127.",
					"id": "obj-s2a",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [170.0, 610.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "* 320.",
					"id": "obj-s2b",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [170.0, 635.0, 44.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+ 80.",
					"id": "obj-s2c",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [170.0, 660.0, 40.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 50",
					"id": "obj-s2d",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [170.0, 685.0, 66.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "slider",
					"id": "obj-s3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [310.0, 585.0, 120.0, 20.0],
					"orientation": 1,
					"size": 128,
					"presentation": 1,
					"presentation_rect": [390.0, 35.0, 120.0, 30.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "/ 127.",
					"id": "obj-s3a",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [310.0, 610.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 50",
					"id": "obj-s3b",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [310.0, 635.0, 66.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-s3c",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [310.0, 660.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "* -1.",
					"id": "obj-s3d",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [395.0, 610.0, 35.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "+ 1.",
					"id": "obj-s3e",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [395.0, 635.0, 33.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 50",
					"id": "obj-s3f",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [395.0, 660.0, 66.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-s3g",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [395.0, 685.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "noise level (slider) -> line~ -> V1 *~",
					"id": "obj-s3h",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [310.0, 690.0, 200.0, 20.0],
					"fontsize": 9.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "tone level (1-slider) -> line~ -> V2+V3 *~",
					"id": "obj-s3i",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [395.0, 710.0, 230.0, 20.0],
					"fontsize": 9.0,
					"textcolor": [0.5, 0.5, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "slider",
					"id": "obj-s4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [500.0, 585.0, 120.0, 20.0],
					"orientation": 1,
					"size": 128,
					"presentation": 1,
					"presentation_rect": [110.0, 100.0, 120.0, 30.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "/ 127.",
					"id": "obj-s4a",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [500.0, 610.0, 42.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "* 10.",
					"id": "obj-s4b",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [500.0, 635.0, 38.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 50",
					"id": "obj-s4c",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [500.0, 660.0, 66.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "line~",
					"id": "obj-s4d",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["signal", "bang"],
					"patching_rect": [500.0, 685.0, 37.0, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== SCOPE DISPLAYS ===",
					"id": "obj-76",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [450.0, 545.0, 180.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "scope~",
					"id": "obj-sc1",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [310.0, 570.0, 120.0, 40.0],
					"presentation": 1,
					"presentation_rect": [30.0, 230.0, 480.0, 140.0],
					"calccount": 4,
					"range": [-1.0, 1.0],
					"bgcolor": [0.1, 0.1, 0.12, 1.0],
					"fgcolor": [0.3, 0.85, 0.5, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "scope~",
					"id": "obj-sc2",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [660.0, 570.0, 80.0, 40.0],
					"presentation": 1,
					"presentation_rect": [30.0, 400.0, 140.0, 90.0],
					"calccount": 4,
					"range": [-1.0, 1.0],
					"bgcolor": [0.1, 0.1, 0.12, 1.0],
					"fgcolor": [0.85, 0.4, 0.3, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "scope~",
					"id": "obj-sc3",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [750.0, 570.0, 80.0, 40.0],
					"presentation": 1,
					"presentation_rect": [190.0, 400.0, 140.0, 90.0],
					"calccount": 4,
					"range": [-1.0, 1.0],
					"bgcolor": [0.1, 0.1, 0.12, 1.0],
					"fgcolor": [0.3, 0.5, 0.85, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "scope~",
					"id": "obj-sc4",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [840.0, 570.0, 80.0, 40.0],
					"presentation": 1,
					"presentation_rect": [350.0, 400.0, 140.0, 90.0],
					"calccount": 4,
					"range": [-1.0, 1.0],
					"bgcolor": [0.1, 0.1, 0.12, 1.0],
					"fgcolor": [0.85, 0.75, 0.3, 1.0]
				}
			},
			{
				"box": {
					"maxclass": "ezdac~",
					"id": "obj-ezdac",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [320.0, 825.0, 45.0, 45.0],
					"presentation": 1,
					"presentation_rect": [530.0, 480.0, 45.0, 45.0]
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "=== SLIDER DEFAULTS (loadbang) ===",
					"id": "obj-77",
					"fontface": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [830.0, 100.0, 220.0, 20.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "30",
					"id": "obj-lb1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [830.0, 125.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "42",
					"id": "obj-lb2",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [865.0, 125.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "64",
					"id": "obj-lb3",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [900.0, 125.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "38",
					"id": "obj-lb4",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [935.0, 125.0, 29.5, 22.0]
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "t b b b b b",
					"id": "obj-lb-fan",
					"numinlets": 1,
					"numoutlets": 5,
					"outlettype": ["bang", "bang", "bang", "bang", "bang"],
					"patching_rect": [830.0, 95.0, 180.0, 22.0]
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": ["obj-3", 0],
					"destination": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-4", 0],
					"destination": ["obj-10", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-4", 1],
					"destination": ["obj-68", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-68", 0],
					"destination": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-10", 0],
					"destination": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-10", 1],
					"destination": ["obj-13", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-10", 2],
					"destination": ["obj-12", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-10", 3],
					"destination": ["obj-11", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-11", 0],
					"destination": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-12", 0],
					"destination": ["obj-36", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-13", 0],
					"destination": ["obj-46", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-14", 0],
					"destination": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-5", 0],
					"destination": ["obj-16", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 0],
					"destination": ["obj-28", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 1],
					"destination": ["obj-26", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 2],
					"destination": ["obj-24", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 3],
					"destination": ["obj-22", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 4],
					"destination": ["obj-20", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-16", 5],
					"destination": ["obj-18", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-18", 0],
					"destination": ["obj-30", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-20", 0],
					"destination": ["obj-36", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-22", 0],
					"destination": ["obj-41", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-24", 0],
					"destination": ["obj-46", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-26", 0],
					"destination": ["obj-51", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-28", 0],
					"destination": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-30", 0],
					"destination": ["obj-31", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-31", 0],
					"destination": ["obj-32", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-32", 0],
					"destination": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-33", 0],
					"destination": ["obj-35", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-34", 0],
					"destination": ["obj-35", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-35", 0],
					"destination": ["obj-37", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-36", 0],
					"destination": ["obj-37", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-37", 0],
					"destination": ["obj-38", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3c", 0],
					"destination": ["obj-38", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-41", 0],
					"destination": ["obj-42", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-41", 0],
					"destination": ["obj-43", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-43", 0],
					"destination": ["obj-44", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-42", 0],
					"destination": ["obj-45", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-44", 0],
					"destination": ["obj-45", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-45", 0],
					"destination": ["obj-47", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-46", 0],
					"destination": ["obj-47", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-47", 0],
					"destination": ["obj-48", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3g", 0],
					"destination": ["obj-48", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-51", 0],
					"destination": ["obj-52", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-51", 0],
					"destination": ["obj-53", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s4d", 0],
					"destination": ["obj-53", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-53", 0],
					"destination": ["obj-54", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-54", 0],
					"destination": ["obj-55", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-52", 0],
					"destination": ["obj-56", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-55", 0],
					"destination": ["obj-56", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-56", 0],
					"destination": ["obj-58", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-57", 0],
					"destination": ["obj-58", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-58", 0],
					"destination": ["obj-59", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3g", 0],
					"destination": ["obj-59", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-38", 0],
					"destination": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-48", 0],
					"destination": ["obj-62", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-62", 0],
					"destination": ["obj-63", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-59", 0],
					"destination": ["obj-63", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-63", 0],
					"destination": ["obj-64", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-63", 0],
					"destination": ["obj-64", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-64", 0],
					"destination": ["obj-65", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-64", 1],
					"destination": ["obj-66", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-65", 0],
					"destination": ["obj-67", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-66", 0],
					"destination": ["obj-67", 1]
				}
			},
			{
				"patchline": {
					"source": ["obj-6", 0],
					"destination": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-7", 0],
					"destination": ["obj-3", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-6", 0],
					"destination": ["obj-lb-fan", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb-fan", 0],
					"destination": ["obj-lb4", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb-fan", 1],
					"destination": ["obj-lb3", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb-fan", 2],
					"destination": ["obj-lb2", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb-fan", 3],
					"destination": ["obj-lb1", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb-fan", 4],
					"destination": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb1", 0],
					"destination": ["obj-s1", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb2", 0],
					"destination": ["obj-s2", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb3", 0],
					"destination": ["obj-s3", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-lb4", 0],
					"destination": ["obj-s4", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s1", 0],
					"destination": ["obj-s1a", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s1a", 0],
					"destination": ["obj-s1b", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s1b", 0],
					"destination": ["obj-s1c", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s1c", 0],
					"destination": ["obj-s1d", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s1d", 0],
					"destination": ["obj-30", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s2", 0],
					"destination": ["obj-s2a", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s2a", 0],
					"destination": ["obj-s2b", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s2b", 0],
					"destination": ["obj-s2c", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s2c", 0],
					"destination": ["obj-s2d", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s2d", 0],
					"destination": ["obj-41", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3", 0],
					"destination": ["obj-s3a", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3a", 0],
					"destination": ["obj-s3b", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3b", 0],
					"destination": ["obj-s3c", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3a", 0],
					"destination": ["obj-s3d", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3d", 0],
					"destination": ["obj-s3e", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3e", 0],
					"destination": ["obj-s3f", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s3f", 0],
					"destination": ["obj-s3g", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s4", 0],
					"destination": ["obj-s4a", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s4a", 0],
					"destination": ["obj-s4b", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s4b", 0],
					"destination": ["obj-s4c", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-s4c", 0],
					"destination": ["obj-s4d", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-63", 0],
					"destination": ["obj-sc1", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-38", 0],
					"destination": ["obj-sc2", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-48", 0],
					"destination": ["obj-sc3", 0]
				}
			},
			{
				"patchline": {
					"source": ["obj-59", 0],
					"destination": ["obj-sc4", 0]
				}
			}
		]
	}
}