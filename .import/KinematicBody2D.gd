extends KinematicBody2D

export (int) var speed = 100

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1

func _physics_process(delta):
	get_input()

	for plate in get_tree().get_nodes_in_group('plates'):
		if plate.activated:
			velocity += plate.position - position

	velocity = move_and_slide(velocity.normalized() * speed)
