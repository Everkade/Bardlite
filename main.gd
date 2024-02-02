extends Node2D

var frog = preload("res://enemy/enemy.tscn")
var pig = preload("res://enemy/enemy.tscn")
var cow = preload("res://enemy/enemy.tscn")
var cat = preload("res://enemy/enemy.tscn")

@onready var enemy_list = [frog, pig, cow, cat]
signal enemyDeath

func _ready():
	MainMenuMusic.play_music_level()

func _on_timer_timeout():
	var position_list = [Vector2(randf_range(20, 1000), -10), Vector2(-10, randf_range(20, 1000)), Vector2(randf_range(20, 1000), 1600), Vector2(1600, randf_range(20, 1000))]
	var enemy = enemy_list[randi_range(0, 3)]
	var enemy_position = position_list[randi_range(0, 3)]
	var enemy_one = enemy.instantiate()
	
	enemy_one.position = enemy_position
	
	add_child(enemy_one)
	

func _on_child_exiting_tree(node):
	enemyDeath.emit()
	

func _on_user_interface_rhythm_launcher():
	get_tree().change_scene_to_file()
