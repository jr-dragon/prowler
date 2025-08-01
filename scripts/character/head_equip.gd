extends Sprite2D

enum EQUIP_TYPE {
	None,
	CHARGER_HELMET,
	GARD_CROWN,
	HOLLOW_GOOP,
	LATEX_HOOD, LATEX_MUZZLE,
	LEATHER_BIND, LEATHER_BIND_NO_GLOW,
	MAKESHIFT,
	OLD_BINDS_STAGE_2, OLD_BINDS_STAGE_3,
	PIERCE_BAR, PIERCE_RINGS,
	POACHER_NARG_HELM, POACHER_NARG_HELM_SET,
	RESTRAINT_RUBBER,
	SNAKE
}

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

@export var equip_type: EQUIP_TYPE

func _ready():
	pass

func _process(_delta: float):
	if equips[equip_type]:
		texture = load("res://assets/NargPort/Head/NargPort_head_%s.png" % equips[equip_type])
	else:
		texture = null;
