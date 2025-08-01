extends Sprite2D

enum RING_TYPE {
	NONE,
	BASE,
	
	# erect only
	OLD_TRAP_RING,
}

const erect_rings = [
	null,
	"Ring1",
	"OldTrapRing"
]

const unerect_rings = [
	null,
	"Ring1",
]

@export var ring_type: RING_TYPE

var cock_node: Sprite2D


func _ready() -> void:
	cock_node = get_parent()

func _process(delta: float) -> void:
	if cock_node.texture == null:
		texture = null
		return
	
	if erect_rings[ring_type]:
		if cock_node.erect:
			texture = load("res://assets/NargPort/Groin/Cock/NargPort_Groin_CockErect_%s.png" % erect_rings[ring_type])
		else:
			texture = load("res://assets/NargPort/Groin/Cock/NargPort_Groin_CockUnerect_%s.png" % unerect_rings[ring_type]) if ring_type < len(unerect_rings) else null
	else:
		texture = null
