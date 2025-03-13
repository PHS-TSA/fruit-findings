extends Control

# assets (Free file) come from PixelFrog

func _ready() -> void:
	var players := {
		"1": {
			viewport = $VBoxContainer/SubViewportContainer/SubViewport,
			camera = $VBoxContainer/SubViewportContainer/SubViewport/Player/Camera2D,
			player = $VBoxContainer/SubViewportContainer/SubViewport/Player,
		},
		"2": {
			viewport = $VBoxContainer/SubViewportContainer2/SubViewport2,
			camera = $VBoxContainer/SubViewportContainer2/SubViewport2/KitchenPlayerCollision/KitchenCamera,
			player = $VBoxContainer/SubViewportContainer2/SubViewport2/KitchenPlayerCollision,
		},
	}
	#players["2"].viewport.world_2d = players["1"].viewport.world_2d
	for node in players.values():
		var remote_transform := RemoteTransform2D.new()
		remote_transform.remote_path = node.camera.get_path()
		node.player.add_child(remote_transform)
	
	
	
	#var viewport1 = $VBoxContainer/SubViewportContainer/SubViewport
	#var viewport2 = $VBoxContainer/SubViewportContainer2/SubViewport
	#var camera1 = $VBoxContainer/SubViewportContainer/SubViewport/Player/Camera2D
	#var camera2 = $VBoxContainer/SubViewportContainer2/SubViewport/KitchenPlayerCollision/KitchenCamera
	#viewport2.world_2d = viewport1.world_2d
	#camera1.target = $VBoxContainer/SubViewportContainer/SubViewport/Player
	#camera2.target = $VBoxContainer/SubViewportContainer2/SubViewport/KitchenPlayerCollision
	#camera2.target = $VBoxContainer/SubViewportContainer2/SubViewport/KitchenPlayerCollision
