class_name MGameManager
extends Node2D
@onready var points_label: Label = $"../Player/UI/Panel/PointsLabel"

func add_point():
	Global.points += 1
	if Global.points % 10 == 0:
		Global.level = Global.points/10 + 1
		Global.change.append("l")
	Global.held_food = "M"
	Global.change.append("p")
