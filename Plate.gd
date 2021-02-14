extends StaticBody2D

enum polarity_states {POSITIVE, NEGATIVE}

var activated = false
var polarity = polarity_states.POSITIVE


func _on_Plate_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(BUTTON_LEFT):
			activated = !activated
		if Input.is_mouse_button_pressed(BUTTON_RIGHT):
			polarity = (polarity + 1) % 2
