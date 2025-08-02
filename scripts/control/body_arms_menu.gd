extends MenuButton

const body_arms_names = [
	"BODY_ARMS_None",
	"BODY_ARMS_Chitin",
	"BODY_ARMS_HandWoven",
	"BODY_ARMS_LatexArms", "BODY_ARMS_LatexArms_Snake", "BODY_ARMS_LatexBands",
	"BODY_ARMS_LeatherGloveBinds",
	"BODY_ARMS_Makeshift",
	"BODY_ARMS_OldBinds",
	"BODY_ARMS_RestraintRubber", "BODY_ARMS_RestraintRubber_DISENCHANT",
	"BODY_ARMS_Snake",
	"BODY_ARMS_TinkererArmBinds",
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_ARMS_TYPE.values():
		get_popup().add_item(tr(body_arms_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_arms_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_arms_names[id])
	
	character_node.body_arms_type = id
