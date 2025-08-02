extends Sprite2D

const unders = [
	null,
	"Handmade",
	"Makeshift",
	"RestraintRubber1", "RestraintRubber2", "RestraintRubber2_DISENCHANT",
	"Scrappy",
	"Snake",
	"Travel",
]

var under_type: Enums.BODY_UNDER_TYPE

func _process(_delta: float) -> void:
	if unders[under_type]:
		texture = load("res://assets/NargPort/Under/NargPort_Under_%s.png" % unders[under_type])
	else:
		texture = null
