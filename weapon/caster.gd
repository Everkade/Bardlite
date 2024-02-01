extends Area2D

var enemies_in_range = []

func _physics_process(delta):
	enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range[0]
		look_at(target_enemy.position)
		
		
func shoot():
	const BULLET = preload("res://weapon/bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %caster.position
	%caster.add_child(new_bullet)
	
func _on_timer_timeout():
	if enemies_in_range.size() > 0:
		shoot()


