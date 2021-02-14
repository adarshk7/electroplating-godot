extends StaticBody2D

var activated = false


func _on_Plate_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and Input.is_mouse_button_pressed(BUTTON_LEFT):
		activated = !activated
