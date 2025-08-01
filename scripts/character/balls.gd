extends Sprite2D

enum BALL_TYPE {
	NONE,
	BASE,
	ENLARGED1, ENLARGED2, ENLARGED3,
	GOOP_HARDEN,
	HOLLOW_GOOP,
	LATEX,
	POUCH_HUNTER
}

const balls = [
	null,
	"",
	"_Enlarged", "_Enlarged2", "_Enlarged3",
	"_GoopHarden",
	"_HollowGoop",
	"_Latex1",
	"_PoachHunter1",
]

@export var ball_type: BALL_TYPE
@export var enable_ring: bool

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
