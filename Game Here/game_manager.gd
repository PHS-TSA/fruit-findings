class_name GameManager
extends Node2D

@onready var points_label: Label = $"../UI/Panel/PointsLabel"


var points = 0

func add_point():
	points = points + 1 
	print(points)
	points_label.text = "Points: " + str(points)

func _on_apple_player_collected_apple() -> void:
	add_point()
