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
		handleAnimation()

# Animation
@export var sprite: AnimatedSprite2D

func handleAnimation():
	if sprite:
		var moveX = abs(enemy.velocity.x) > 0
		
		if moveX: sprite.flip_h = enemy.velocity.x > 0
		sprite.play("walk")
