extends Node2D

@onready var game_manager: GameManager = %GameManager


func _ready():
	var timer = Timer.new()
	timer.wait_time = 1.7
	timer.autostart = true
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)
	
func _on_timer_timeout():
	randomize()
	var apple = preload("res://save/Apple.tscn").instantiate()
	apple.position.y = 135
	apple.position.x = randf_range(110, 1080)
	apple.player_collected_apple.connect(game_manager._on_apple_player_collected_apple)
	add_child(apple)
	



func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://save/Main_Menu.tscn")
