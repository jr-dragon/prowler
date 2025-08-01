extends MenuButton

const body_names = [
	"BODY_Basic", "BODY_Grapple", "BODY_IdleFlush", "BODY_NoHands", "BODY_Restrain", "BODY_Stun"
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_TYPE.values():
		get_popup().add_item(tr(body_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_names[id])
	
	character_node.body_type = id
