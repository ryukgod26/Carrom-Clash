extends RigidBody2D



func _ready() -> void:
	physics_material_override.friction = 0.4
	physics_material_override.bounce = 0.5
	mass = 0.5
	linear_damp = 2.0
