extends Sprite2D

const arms = [
	null,
	"Chitin",
	"HandWoven",
	"LatexArms1", "LatexArms1_Snake", "LatexBands1",
	"LeatherGloveBinds",
	"Makeshift",
	["OldBinds", "OldBinds_stage2", "OldBinds_stage3"],
	"RestraintRubber1", "RestraintRubber1_DISENCHANT",
	"Snake",
	"TinkererArmBinds",
]

var arms_type: Enums.BODY_ARMS_TYPE
var variant: int

var body_node: Sprite2D

func _ready() -> void:
	body_node = get_parent()

func _process(_delta: float) -> void:
	if arms[arms_type] == null:
		texture = null
	elif typeof(arms[arms_type]) == TYPE_ARRAY:
		texture = load("res://assets/NargPort/Arms/NargPort_Arms_%s.png" % arms[arms_type][variant%len(arms[arms_type])]) if !body_node.is_restrained else null
	else:
		if body_node.is_restrained():
			texture = load("res://assets/NargPort/Arms/NargPort_Arms_%s_Back.png" % arms[arms_type]) if has_restrained() else null
		else:
			texture = load("res://assets/NargPort/Arms/NargPort_Arms_%s.png" % arms[arms_type])

func has_restrained() -> bool:
	if typeof(arms[arms_type]) != TYPE_ARRAY:
		return ResourceLoader.exists("res://assets/NargPort/Arms/NargPort_Arms_%s_Back.png" % arms[arms_type])
	else:
		return false

func get_variants() -> Array:
	if typeof(arms[arms_type]) == TYPE_ARRAY:
		return arms[arms_type]
	else:
		return arms[arms_type]
