extends CharacterBody2D

@export var speed = 200

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	set_velocity(velocity)
	move_and_slide()
