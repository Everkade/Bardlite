extends Node2D

@onready var left = preload("res://arrows/left_arrow.tscn")
@onready var right = preload("res://arrows/right_arrow.tscn")
@onready var down = preload("res://arrows/down_arrow.tscn")
@onready var up = preload("res://arrows/up_arrow.tscn")



func _on_timer_timeout():
	var arrow = left.instantiate()
	arrow.position = Vector2(900, 200)
	add_child(arrow)
