extends Node2D

@onready var cherry_scene: PackedScene = preload("res://cherry.tscn")

func _on_timer_timeout() -> void:
	var cherry_temp = cherry_scene.instantiate()
	
	add_child(cherry_temp)
