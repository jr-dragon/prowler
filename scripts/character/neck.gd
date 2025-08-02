extends Sprite2D

const necks = [
	null, "BlackCollar", "NecklaceSpitter", "PoacherCollar1", "PoacherCollar1_DISENCHANT", "RestraintRubber1", "ToothNecklace"
]

@export var neck_type: Enums.BODY_NECK_TYPE

func _process(_delta: float):
	if necks[neck_type]:
		texture = load("res://assets/NargPort/Neck/NargPort_Neck_%s.png" % necks[neck_type])
	else:
		texture = null
