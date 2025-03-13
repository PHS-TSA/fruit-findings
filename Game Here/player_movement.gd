extends CharacterBody2D

func _physics_process(delta: float):
	var prev_pos_x
	var prev_pos_y
	prev_pos_x = position.x
	prev_pos_y = position.y
	if Input.is_action_pressed("ui_right"):
		velocity.x = 500.0*Global.player_speed_mult
		$KitchenPlayer.animation = "run"
		$KitchenPlayer.scale.x = 4
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -500.0*Global.player_speed_mult
		$KitchenPlayer.animation = "run"
		$KitchenPlayer.scale.x = -4
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.y = -500.0*Global.player_speed_mult
		$KitchenPlayer.animation = "run"
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 500.0*Global.player_speed_mult
		$KitchenPlayer.animation = "run"
	else:
		velocity.y = 0
	if not (Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down")):
		if $KitchenPlayer.animation == "run":
			while $KitchenPlayer.frame < 9:
				$KitchenPlayer.frame += 1
				$KitchenPlayer.frame += 0
				$KitchenPlayer.frame += 0
				$KitchenPlayer.frame += 0
			$KitchenPlayer.frame = 0
			$KitchenPlayer.animation = "idle"
	if abs(self.position[0]+(255-500))<150 and abs(self.position[1]+(675-1000))<150:
		Global.tables_in_reach[0] = true
		Global.tables_in_reach[1] = false
		Global.tables_in_reach[2] = false
		Global.tables_in_reach[3] = false
	elif abs(self.position[0]-(255+500))<150 and abs(self.position[1]+(675-1000))<150:
		Global.tables_in_reach[0] = false
		Global.tables_in_reach[1] = true
		Global.tables_in_reach[2] = false
		Global.tables_in_reach[3] = false
	elif abs(self.position[0]+(255-500))<150 and abs(self.position[1]+(400-1000))<150:
		Global.tables_in_reach[0] = false
		Global.tables_in_reach[1] = false
		Global.tables_in_reach[2] = true
		Global.tables_in_reach[3] = false
	elif abs(self.position[0]-(255+500))<150 and abs(self.position[1]+(400-1000))<150:
		Global.tables_in_reach[0] = false
		Global.tables_in_reach[1] = false
		Global.tables_in_reach[2] = false
		Global.tables_in_reach[3] = true
	else:
		Global.tables_in_reach[0] = false
		Global.tables_in_reach[1] = false
		Global.tables_in_reach[2] = false
		Global.tables_in_reach[3] = false
	move_and_slide()
	#if Global.kitchen_player_inside_object_q:
		#self.linear_velocity = Vector2(-1*self.get_linear_velocity()[0],-1*self.get_linear_velocity()[1])
		#position.x = prev_pos_x
		#position.y = prev_pos_y
		#Global.kitchen_player_inside_object_q = false
