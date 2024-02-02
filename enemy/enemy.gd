extends CharacterBody2D

@onready var player = get_node("/root/Main/player")
@onready var candle = get_node("/root/Main/candle")

func _ready():
	pass

func _physics_process(delta):
		var direction = global_position.direction_to(candle.global_position)
		velocity = direction * 60
		move_and_slide()

