extends Node2D

var enemy_scene = preload("res://enemy/enemy.tscn")
signal enemyDeath

func _on_timer_timeout():
	var enemy = enemy_scene.instantiate()
	var enemy2 = enemy_scene.instantiate()
	var enemy3 = enemy_scene.instantiate()
	var enemy4 = enemy_scene.instantiate()
	
	enemy.position = Vector2(randf_range(20, 1000), -10)
	enemy2.position = Vector2(-10, randf_range(20, 1000))
	enemy3.position = Vector2(randf_range(20, 1000), 1600)
	enemy4.position = Vector2(1600, randf_range(20, 1000))
	
	add_child(enemy)
	add_child(enemy2)
	add_child(enemy3)
	add_child(enemy4)
	



func _on_child_exiting_tree(node):
	enemyDeath.emit()
	


