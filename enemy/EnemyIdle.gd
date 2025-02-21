extends State
class_name EnemyIdle

@export var enemy: CharacterBody2D

var direction: Vector2

func enter():
	direction = Vector2(0, 0)
	
func exit():
	pass
	
func update(_delta: float):
	pass
	
func physicsUpdate(_delta: float):
	if enemy:
		enemy.velocity = direction
		handleAnimation()

# Animation
@export var sprite: AnimatedSprite2D

func handleAnimation():
	if sprite:
		sprite.play("idle")
