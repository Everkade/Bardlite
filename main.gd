extends Node2D

var crawlers = preload("res://enemy/crawlers.tscn")
var frog = preload("res://enemy/frog.tscn")
var bunny = preload("res://enemy/bunny.tscn")
var fuel_load = preload("res://fuel/fuel.tscn")
var fuel_positions = [Vector2(875, 250), Vector2(1550, 775), Vector2(300, 775), Vector2(950, 1225)]
var bullet = preload("res://weapon/bullet.tscn")
@onready var enemy_list = [crawlers, frog, bunny]

#Signals
signal enemyDeath
signal increaseHealth

func _ready():
	MainMenuMusic.play_music_level()

func _on_timer_timeout():
	var position_list = [Vector2(randf_range(20, 1000), -10), Vector2(-10, randf_range(20, 1000)), Vector2(randf_range(20, 1000), 1600), Vector2(1600, randf_range(20, 1000))]
	var enemy = enemy_list[randi_range(0, 2)]
	var enemy_position = position_list[randi_range(0, 3)]
	var enemy_one = enemy.instantiate()
	enemy_one.position = enemy_position
	add_child(enemy_one)
	

func _on_child_exiting_tree(node):
	enemyDeath.emit()

func _on_timer_2_timeout():
	var fuel_position = fuel_positions[randi_range(0, 3)]
	var fuel = fuel_load.instantiate()
	fuel.position = fuel_position
	add_child(fuel)
	
	fuel.connect("increaseHealth", _on_increase_health)

func _on_increase_health():
	increaseHealth.emit()

func _on_player_shoot():
	var new_bullet = bullet.instantiate()
	add_child(new_bullet)
	
	var caster = $player.caster
	
	new_bullet.global_position = caster.global_position
	
	var bullet_vector = caster.target - caster.global_position
	var ang = bullet_vector.angle()
	
	var bullet_speed = 600
	var bullet_velocity = Vector2(bullet_speed * cos(ang), bullet_speed * sin(ang))
	new_bullet.direction = bullet_velocity
	print(bullet_velocity)
	
