extends Control

var score = 0
@onready var scoreLabel = $Score

func scoreUpdate():
	score += 1
	scoreLabel.text = "Score: %d" % score
	


func _on_user_interface_score_change():
	scoreUpdate()
