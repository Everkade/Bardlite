extends Control

var score = 0
@onready var scoreLabel = $Score

func scoreUpdate():
	score += 1
	scoreLabel.text = "Score: %d" % score
	if score % 25 == 0:
		print_debug("rythm game")
	


func _on_user_interface_score_change():
	scoreUpdate()
