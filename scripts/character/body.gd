extends Sprite2D

const bodies = [
	"", "_Grapple", "_IdleFlush", "_NoHands", "_Restrain", "_Stun"
]

var body_type: Enums.BODY_TYPE

var under_node: Sprite2D
var groin_node: Node2D

func _ready() -> void:
	under_node = $under
	groin_node = $groin

func _process(_delta: float):
	texture = load("res://assets/NargPort/Base/Body/NargPort_BASE_Body%s.png" % bodies[body_type])
	
	if under_node.under_type != 0: groin_node.hide()
	else: groin_node.show()

func is_restrained() -> bool:
	return body_type == Enums.BODY_TYPE.RESTRAIN
