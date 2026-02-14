extends Node2D

const MAX_SPEED := 80.
const ACCELERATION := 16.5
const FRICTION := 8.5

func _physics_process(delta: float) -> void:
	var input := Vector2(Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left"),Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")).normalized()
	
	#var velocity_weight_x := 1.0 - exp( -ACCELERATION if input.x)
