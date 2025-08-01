extends MenuButton

const head_names = [
	"HEAD_Basic",
	"HEAD_Ailed", "HEAD_AiledBlush",
	"HEAD_BlushClench", "HEAD_BlushClenchClosed",
	"HEAD_ClimaxCooldown_0", "HEAD_ClimaxCooldown_1", "HEAD_ClimaxCooldown_2", "HEAD_ClimaxCooldown_3", 
	"HEAD_Concerned",
	"HEAD_GrappleSurprise",
	"HEAD_Happy",
	"HEAD_HeavyBlushClench",
	"HEAD_Hood",
	"HEAD_Moan", "HEAD_Moan_Green",
	"HEAD_Pleasure_LookingDown1", "HEAD_Pleasure_LookingDown2",
	"HEAD_SkinTight",
	"HEAD_StunBuildup", "HEAD_StunMax",
	"HEAD_Surprise",
]

var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()

	for t in Enums.HEAD_TYPE.values():
		get_popup().add_item(tr(head_names[t]))

	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = head_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(head_names[id])
	
	character_node.head_type = id
