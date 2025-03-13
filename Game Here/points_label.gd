extends Label

func _process(delta: float) -> void:
	if Global.change != []:
		self.text = "Points: "+str(Global.points)
