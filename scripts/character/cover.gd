extends Sprite2D

enum COVER_TYPE {
	NONE, GOOP, HOLLOW_GOOP, LATEX_BULGE, LATEX_FLAT, LATEX_OPEN, POACHER_UNDERSUITE, POACHER_UNDERSUITE_BASE, SLIME
}

const covers = [
	null,
	["Goop1_1UNUSED", "Goop1_2", "Goop1_3", "Goop1_4", "Goop1_5", "Goop1_6", "Goop1_7", "Goop1_8", "Goop1_Harden"],
	"HollowGoop1",
	"LatexBulge",
	"LatexFlat",
	"LatexOpen",
	"PoacherUndersuit1",
	"PoacherUndersuit1_Base",
	"Slime1"
]

@export var cover_type: COVER_TYPE
@export var serial: int

var body_node: Sprite2D

func _ready() -> void:
	body_node = get_parent()

func _process(delta: float) -> void:
	if covers[cover_type] == null:
		texture = null
	elif typeof(covers[cover_type]) == TYPE_ARRAY:
		if body_node.is_restrained():
			texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s_Rest.png" % covers[cover_type][serial%len(covers[cover_type])])
		else:
			texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s.png" % covers[cover_type][serial%len(covers[cover_type])])
	else:
		texture = load("res://assets/NargPort/Cover/NargPort_Cover_%s.png" % covers[cover_type])
	
