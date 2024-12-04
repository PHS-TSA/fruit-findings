extends CharacterBody2D



func _physical_process(delta):
	position.y += 700 * delta

func _on_body_entered(body):
	queue_free()
