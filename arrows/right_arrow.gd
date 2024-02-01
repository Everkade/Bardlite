extends Sprite2D


func _physics_process(delta):
	position += Vector2(0, 1) * 200 * delta
