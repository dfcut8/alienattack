extends Area2D


@export var speed: float = 600
@export var max_life_span: float = 0.8

@onready var visible_notifier: VisibleOnScreenNotifier2D = $VisibleNotifier


func _ready() -> void:
	visible_notifier.screen_exited.connect(_on_screen_exited)
	_destroy_after_time()

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	global_position.x += speed * delta

func _on_screen_exited() -> void:
	queue_free()

func _destroy_after_time() -> void:
	await get_tree().create_timer(max_life_span).timeout
	print_debug("timer fired!")
	queue_free()
