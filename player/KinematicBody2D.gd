extends KinematicBody2D

var velocity = Vector2(0,0)
var rocket_speed = 600
var gravity = 400 
var acceleration = 500

func _physics_process(delta):
	if Input.is_action_just_pressed("launch_rocket"):
		velocity.y = - rocket_speed - acceleration
		velocity.y = - rocket_speed
	if Input.is_action_just_released("launch_rocket"):
		velocity.y = + gravity
		
	if Input.is_action_just_pressed("left"):
		velocity.x = - 300
	if Input.is_action_just_pressed("right"):
		velocity.x = + 300
		
	if Input.is_action_just_released("left"):
		velocity.x = - 0
	if Input.is_action_just_released("right"):
		velocity.x = + 0
	
	move_and_slide(velocity)
