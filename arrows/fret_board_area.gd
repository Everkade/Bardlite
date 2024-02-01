extends Area2D

func keyChecker(areaName):
	if Input.is_action_pressed("ui_right") && areaName == 'right':
		print_debug("right")
	if Input.is_action_pressed("ui_left") && areaName == 'left':
		print_debug("left")
	if Input.is_action_pressed("ui_down") && areaName == 'down':
		print_debug("down")
	if Input.is_action_pressed("ui_up") && areaName == 'up':
		print_debug("up")	


func _on_area_entered(area):
	keyChecker(area.name)
		
