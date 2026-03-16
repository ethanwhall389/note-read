extends CharacterBody2D

# func setup(note :Dictionary) -> void:

const SPEED = 100.0

func _physics_process(delta: float) -> void:
	velocity.x = -SPEED
	move_and_slide()
	
