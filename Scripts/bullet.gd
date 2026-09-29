extends Area2D

@export var speed: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var move_up = create_tween()
	move_up.tween_property(self, "global_position", global_position + Vector2.UP * speed, 2.5)
	pass
