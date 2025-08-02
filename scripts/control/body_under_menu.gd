extends MenuButton

const body_under_names = [
	"BODY_UNDER_None",
	"BODY_UNDER_Handmade",
	"BODY_UNDER_Makeshift",
	"BODY_UNDER_RestraintRubber1", "BODY_UNDER_RestraintRubber2", "BODY_UNDER_RestraintRubber2_DISENCHANT",
	"BODY_UNDER_Scrappy",
	"BODY_UNDER_Snake",
	"BODY_UNDER_Travel",
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_UNDER_TYPE.values():
		get_popup().add_item(tr(body_under_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_under_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_under_names[id])
	
	character_node.body_under_type = id
