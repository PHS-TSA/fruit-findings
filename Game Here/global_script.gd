extends Node
# assets came from 
var player_speed_mult = 1
var player_speeding_ticks = 0
var player_cooldown = 0
var table_foods = ["N","N","N","N"]
var foods = ["Apple", "Melon", "Cherry", "Kiwi", "Banana", "Orange", "Pineapple", "Strawberry"]
var table_indicator_sway = 0
var customer_anger = [0,0,0,0]
var tables_active = [false, false, false, false]
var customer_anger_levels = [0,0,0,0]
var bounce_wait = [100,100,100,100]
var frames_done = [0,0,0,0]
var tables_anger_delay = [0,0,0,0]
var customer_leave = [false, false, false, false]
var held_food = "N"
var conveyor_pos = 345
var tables_in_reach = [false, false, false, false]
var player_anim_wait = 0
var points = 0
var level = 1
var kitchenPlayerS = [0,0]
var change = []
@onready var levelLabel = $Control/VBoxContainer/SubViewportContainer/SubViewport/Player/UI/Panel2/LevelLabel

func _ready():
	var timer = Timer.new()
	timer.wait_time = 1.7
	timer.autostart = true
	add_child(timer)
	#timer.timeout.connect(_on_timer_timeout)a
@onready var game_manager: GameManager = $Control/VBoxContainer/SubViewportContainer/SubViewport/sideone/GameManager
#func _on_timer_timeout():
	#randomize()
	#var game_manager: GameManager = $Control/VBoxContainer/SubViewportContainer/SubViewport/sideone/GameManager
	#print(game_manager)
	#var apple = preload("res://obby.tscn").instantiate()
	#apple.position.y = 135
	#apple.position.x = randf_range(110, 1080)
	#apple.player_collected_apple.connect(game_manager._on_apple_player_collected_apple)
	#add_child(apple)
