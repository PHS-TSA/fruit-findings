extends Node2D

signal player_collected_apple

func _physics_process(delta):
	position.y += 700 * delta

func _on_body_entered(body):
	if (body.name == "Player"):
		player_collected_apple.emit()
		queue_free()
