extends Sprite2D

enum ORGASM_TYPE {
	NONE,
	BASE, PUMPED,
	VARIANT,
}

const orgasms = [
	null,
	"1", "1_Pumped",
	"2"
]

@export var orgasm_type: ORGASM_TYPE

var cock_node: Sprite2D

func _ready() -> void:
	cock_node = get_parent()

func _process(delta: float) -> void:
	if !cock_node.erect:
		return
	
	if orgasms[orgasm_type]:
		texture = load("res://assets/NargPort/Groin/Cock/NargPort_Groin_CockOrgasm%s.png" % orgasms[orgasm_type])
	else:
		texture = null
