extends Control
@onready var pause_menu: Control = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
			pause()

func _on_resume_pressed() -> void:
	unpause()

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/ELements/menu.tscn")

func pause():
	get_tree().paused = true
	pause_menu.show()

func unpause():
	get_tree().paused = false
	pause_menu.hide()
