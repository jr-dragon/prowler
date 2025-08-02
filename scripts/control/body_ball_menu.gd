extends MenuButton

const ball_names = [
	"BODY_BALL_None",
	"BODY_BALL_Base",
	"BODY_BALL_Enlarged", "BODY_BALL_Enlarged2", "BODY_BALL_Enlarged3",
	"BODY_BALL_GoopHarden",
	"BODY_BALL_HollowGoop",
	"BODY_BALL_Latex",
	"BODY_BALL_PoachHunter",
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_NECKFUR_TYPE.values():
		get_popup().add_item(tr(ball_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = ball_names[0]

func _process(delta: float) -> void:
	disabled = !character_node.show_groin()

func _on_menu_button_pressed(id: int) -> void:
	text = tr(ball_names[id])
	
	character_node.body_ball_type = id
