extends MenuButton

const cock_names = [
	"BODY_COCK_None",
	"BODY_COCK_Base_1", "BODY_COCK_Base_2",
	"BODY_COCK_Goop",
	"BODY_COCK_GoopHarden",
	"BODY_COCK_Latex",
	"BODY_COCK_PoachHunter", 
	"BODY_COCK_Slime",
];

var character_node: Node2D

func _ready() -> void:	
	character_node = get_owner().get_parent()
	
	for t in Enums.BODY_COCK_TYPE.values():
		get_popup().add_item(tr(cock_names[t]))
	
	get_popup().id_pressed.connect(_on_menu_button_pressed)
	text = cock_names[0]

func _process(delta: float) -> void:
	disabled = !character_node.show_groin()

func _on_menu_button_pressed(id: int) -> void:
	text = tr(cock_names[id])
	
	character_node.body_cock_type = id
