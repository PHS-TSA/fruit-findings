extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _physical_process(delta):
	position.y += 700 * delta

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("point")
		queue_free()
