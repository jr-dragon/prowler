extends MenuButton

const body_leg_names = [
	"BODY_LEGS_None",
	"BODY_LEGS_HandWoven",
	"BODY_LEGS_LatexBands1", "BODY_LEGS_LatexLeggings1", "BODY_LEGS_LatexLeggings1_Snake",
	"BODY_LEGS_Makeshift",
	"BODY_LEGS_OldBinds", "BODY_LEGS_OldBinds_stage2",
	"BODY_LEGS_PoacherLoin",
	"BODY_LEGS_RestraintRubber1",
	"BODY_LEGS_Snake",
	"BODY_LEGS_Tinkerer_LegBinds",
	"BODY_LEGS_Travel"
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_LEGS_TYPE.values():
		get_popup().add_item(tr(body_leg_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_leg_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_leg_names[id])
	
	character_node.body_legs_type = id
