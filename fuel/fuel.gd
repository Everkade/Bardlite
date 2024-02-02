extends Area2D

signal increaseHealth
@onready var sprite = $AnimatedSprite2D

func _ready():
	sprite.play("default")

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "player":
		increaseHealth.emit()
		queue_free()
