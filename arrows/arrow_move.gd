extends Node2D

func _physics_process(delta):
	position += Vector2(0, 1) * 400 * delta
	if position.y >= 1500:
		queue_free()
