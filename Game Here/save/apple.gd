extends Node2D

signal player_collected_apple

func _physics_process(delta):
	position.y += 50 * delta
#700 * delta is normal, 100 is medium
func _on_body_entered(body):
	if (body.name == "Player"):
		player_collected_apple.emit()
		queue_free()
