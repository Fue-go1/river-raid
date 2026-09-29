extends Node2D

var dir:= Vector2.UP
var speed: int = 80:
	set(value):
		speed = clamp(value, 80, 150)
		pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(str(speed))
	position -= dir * speed * delta
	
	if Input.is_action_pressed("up"):
		speed+=5
	elif Input.is_action_pressed("down"):
		speed-=15
		pass
	pass
