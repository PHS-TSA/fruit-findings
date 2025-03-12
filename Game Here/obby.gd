extends Node2D

func _on_apple_pressed() -> void:
	var cameraT = $Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport/Player/Camera2D
	cameraT.position = Vector2(0,0)
	cameraT.offset[0] = 10500
	cameraT.offset[1] = -200
	cameraT.reparent($Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport)
	print(cameraT.get_parent())

func _on_cherry_pressed() -> void:
	var cameraT = $Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport/Player/Camera2D
	cameraT.position = Vector2(0,0)
	cameraT.offset[0] = 8500
	cameraT.offset[1] = -200
	cameraT.reparent($Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport)

func _on_melon_pressed() -> void:
	var cameraT = $Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport/Player/Camera2D
	cameraT.position = Vector2(0,0)
	cameraT.offset[0] = 4500
	cameraT.offset[1] = -100
	cameraT.reparent($Node2D2/Control/VBoxContainer/SubViewportContainer/SubViewport/Player)

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
