class_name MGameManager
extends Node2D

@onready var level_label: Label = $"../Player/UI/Panel2/LevelLabel"
@onready var points_label: Label = $"../Player/UI/Panel/PointsLabel"


func _ready() -> void:
	points_label.text = "Points: 0"
	level_label.text = "Level: 1"
	
func add_point():
	Global.points += 1
	points_label.text = "Points: " + str(Global.points)
	Global.level = 0
	print("Points: " + str(Global.points))
	if Global.points == 5:
		level_label.text = "Level: 2"
	elif Global.points == 10:
		level_label.text = "Level: 3"
	elif Global.points == 15:
		level_label.text = "Level: 4"
	elif Global.points == 20:
		level_label.text = "Level: 5"
	elif Global.points == 30:
		level_label.text = "Level: 6"
	elif Global.points == 40:
		level_label.text = "Level: 7"
	elif Global.points == 50:
		level_label.text = "Level: 8"
	elif Global.points == 60:
		level_label.text = "Level: 9"
	elif Global.points == 70:
		level_label.text = "Level: 10"
	elif Global.points == 80:
		level_label.text = "Level: 11"
	elif Global.points == 90:
		level_label.text = "Level: 12"
	elif Global.points == 100:
		level_label.text = "Level: 13"
	elif Global.points == 180:
		level_label.text = "Level: 14"
	elif Global.points == 200:
		level_label.text = "Level: 15"
	Global.held_food = "M"
