extends Sprite2D

enum NECK_TYPE {
	NONE, BLACK_COLLAR, NECKLACE_SPITTER, POACHER_COLLAR, POACHER_COLLAR_DISENCHANT, RESTRAINT_RUBBER, TOOTH_NECKLACE,
}

const necks = [
	null, "BlackCollar", "NecklaceSpitter", "PoacherCollar1", "PoacherCollar1_DISENCHANT", "RestraintRubber1", "ToothNecklace"
]

@export var neck_type: NECK_TYPE

func _process(_delta: float):
	if necks[neck_type]:
		texture = load("res://assets/NargPort/Neck/NargPort_Neck_%s.png" % necks[neck_type])
	else:
		texture = null
