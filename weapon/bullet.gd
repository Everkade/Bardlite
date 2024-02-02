extends Area2D

var travelled_distance = 0
var direction = Vector2(0, 0)

func _physics_process(delta):
	var range = 1200

	position += direction * delta
	travelled_distance += 2 * delta
	if travelled_distance > range:
		queue_free()

func _on_body_entered(body):
	body.queue_free()
	queue_free()
