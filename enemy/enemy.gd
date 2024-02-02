extends CharacterBody2D
class_name Enemy

@onready var player = get_node("/root/Main/player")

func _ready():
	pass

func _physics_process(delta):
	move_and_slide()
	
