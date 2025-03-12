extends Sprite2D

func _input(event: InputEvent) -> void:
	pass
	#if event is InputEventKey and event.is_pressed():
		#if event.scancode == KEY_W:
			#var local_pos = Vector2(0, 20)
			#var ie = InputEventMouseButton.new()
			#ie.button_index = KEY_W
			#ie.position = get_viewport().get_screen_transform() * get_global_transform_with_canvas() * local_pos
			#Input.parse_input_event(ie)
