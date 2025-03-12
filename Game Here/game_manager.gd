class_name GameManager
extends Node2D

@onready var points_label: Label = $"../UI/Panel/PointsLabel"
func _ready() -> void:
	points_label.text = "Points: " + str(Global.points)

func add_point():
	Global.points += 1
	print(Global.points)
	points_label.text = "Points: " + str(Global.points)
	if Global.points % 10 == 0:
		Global.level = Global.points/10 + 1
		Global.levelLabel.text = "Level: " + str(Global.level)
	Global.held_food = "A"

func _on_apple_player_collected_apple() -> void:
	add_point()
