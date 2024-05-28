extends ProgressBar

@export var motomami = preload("res://motomami.tscn")
var vidamax: int



func _ready():
	vidamax = 100
	#motomami.connect("estMotocolision", Callable(motomami, "_on_est_Motocolision"))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func update():
	pass # Called when the node enters the scene tree for the first time.
