extends ColorRect

func _process(delta: float) -> void:
	if Global.tables_in_reach[1]: self.visible = true
	else: self.visible = false
