extends Node2D

@export var water: PackedScene

var addpoints: int = 80:
	set(value):
		addpoints = clamp(value, 20, 80)
		pass
var num_of_insta: int
#const rand_y: int = -1000
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	for num_of_insta in 200:
		var water1 = water.instantiate()
		print("WaterBlocks:" + str(num_of_insta))
		print(water1)
		add_child(water1)
		var rand_y: int = -1000
		water1.global_position = Vector2(%Marker2D.global_position.x, randi_range(646, rand_y))
		print("WaterPOSITION: " + str(water1.global_position))
		print(num_of_insta)
	
	#for i in randi() % 10000:
		#var water1 = water.instantiate()
		#add_child(water1)
		#var rand_y: int = -300
		#water1.global_position = Vector2(%Marker2D.global_position.x, randi_range(646, rand_y))
		#add_child(water2)
		#water1.global_position = Vector2(randi_range(%Marker2D.global_position.x, %Marker2D.global_position.y), 
		#randi_range(%Marker2D2.global_position.x, %Marker2D2.global_position.y))
		#water2.global_position = Vector2(randi_range(643, 900), randi_range(647, 0))
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
