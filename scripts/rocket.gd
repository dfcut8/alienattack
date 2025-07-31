extends Area2D


@export var speed = 600
@onready var notifier = $VisibleNotifier


func _ready() -> void:
	notifier.screen_exited.connect(_on_screen_exited)

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	global_position.x += speed * delta

func _on_screen_exited() -> void:
	queue_free()
