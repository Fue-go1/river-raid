extends Node2D

@export var water: PackedScene
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	for i in randi() % 10000:
		var water1 = water.instantiate()
		add_child(water1)
		water1.global_position = Vector2(579, randi_range(646, -300))
		
		if water1.global_position == Vector2(579, -300):
			
			pass
		#add_child(water2)
		#water1.global_position = Vector2(randi_range(%Marker2D.global_position.x, %Marker2D.global_position.y), 
		#randi_range(%Marker2D2.global_position.x, %Marker2D2.global_position.y))
		#water2.global_position = Vector2(randi_range(643, 900), randi_range(647, 0))
		pass
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
