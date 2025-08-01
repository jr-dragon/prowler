extends Sprite2D

enum NECKFUR_TYPE {
	BASE, FLAT, GOOP, GOOP_HARDEN, HOLLOWGOOP, LATEX_BULGE, SHIFTED, SLIME
}

const neckfurs = [
	"Base", "Flat", "Goop1", "GoopHarden", "HollowGoop", "LatexBulge", "Shifted", "Slime1"
]

@export var neckfur_type: NECKFUR_TYPE

func _process(_delta: float):
	texture = load("res://assets/NargPort/Neckfur/NargPort_Neckfur_%s.png" % neckfurs[neckfur_type])
