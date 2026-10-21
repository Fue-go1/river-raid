extends CharacterBody2D
 

class_name Player
@export var speed: int
@export var missile: PackedScene
@export var cooldown: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	position += speed * direction * delta
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot") and cooldown < 3:
		var missile_fired = missile.instantiate()
		missile_fired.global_position = Vector2(%Fired.global_position.x, %Fired.global_position.y)
		get_parent().add_child(missile_fired)
		print("SHOT")
		cooldown += 1
		await get_tree().create_timer(3.0).timeout
		cooldown = 0
		pass

func _on_hurtbox_area_entered(area: Area2D) -> void:
	%Player.queue_free()
	%Enemy_Heli.queue_free()
	pass # Replace with function body.
