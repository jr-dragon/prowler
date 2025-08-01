extends Node2D

enum PUMP_TYPE {
	NONE,
	BASE0, BASE1
}

const pumps = [
	null,
	"", "2"
]

@export var pump_type: PUMP_TYPE
@export var acting: bool

var cock_node: Sprite2D
var pump_node: Sprite2D
var pump_internal_node: AnimatedSprite2D

func _ready() -> void:
	cock_node = get_parent()
	pump_node = $pump
	pump_internal_node = $pump/internal

func _process(delta: float) -> void:
	if !cock_node.erect:
		hide()
		return
	
	if pumps[pump_type] == null:
		hide()
	else:
		show()
		pump_node.texture = load("res://assets/NargPort/Groin/Milker/NargPort_Groin_MilkerPump%s.png" % pumps[pump_type])
		if acting: pump_internal_node.play()
		else: pump_internal_node.stop()
