extends Sprite2D
	
func _on_exit_to_2_body_entered(body):
	if body.name == "Player" and Global.coins == 4:
		var _target = get_tree().change_scene_to_file("res://UI/End.tscn")
	if body.name == "Player" and Global.coins != 4:
		Global.warning()	
