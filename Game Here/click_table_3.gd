extends ColorRect

func _process(delta: float) -> void:
	if Global.tables_in_reach[2]: self.visible = true
	else: self.visible = false
