extends CanvasLayer

signal scoreChange

func _on_main_enemy_death():
	scoreChange.emit()

