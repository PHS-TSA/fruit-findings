extends Label

func _process(delta: float) -> void:
	if "l" in Global.change:
		self.text = "Level: "+str(Global.level)
		for i in range(10):
			pass # just a wait
		Global.change = []
