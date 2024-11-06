extends CharacterBody2D

var speed = 200

var motion = Vector2.ZERO
					
func _physics_process(delta):
	if Input.is_action_pressed("left"):
		motion = move_and_collide(Vector2(-speed * delta, 0))
	if Input.is_action_pressed("right"):
		motion = move_and_collide(Vector2(speed * delta, 0))
