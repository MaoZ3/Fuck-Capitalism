extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	if input_direction.x != 0:
		
		""" """
		
		$Sprite2D.flip_h = true
	elif input_direction.x > 0:
		$Sprite2D.flip_v = false



func _physics_process(_delta):
	var input_direction = get_input()
	
	
	move_and_slide()


func _on_node_2d_area_entered(_area):
	pass # Replace with function body.
