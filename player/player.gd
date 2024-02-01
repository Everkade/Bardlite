extends CharacterBody2D

@export var speed: int = 400

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed
	

func _physics_process(delta):
	handleInput()
	handleAnimation()
	move_and_slide()

# Animation
@onready var sprite = $AnimatedSprite2D

func handleAnimation():
	
	if abs(velocity.x) > 0 || abs(velocity.y) > 0:
		sprite.play("walk")
		sprite.flip_h = velocity.x < 0
	else:
		sprite.stop()
