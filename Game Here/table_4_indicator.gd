extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var tempVar = randi() % int(ceil(5000/(Global.level/3.0)))
	var tempVar2 = randi() % 3
	if tempVar == 2:
		if not Global.tables_active[3]:
			self.visible = true
			Global.table_foods[3] = Global.foods[tempVar2][3]
			
			if tempVar2 == 0:
				self.animation = "apple"
			elif tempVar2 == 4:
				self.animation = "banana"
			elif tempVar2 == 2:
				self.animation = "cherry"
			elif tempVar2 == 3:
				self.animation = "kiwi"
			elif tempVar2 == 1:
				self.animation = "melon"
			elif tempVar2 == 5:
				self.animation = "orange"
			elif tempVar2 == 6:
				self.animation = "pineapple"
			elif tempVar2 == 7:
				self.animation = "strawberry"
		if not Global.tables_active[3]:
			Global.tables_active[3] = true
			Global.customer_anger[3] = 0.0
			Global.customer_anger_levels[3] = (randi() % 16)/8+0.125
	if Global.tables_active[3]:
		if Global.tables_anger_delay[3] >= 60:
			Global.customer_anger[3] += Global.customer_anger_levels[3]
			if Global.customer_anger[3] >= 100.0:
				print("Todo, customer is angry")
			Global.tables_anger_delay[3] = 0
		else:
			Global.tables_anger_delay[3] += 1
	Global.table_indicator_sway += 0.1
	if Global.table_indicator_sway >= 6.28:
		Global.table_indicator_sway = -6.28
	position.y = -420+3*sin(0.5*Global.table_indicator_sway)
	if Global.bounce_wait[3] <= 0:
		if not self.frame >= 16:
			self.frame += 1
		else:
			self.frame = 0
		Global.frames_done[3] += 1
		if Global.frames_done[3]>=17:
			Global.bounce_wait[3] = 1000
			Global.frames_done[3] = 0
	else:
		Global.bounce_wait[3] -= Global.customer_anger[3]+1
	#else:
		#print(tempVar)
	#if Input.is_key_pressed(KEY_Q):
		#self.visible = true
