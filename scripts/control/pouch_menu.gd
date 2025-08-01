extends MenuButton

const pouch_names = [
	"TAIL_POUCH_None", "TAIL_POUCH_Pouch1", "TAIL_POUCH_Pouch2", "TAIL_POUCH_Travel",
]

var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()
	
	for t in Enums.TAIL_POUCH_TYPE.values():
		get_popup().add_item(tr(pouch_names[t]))

	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = pouch_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(pouch_names[id])
	
	character_node.tail_pouch_type = id
