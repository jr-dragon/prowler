extends MenuButton

const body_neckfur_names = [
	"BODY_NECKFUR_Base",
	"BODY_NECKFUR_Flat",
	"BODY_NECKFUR_Goop1",
	"BODY_NECKFUR_GoopHarden",
	"BODY_NECKFUR_HollowGoop",
	"BODY_NECKFUR_LatexBulge",
	"BODY_NECKFUR_Shifted",
	"BODY_NECKFUR_Slime1"
]

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_NECKFUR_TYPE.values():
		get_popup().add_item(tr(body_neckfur_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = body_neckfur_names[0]

func _on_menu_button_pressed(id: int) -> void:
	text = tr(body_neckfur_names[id])
	
	character_node.body_neckfur_type = id
