extends Node

@onready var animation_player: AnimationPlayer = $AnimationPlayer

@onready var camera = $follow_me

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func free_boy():
	$PlayerAnimation.queue_free()
