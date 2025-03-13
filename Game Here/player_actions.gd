extends AnimatedSprite2D

func resetTable(num) -> void:
	Global.table_foods[num] = "N"
	Global.customer_anger[num] = 0
	Global.customer_anger_levels[num] = 0
	Global.tables_active[num] = false
	Global.held_food = "N"
	Global.points += 5
	Global.change.append("p")
	if floor(Global.points / 10) + 1 > Global.level:
		Global.level = floor(Global.points / 10) + 1
		Global.change.append("l")

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_SHIFT) and not Global.player_speed_mult < 1 and (Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down")):
		#var edit_texture = preload("res://icon.svg")
		#Sprite2D.texture = edit_texture
		if Global.player_speed_mult == 2:
			Global.player_speeding_ticks += 1
		else:
			Global.player_speeding_ticks += 10
		Global.player_speed_mult = 2
		if Global.player_speeding_ticks >= 300:
			Global.player_speed_mult = 0.5
			Global.player_cooldown = 1
		Global.player_anim_wait += 1
	else:
		if not Global.player_speed_mult < 1:
			Global.player_speed_mult = 1
		else:
			if Global.player_speeding_ticks == 0:
				Global.player_cooldown = 0
				Global.player_speed_mult = 1
		if Global.player_speeding_ticks >= 1.25:
			Global.player_speeding_ticks -= 1.25
		elif Global.player_speeding_ticks < 1.25:
			Global.player_speeding_ticks = 0

	if Input.is_key_pressed(KEY_ENTER):
		if Global.tables_in_reach[0] and Global.held_food == Global.table_foods[0]:
			resetTable(0)
		elif Global.tables_in_reach[1] and Global.held_food == Global.table_foods[1]:
			resetTable(1)
		elif Global.tables_in_reach[2] and Global.held_food == Global.table_foods[2]:
			resetTable(2)
		elif Global.tables_in_reach[3] and Global.held_food == Global.table_foods[3]:
			resetTable(3)
	if self.frame >= 9:
		if Global.player_anim_wait >= 5:
			self.frame =  0
			Global.player_anim_wait = 0
		elif Global.player_speed_mult < 1:
			Global.player_anim_wait += 0.5
		else:
			Global.player_anim_wait += 1
	else:
		if Global.player_anim_wait >= 5:
			self.frame += 1
			Global.player_anim_wait = 0
		elif Global.player_speed_mult < 1:
			Global.player_anim_wait += 0.5
		else:
			Global.player_anim_wait += 1
