extends Node2D

@export var head_type: Enums.HEAD_TYPE
@export var head_enable_green_eye: bool
@export var head_enable_earing: bool

@export var body_type: Enums.BODY_TYPE

@export var tail_type: Enums.TAIL_TYPE
@export var tail_pouch_type: Enums.TAIL_POUCH_TYPE

var head_node: Sprite2D
var body_node: Sprite2D
var tail_node: Sprite2D

func _ready() -> void:
	head_node = $head
	body_node = $body
	tail_node = $tail

func _process(_delta: float) -> void:
	head_node.head_type = head_type
	head_node.enable_green_eye = head_enable_green_eye
	head_node.earing_type = Enums.EARING_TYPE.HEND_WOVEN if head_enable_earing else Enums.EARING_TYPE.NONE
	
	body_node.body_type = body_type
	
	tail_node.tail_type = tail_type
	tail_node.pouch_type = tail_pouch_type
