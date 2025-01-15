extends Node

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://save/Main.tscn")


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://save/Level2.tscn")
