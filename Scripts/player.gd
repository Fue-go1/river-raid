extends CharacterBody2D

@export var speed: int
@export var missile: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	position += speed * direction * delta
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		var missile_fired = missile.instantiate()
		missile_fired.global_position = Vector2(%Fired.global_position.x, %Fired.global_position.y)
		get_parent().add_child(missile_fired)
		print("SHOT")
		pass
	pass
