extends Control

var master_bus = AudioServer.get_bus_index("Master")


func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus, value)
	
	if value == -30:
		AudioServer.set_bus_mute(master_bus,true)
	else:
		AudioServer.set_bus_mute(master_bus,false)


func _ready():
	MainMenuMusic.play_music_main()

func _on_full_screen_toggle_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_music_toggle_toggled(toggled_on):
	if toggled_on == true:
		AudioServer.set_bus_mute(SoundSlider.master_bus, true)



func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")

