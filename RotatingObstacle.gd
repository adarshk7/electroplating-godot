extends StaticBody2D

var rotation_speed = - PI / 3

func _process(delta):
	var new_rotation = get_rotation() + rotation_speed * delta
	if new_rotation >= 2 * PI:
		new_rotation = new_rotation - 2 * PI
	set_rotation((get_rotation() + rotation_speed * delta))
