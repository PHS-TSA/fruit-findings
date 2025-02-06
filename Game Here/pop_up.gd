extends Node2D

@onready var cherry_scene: PackedScene = preload("res://cherry.tscn")

func _on_timer_timeout() -> void:
	var cherry_temp = cherry_scene.instantiate()
	cherry_temp.position = Vector2(randi_range(100, 1000), randi_range(100, 1000))
	add_child(cherry_temp)
	



func _on_apple_pressed() -> void:
	get_tree().change_scene_to_file("res://save/Main.tscn")
	

func _on_melon_pressed() -> void:
	get_tree().change_scene_to_file("res://obby.tscn")
