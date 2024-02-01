extends AnimatableBody2D
# Animation
@onready var sprite = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.play("stage4");

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
