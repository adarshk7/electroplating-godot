extends RichTextLabel

func _ready():
	set_rotation(-get_parent().get_rotation())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var plate = get_parent()
	if plate.activated == true:
		text = '+' if plate.polarity == plate.polarity_states.POSITIVE else '-'
	else:
		text = '/'
