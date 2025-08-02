extends MenuButton

const body_cover_names = [
	"BODY_COVER_None",
	"BODY_COVER_Goop",
	"BODY_COVER_HollowGoop",
	"BODY_COVER_Latex",
	"BODY_COVER_PoacherUndersuite",
	"BODY_COVER_PoacherUndersuite_Basic",
	"BODY_COVER_Slime",
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_COVER_TYPE.values():
		get_popup().add_item(tr(body_cover_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_cover_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_cover_names[id])
	
	character_node.body_cover_type = id
