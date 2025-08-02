extends Sprite2D

const covers = [
	null,
	["Goop1_1UNUSED", "Goop1_2", "Goop1_3", "Goop1_4", "Goop1_5", "Goop1_6", "Goop1_7", "Goop1_8", "Goop1_Harden"],
	"HollowGoop1",
	["LatexOpen", "LatexFlat", "LatexBulge"],
	"PoacherUndersuit1",
	"PoacherUndersuit1_Base",
	"Slime1"
]

var cover_type: Enums.BODY_COVER_TYPE
var variant: int

var body_node: Sprite2D

func _ready() -> void:
	body_node = get_parent()

func _process(delta: float) -> void:
	if covers[cover_type] == null:
		texture = null
	elif typeof(covers[cover_type]) == TYPE_ARRAY:
		if body_node.is_restrained():
			texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s_Rest.png" % covers[cover_type][variant%len(covers[cover_type])])
		else:
			texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s.png" % covers[cover_type][variant%len(covers[cover_type])])
	else:
		texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s.png" % covers[cover_type])
	
func get_variants() -> Array:
	if typeof(covers[cover_type]) == TYPE_ARRAY:
		return covers[cover_type]
	else:
		return [covers[cover_type]]
