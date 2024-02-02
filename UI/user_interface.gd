extends CanvasLayer

signal scoreChange
signal rhythm_launcher
func _on_main_enemy_death():
	scoreChange.emit()


func _on_game_ui_rhythm_launcher():
	rhythm_launcher.emit()
