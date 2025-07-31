extends Area2D

@export var speed = 200

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	global_position.x -= speed * delta
