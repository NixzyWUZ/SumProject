extends Control

func _ready() -> void:
	$Credits_panel.hide()

func _on_play_pressed() -> void:
	$click.play()
	await  $click.finished
	get_tree().change_scene_to_file("res://Scenes/ELements/the_beginning.tscn")

func _on_quit_pressed() -> void:
	$click.play()
	await  $click.finished
	get_tree().quit()

func _on_credits_pressed() -> void:
	$click.play()
	await $click.finished
	$Credits_panel.show()


func _on_back_pressed() -> void:
	$Credits_panel.hide()
