extends Particles2D

func _physics_process(delta):
	if Input.is_action_just_pressed("launch_rocket"):
		emitting = true
	if Input.is_action_just_released("launch_rocket"):
		emitting = false
