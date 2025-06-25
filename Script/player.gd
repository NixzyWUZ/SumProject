extends CharacterBody2D
class_name Player

@export_category("Variables")
@export var min_spd : float = 120.0
@export var max_spd : float = 180.0
@onready var animations = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	moviment()

func moviment():
	var direction = Input.get_vector("left","right","up","down")
	
	
	if Input.is_action_pressed("run"):
		print("running")
		$AnimatedSprite2D.speed_scale = 2
		velocity = direction.normalized() * max_spd
	else:
		$AnimatedSprite2D.speed_scale = 1
		velocity = direction.normalized() * min_spd
	
	
	if direction.x > 0:
		animations.play("walk_right")
	elif direction.x < 0:
		animations.play("walk_left")
	elif direction.y > 0:
		animations.play("walk_down")
	elif direction.y < 0:
		animations.play("walk_up")
	else:
		animations.stop()
	
	move_and_slide()
	
	print(direction)
	print(typeof(max_spd))
	print(typeof(min_spd))
