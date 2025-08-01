extends CheckButton

var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()
	toggled.connect(_on_toggled)
	
func _on_toggled(toggled_on: bool) -> void:
	character_node.head_enable_green_eye = toggled_on
