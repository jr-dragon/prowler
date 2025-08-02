extends Sprite2D

const balls = [
	null,
	"",
	"_Enlarged", "_Enlarged2", "_Enlarged3",
	"_GoopHarden",
	"_HollowGoop",
	"_Latex1",
	"_PoachHunter1",
]

var ball_type: Enums.BODY_BALL_TYPE
var enable_ring: bool

var ring_node: Sprite2D

func _ready() -> void:
	ring_node = $ring

func _process(delta: float) -> void:
	if balls[ball_type] != null:
		texture = load("res://assets/NargPort/Groin/Balls/NargPort_Groin_Balls%s.png" % balls[ball_type])
		if enable_ring: ring_node.show()
		else: ring_node.hide()
	else:
		texture = null
		ring_node.hide()
