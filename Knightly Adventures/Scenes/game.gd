extends Node2D

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		if not get_tree().paused:
			get_tree().paused = true
			var pause_menu = load("res://Scenes/pause_menu.tscn").instantiate()
			get_tree().current_scene.add_child(pause_menu)
