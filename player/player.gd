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
	var moveX = abs(velocity.x) > 0
	var moveY = abs(velocity.y) > 0
	
	if moveX: sprite.flip_h = velocity.x < 0
	
	if moveX || moveY:
		sprite.play("walk")
	else:
		sprite.stop()
