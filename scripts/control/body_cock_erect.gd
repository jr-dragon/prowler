extends CheckButton

var character_node: Node2D

func _ready() -> void:
	character_node = get_owner().get_parent()
	toggled.connect(_on_toggled)

func _process(delta: float) -> void:
	disabled = !(character_node.show_groin() && character_node.has_cock())

func _on_toggled(toggled_on: bool) -> void:
	character_node.body_cock_erect = toggled_on
