extends Control



func _on_full_screen_toggle_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)



func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
