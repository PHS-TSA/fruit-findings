extends Area2D

@onready var m_game_manager: MGameManager = $"../m_game_manager"

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		m_game_manager.add_point()
		Obby.moveMelon(self)
