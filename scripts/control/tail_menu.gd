extends MenuButton

const tail_names = [
	"TAIL_Basic", "TAIL_HollowGoop", "TAIL_Latex"
]

var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()
	
	for t in Enums.TAIL_TYPE.values():
		get_popup().add_item(tr(tail_names[t]))

	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = tail_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(tail_names[id])
	
	character_node.tail_type = id
