extends State
class_name EnemyTargetLight

@export var enemy: CharacterBody2D
@onready var candle = get_node("/root/Main/candle")

var direction := Vector2(0, 0)

func enter():
	pass

func exit():
	pass
	
func update(_delta: float):
	direction = global_position.direction_to(candle.global_position)

func physicsUpdate(_delta: float):
	if enemy:
		enemy.velocity = direction * 60
