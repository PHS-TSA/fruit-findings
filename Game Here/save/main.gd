extends Node2D
#@export var squid_object : PackedScene

func _ready() -> void:
	var timer = Timer.new()
	timer.wait_time = 1.7
	timer.autostart = true
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)
	
func _on_timer_timeout():
	randomize()
	var apple = preload("res://save/Apple.tscn").instantiate()
	apple.position.y = 30
	apple.position.x = randf_range(-470, 510)
	add_child(apple)
