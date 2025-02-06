extends Area2D
@onready var c_game_manager: Node2D = $"../c_game_manager"

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	c_game_manager.add_point()
	
