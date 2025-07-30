extends CharacterBody2D


const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("player_move_right"):
		velocity.x = SPEED
	if Input.is_action_pressed("player_move_left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("player_move_down"):
		velocity.y = SPEED
	if Input.is_action_pressed("player_move_up"):
		velocity.y = -SPEED
	move_and_slide()
