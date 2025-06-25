extends Control


func _on_play_pressed() -> void:
	$click.play()
	await  $click.finished
	get_tree().change_scene_to_file("res://Scenes/the_beginning.tscn")


func _on_quit_pressed() -> void:
	$click.play()
	await  $click.finished
	get_tree().quit()
