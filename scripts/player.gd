extends CharacterBody2D


@export var speed = 400.0


func _physics_process(_delta: float) -> void:
	velocity = Vector2(0, 0)
	
	if Input.is_action_pressed("player_move_right"):
		velocity.x = speed
	if Input.is_action_pressed("player_move_left"):
		velocity.x = -speed
	if Input.is_action_pressed("player_move_down"):
		velocity.y = speed
	if Input.is_action_pressed("player_move_up"):
		velocity.y = -speed
	
	move_and_slide()
	
	var viewport_size = get_viewport_rect().size
	global_position = global_position.clamp(Vector2(0,0), viewport_size)
