extends CharacterBody2D

var rocket_scene: Resource = preload("res://schenes/rocket.tscn")
@export var speed = 400.0
@onready var rocket_container = $RocketContainer

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("player_fire"):
		print("fired!")
		_fire()

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

func _fire():
	var rocket_scene_instance = rocket_scene.instantiate()
	rocket_container.add_child(rocket_scene_instance)
	rocket_scene_instance.global_position = global_position
	rocket_scene_instance.global_position.x += 50
