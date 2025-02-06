extends Node2D


func _on_apple_pressed() -> void:
	get_tree().change_scene_to_file("res://save/Main.tscn")

func _on_cherry_pressed() -> void:
	get_tree().change_scene_to_file("res://pop_up.tscn")

func moveMelon(melon: Area2D) -> void:
	var dot := Vector2(0, 0)
	match randi_range(0, 12):
		1:
			dot = Vector2(-3, -100)
		2:
			dot = Vector2(-220, -240)
		3:
			dot = Vector2(485, -100)
		4:
			dot = Vector2(800, -150)
		5:
			dot = Vector2(935, -290)
		6:
			dot = Vector2(1080, -145)
		7:
			dot = Vector2(1230, -290)
		8:
			dot = Vector2(1370, -150)
		9:
			dot = Vector2(1885, -60)
		10:
			dot = Vector2(2620, 50)
		11:
			dot = Vector2(2620, -250)
		12:
			dot = Vector2(2140, -50)
	melon.global_position = dot
