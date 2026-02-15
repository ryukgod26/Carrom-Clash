extends CharacterBody2D

const MAX_SPEED := 80.
const ACCELERATION := 16.5
const FRICTION := 8.5

func _physics_process(delta: float) -> void:
	var input := Vector2(Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left"),Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")).normalized()
	
	var velocity_weight_x := 1.0 - exp( -(ACCELERATION if input.x else FRICTION) * delta)
	velocity.x = lerp(velocity.x, input.x * MAX_SPEED, velocity_weight_x)
	var velocity_weight_y := 1.0 - exp( -(ACCELERATION if input.y else FRICTION) * delta)
	velocity.y = lerp(velocity.y, input.y * MAX_SPEED, velocity_weight_y)
	print(global_position)
	move_and_slide()
