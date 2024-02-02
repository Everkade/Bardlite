extends CharacterBody2D
class_name Enemy

@onready var player = get_node("/root/Main/player")

func _ready():
	pass

func _physics_process(delta):
	move_and_slide()

func _on_timer_timeout():
	SoundFx.croaker()


func _on_timer_timeout2():
	SoundFx.crawler_growl()


func _on_timer_timeout3():
	SoundFx.death_bunny()

func _on_visible_on_screen_notifier_2d_screen_entered():
	_on_timer_timeout()


func _on_visible_on_screen_notifier_2d_screen_entered2():
	_on_timer_timeout2()


func _on_visible_on_screen_notifier_2d_screen_entered3():
	_on_timer_timeout3()

