extends Area2D

var enemies_in_range = []
var target = Vector2(0, 0)

signal shoot

func _physics_process(delta):
	enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range[0]
		target = (target_enemy.position)
		
func _on_timer_timeout():
	if enemies_in_range.size() > 0:
		shoot.emit()
		SoundFx.attack_one()


