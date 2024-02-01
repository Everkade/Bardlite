extends CharacterBody2D

@onready var player = get_node("/root/Main/player")


func _physics_process(delta):
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * 60
		move_and_slide()



