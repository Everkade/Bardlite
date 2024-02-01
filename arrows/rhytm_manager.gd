extends Node2D

@onready var left_arrow = preload("res://arrows/left_arrow.tscn")
@onready var down_arrow = preload("res://arrows/down_arrow.tscn")
@onready var right_arrow = preload("res://arrows/right_arrow.tscn")
@onready var up_arrow = preload("res://arrows/up_arrow.tscn")

@onready var arrows = [left_arrow, down_arrow, right_arrow, up_arrow]

func _on_timer_timeout():
	var ran_arrow = arrows[randi_range(0, 3)]
	var arrow = ran_arrow.instantiate()
	if ran_arrow == left_arrow:
		arrow.position = Vector2(500, 200)
	elif ran_arrow == right_arrow:
		arrow.position = Vector2(700, 200)
	elif ran_arrow == down_arrow:
		arrow.position = Vector2(900, 200)
	elif ran_arrow == up_arrow:
		arrow.position = Vector2(1100, 200)
	add_child(arrow)
