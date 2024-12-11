class_name GameManager
extends Node2D

var points = 0

func add_point():
	points = points + 1 
	print(points)


func _on_apple_player_collected_apple() -> void:
	add_point()
