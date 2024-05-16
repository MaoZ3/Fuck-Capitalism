extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	if velocity.x != 0:
		$Sprite2D.flip_v = false
		$Sprite2D.flip_h = velocity.x < 0
	elif velocity.y != 0:
		$Sprite2D.flip_v = velocity.y > 0

func start(position):
	self.position = position
	
func new_game():
	# Asegúrate de que el nodo 'Wig' tenga un script que defina la función 'start'.
	$Wig.start($StartPosition.position)
	$StartTimer.start()

func _physics_process(_delta):
	var input_direction = get_input()
	
	
	move_and_slide()



