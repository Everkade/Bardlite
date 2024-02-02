extends Control

var score = 0
signal rhythm_launcher
@onready var scoreLabel = $Score

func scoreUpdate():
	score += 1
	scoreLabel.text = "Score: %d" % score
	if score % 25 == 0:
		rhythm_launcher.emit()
	


func _on_user_interface_score_change():
	scoreUpdate()
