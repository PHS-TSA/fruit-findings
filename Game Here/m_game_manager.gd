class_name MGameManager
extends Node2D
@onready var points_label: Label = $"../Player/UI/Panel/PointsLabel"
func _ready() -> void:
	points_label.text = "Points: " + str(Global.points)

func add_point():
	Global.points += 1
	print("Points: " + str(Global.points))
	points_label.text = "Points: " + str(Global.points)
	if Global.points % 10 == 0:
		Global.level = Global.points/10 + 1
		Global.levelLabel.text = "Level: " + str(Global.level)
	Global.held_food = "M"
