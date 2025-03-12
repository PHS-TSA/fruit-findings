extends ProgressBar

func _process(delta: float) -> void:
	self.value = Global.customer_anger[0]
