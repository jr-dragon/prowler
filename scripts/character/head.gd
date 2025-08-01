extends Sprite2D

const heads = [
	"",
	"_Ailed", "_AiledBlush",
	"_BlushClench", "_BlushClenchClosed",
	"_ClimaxCooldown", "_ClimaxCooldown_1", "_ClimaxCooldown_2", "_ClimaxCooldown_3", 
	"_Concerned",
	"_GrappleSurprise",
	"_Happy",
	"_HeavyBlushClench",
	"_Hood",
	"_Moan", "_Moan_Green",
	"_Pleasure_LookingDown1", "_Pleasure_LookingDown2",
	"_SkinTight",
	"_StunBuildup", "_StunMax",
	"_Surprise",
]

const earings = [
	null, "_HandWoven"
]

var head_type: Enums.HEAD_TYPE
var enable_green_eye: bool
var earing_type: Enums.EARING_TYPE

var eye_node: Sprite2D
var earing_node: Sprite2D

func has_green_eye(type: Enums.HEAD_TYPE) -> bool:
	return ResourceLoader.exists("res://assets/NargPort/Base/Head/NargPort_BASE_Head%s_GreenEYE.png" % heads[head_type])

func _ready():
	eye_node = $eye
	earing_node = $earing

func _process(_delta: float):
	texture = load("res://assets/NargPort/Base/Head/NargPort_BASE_Head%s.png" % heads[head_type])
	
	if enable_green_eye && has_green_eye(head_type):
		eye_node.texture = load("res://assets/NargPort/Base/Head/NargPort_BASE_Head%s_GreenEYE.png" % heads[head_type])
	else:
		eye_node.texture = null
	
	if earings[earing_type]:
		earing_node.texture = load("res://assets/NargPort/Base/EarRing/NargPort_BASE_earRing%s.png" % earings[earing_type])
	else:
		earing_node.texture = null
