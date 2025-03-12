extends AnimatedSprite2D

func _ready() -> void:
	self.visible = false

func _process(delta: float) -> void:
	#self.position[1] = self.position[1]+0.5*sin(0.5*Global.table_indicator_sway)
	if Global.held_food != "":
		self.visible = true
	else:
		self.visible = false
	if Global.held_food == "A":
		self.animation = "apple"
	elif Global.held_food == "B":
		self.animation = "banana"
	elif Global.held_food == "M":
		self.animation = "melon"
	#if Input.is_key_pressed(KEY_Z):
		#self.animation = "apple"
		#Global.held_food = "A"
	#elif Input.is_key_pressed(KEY_X):
		#self.animation = "banana"
		#Global.held_food = "B"
	#elif Input.is_key_pressed(KEY_C):
		#self.animation = "cherry"
		#Global.held_food = "C"
	#elif Input.is_key_pressed(KEY_V):
		#self.animation = "kiwi"
		#Global.held_food = "K"
	#elif Input.is_key_pressed(KEY_B):
		#self.animation = "melon"
		#Global.held_food = "M"
	#elif Input.is_key_pressed(KEY_N):
		#self.animation = "orange"
		#Global.held_food = "O"
	#elif Input.is_key_pressed(KEY_M):
		#self.animation = "pineapple"
		#Global.held_food = "P"
