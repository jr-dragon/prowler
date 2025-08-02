extends Node2D

@export var head_type: Enums.HEAD_TYPE
@export var head_enable_green_eye: bool
@export var head_enable_earing: bool
@export var head_equip_type: Enums.HEAD_EQUIP_TYPE

@export var body_type: Enums.BODY_TYPE
@export var body_cover_type: Enums.BODY_COVER_TYPE
@export var body_cover_variant: int
@export var body_arms_type: Enums.BODY_ARMS_TYPE
@export var body_arms_variant: int
@export var body_under_type: Enums.BODY_UNDER_TYPE
@export var body_legs_type: Enums.BODY_LEGS_TYPE
@export var body_neckfur_type: Enums.BODY_NECKFUR_TYPE
@export var body_neck_type: Enums.BODY_NECK_TYPE
@export var body_ball_type: Enums.BODY_BALL_TYPE
@export var body_ball_ring_enabled: bool
@export var body_cock_type: Enums.BODY_COCK_TYPE
@export var body_cock_erect: bool

@export var tail_type: Enums.TAIL_TYPE
@export var tail_pouch_type: Enums.TAIL_POUCH_TYPE

var head_node: Sprite2D
var head_equip_node: Sprite2D
var body_node: Sprite2D
var body_cover_node: Sprite2D
var body_arms_node: Sprite2D
var body_under_node: Sprite2D
var body_legs_node: Sprite2D
var body_neckfur_node: Sprite2D
var body_neck_node: Sprite2D
var body_ball_node: Sprite2D
var body_cock_node: Sprite2D

var tail_node: Sprite2D


func _ready() -> void:
	head_node = $head
	head_equip_node = $head/equip
	body_node = $body
	body_cover_node = $body/cover
	body_arms_node = $body/arms
	body_under_node = $body/under
	body_legs_node = $body/legs
	body_neckfur_node = $body/neckfur
	body_neck_node = $body/neck
	body_ball_node = $body/groin/balls
	body_cock_node = $body/groin/cock
	tail_node = $tail

func _process(_delta: float) -> void:
	head_node.head_type = head_type
	head_node.enable_green_eye = head_enable_green_eye
	head_node.earing_type = Enums.EARING_TYPE.HEND_WOVEN if head_enable_earing else Enums.EARING_TYPE.NONE
	head_equip_node.equip_type = head_equip_type
	
	body_node.body_type = body_type
	body_cover_node.cover_type = body_cover_type
	body_cover_node.variant = body_cover_variant
	body_arms_node.arms_type = body_arms_type
	body_arms_node.variant = body_arms_variant
	body_under_node.under_type = body_under_type
	body_legs_node.legs_type = body_legs_type
	body_neckfur_node.neckfur_type = body_neckfur_type
	body_neck_node.neck_type = body_neck_type
	body_ball_node.ball_type = body_ball_type
	body_ball_node.enable_ring = body_ball_ring_enabled
	body_cock_node.cock_type = body_cock_type
	body_cock_node.erect = body_cock_erect
	
	tail_node.tail_type = tail_type
	tail_node.pouch_type = tail_pouch_type

func get_body_cover_variants() -> Array:
	return body_cover_node.get_variants()

func get_body_arms_variants() -> Array:
	return body_arms_node.get_variants()

func show_groin() -> bool:
	return !body_node.is_hide_groin()

func has_cock() -> bool:
	return body_cock_type != Enums.BODY_COCK_TYPE.NONE

func has_ball() -> bool:
	return body_ball_type != Enums.BODY_BALL_TYPE.NONE
