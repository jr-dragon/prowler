extends Sprite2D

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

var legs_type: Enums.BODY_LEGS_TYPE

func _process(_delta: float) -> void:
	if legs[legs_type]:
		texture = load("res://assets/NargPort/Legs/NargPort_Legs_%s.png" % legs[legs_type])
	else:
		texture = null
