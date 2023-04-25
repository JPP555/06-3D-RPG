extends RayCast

onready var Player = get_node("/root/Game/Player")

func _physics_process(_delta):
	if is_colliding():
		Player.target = get_collider()
		var _pos = get_collision_point()
	elif $Reticule.translation != Vector3(0,0,50):
		$Reticule.translation = Vector3(0,0,50)
		Player.target = null
