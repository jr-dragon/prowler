extends MenuButton

const head_equip_names = [
	"HEAD_EQUIP_None",
	"HEAD_EQUIP_ChargerHelmet",
	"HEAD_EQUIP_GardCrown",
	"HEAD_EQUIP_HollowGoop",
	"HEAD_EQUIP_LatexHood", "HEAD_EQUIP_LatexMuzzle",
	"HEAD_EQUIP_LeatherBind", "HEAD_EQUIP_LeatherBind_NoGlow",
	"HEAD_EQUIP_Makeshift",
	"HEAD_EQUIP_OldBinds_stage2", "HEAD_EQUIP_OldBinds_stage3",
	"HEAD_EQUIP_Pierce_Bar", "HEAD_EQUIP_Pierce_Rings",
	"HEAD_EQUIP_PoacherNargHelm", "HEAD_EQUIP_PoacherNargHelm_set",
	"HEAD_EQUIP_RestraintRubber",
	"HEAD_EQUIP_Snake",
]


var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()

	for t in Enums.HEAD_EQUIP_TYPE.values():
		get_popup().add_item(tr(head_equip_names[t]))

	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = head_equip_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(head_equip_names[id])
	
	character_node.head_equip_type = id
