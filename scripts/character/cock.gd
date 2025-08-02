extends Sprite2D

const unerect_cocks = [
	null,
	"", "-2",
	"-Goop1",
	"-GoopHarden",
	"-Latex1",
	"-PoachHunter1", 
];

const erect_cocks = [
	null,
	"", "-2",
	"-Goop1",
	"-GoopHarden",
	"-Latex1",
	"-PoachHunter1",
	"-Slime1",
];


@export var cock_type: Enums.BODY_COCK_TYPE
@export var erect: bool

func _process(delta: float) -> void:
	if cock_type == Enums.BODY_COCK_TYPE.NONE:
		texture = null
	else:
		if erect:
			texture = load("res://assets/NargPort/Groin/Cock/NargPort_Groin_CockErect%s.png" % erect_cocks[cock_type]) 
		else:
			texture = load("res://assets/NargPort/Groin/Cock/NargPort_Groin_CockUnerect%s.png" % unerect_cocks[cock_type]) if cock_type < len(unerect_cocks) else null
