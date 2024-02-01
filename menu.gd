extends Control

func _ready():
	MainMenuMusic.play_music_main()

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")




func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
