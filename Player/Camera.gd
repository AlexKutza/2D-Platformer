#extends Camera2D
#
#var player = null
#
#func _ready():
#	#Global.death_zone = limit_bottom + 200
#	enabled = true
#
#func _physics_process(_delta):
#	player = get_node_or_null("/root/Game/Player")
#	if player != null:
#		zoom = Vector2(0.2,0.2)
#		global_position = player.global_position
#	else:
#		zoom = Vector2(1,1)
#		position = Vector2(0,0)

extends Camera2D

func _process(_delta):
	var target = get_node_or_null("/root/Game/Player_Container/Player")
	#var target = get_node_or_null("/root/Game/Enemy_Container/Bat")
	if target != null:
		position = target.position
