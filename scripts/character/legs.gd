extends Sprite2D

enum LEGS_TYPE {
	NONE,
	HAND_WOVEN,
	LATEX_BANDS, LATEX_LEGGINGS, LATEX_LEGGINGS_SNAKE,
	MAKESHIFT,
	OLD_BINDS_STAGE1, OLD_BINDS_STAGE2,
	POACHER_LOIN,
	RESTRAINT_RUBBER,
	SNAKE,
	TINKERER_LEG_BINDS,
	TRAVEL,
}

const legs = [
	null,
	"HandWoven",
	"LatexBands1", "LatexLeggings1", "LatexLeggings1_Snake",
	"Makeshift",
	"OldBinds", "OldBinds_stage2",
	"PoacherLoin",
	"RestraintRubber1",
	"Snake",
	"Tinkerer_LegBinds",
	"Travel"
]

@export var legs_type: LEGS_TYPE

func _process(_delta: float) -> void:
	if legs[legs_type]:
		texture = load("res://assets/NargPort/Legs/NargPort_Legs_%s.png" % legs[legs_type])
	else:
		texture = null
