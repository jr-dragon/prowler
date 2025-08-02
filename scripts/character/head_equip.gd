extends Sprite2D

const equips = [
	null,
	"ChargerHelmet",
	"GardCrown1",
	"HollowGoop",
	"LatexHood", "LatexMuzzle",
	"LeatherBind1", "LeatherBind1_NoGlow",
	"Makeshift",
	"OldBinds_stage2", "OldBinds_stage3",
	"Pierce_Bar1", "Pierce_Rings1",
	"PoacherNargHelm", "PoacherNargHelm_set",
	"RestraintRubber1",
	"Snake",
]

var equip_type: Enums.HEAD_EQUIP_TYPE

func _ready():
	pass

func _process(_delta: float):
	if equips[equip_type]:
		texture = load("res://assets/NargPort/Head/NargPort_Head_%s.png" % equips[equip_type])
	else:
		texture = null;
