extends Sprite2D

enum UNDER_TYPE {
	NONE,
	HANDMADE,
	MAKESHIFT,
	RESTRAINT_RUBBER_1, RESTRAINT_RUBBER_2, RESTRAINT_RUBBER_2_DISENCHANT,
	SCRAPPY,
	SNAKE,
	TRAVEL,
}

const unders = [
	null,
	"Handmade",
	"Makeshift",
	"RestraintRubber1", "RestraintRubber2", "RestraintRubber2_DISENCHANT",
	"Scrappy",
	"Snake",
	"Travel",
]

@export var under_type: UNDER_TYPE

func _process(_delta: float) -> void:
	if unders[under_type]:
		texture = load("res://assets/NargPort/Under/NargPort_Under_%s.png" % unders[under_type])
	else:
		texture = null
