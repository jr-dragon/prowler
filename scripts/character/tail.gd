extends Sprite2D

const tails = [
	"Base/Tail/NargPort_BASE_Tail",
	"Tail/NargPort_Tail_HollowGoop",
	"Tail/NargPort_Tail_Latex",
]

const pouches = [
	null,
	"Tail/NargPort_TAIL_Pouch1",
	"Tail/NargPort_TAIL_Pouch2",
	"Tail/NargPort_TAIL_Pouch_Travel"
];

var tail_type: Enums.TAIL_TYPE
var pouch_type: Enums.TAIL_POUCH_TYPE

var pouch_node: Sprite2D

func _ready():
	pouch_node = $pouch

func _process(_delta: float):
	texture = load("res://assets/NargPort/%s.png" % tails[tail_type])
	
	if pouches[pouch_type]:
		pouch_node.texture = load("res://assets/NargPort/%s.png" % pouches[pouch_type])	
	else:
		pouch_node.texture = null
			
