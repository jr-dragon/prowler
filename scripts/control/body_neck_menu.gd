extends MenuButton

const body_neck_names = [
	"BODY_NECK_None",
	"BODY_NECK_BlackCollar",
	"BODY_NECK_NecklaceSpitter",
	"BODY_NECK_PoacherCollar",
	"BODY_NECK_PoacherCollar_DISENCHANT",
	"BODY_NECK_RestraintRubber",
	"BODY_NECK_ToothNecklace"
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_NECK_TYPE.values():
		get_popup().add_item(tr(body_neck_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_neck_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_neck_names[id])
	
	character_node.body_neck_type = id
