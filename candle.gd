extends AnimatableBody2D
# Animation
@onready var sprite = $AnimatedSprite2D
@onready var health = 100

func _ready():
	sprite.play("stage4");

func _process(delta):
	if health == 80:
		sprite.play("stage3")
	elif health == 60:
		sprite.play("stage2")
	elif health == 40:
		sprite.play("stage1")
	elif health == 20:
		sprite.play("stage0")
	elif health <= 0:
		get_tree().change_scene_to_file("res://menu.tscn")
		
	
	
func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name != "candle":
		health -= 3
	

func _on_area_2d_increase_health():
	if health < 100:
		health += 10
