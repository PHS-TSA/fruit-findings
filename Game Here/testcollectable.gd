#extends Area2D
#
#@onready var game_manager: Node2D = %GameManager
#
#func _physical_process(delta):
	#position.y += 700 * delta
#
#func _on_body_entered(body):
	#if (body.name == "Player"):
		#queue_free()
		#game_manager.add_point()
