extends Node2D
@export var water: PackedScene
@export var change_path: PackedScene

var addpoints: int
var subpoints: int
var num_of_insta: int
var water1
var direction_num: float
#const rand_y: int = -1000
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	change_path_spawner()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for num_of_insta in 20:
		print(str(addpoints))
		water1 = water.instantiate()
		print("WaterBlocks:" + str(num_of_insta))
		print(water1)
		add_child(water1)
		var rand_y: int = -1000
		water1.global_position = Vector2(%Marker2D.global_position.x, randi_range(646, rand_y))
		water1.global_position.x += addpoints
		#print(num_of_insta)
		


func _on_add_points_timeout() -> void:
	##
	#print("DIR NUM: " + str(direction_num))
	direction_num = randf_range(0.0, 1.0)
	if direction_num >= 0.0 and direction_num < 0.5:
		addpoints -= 50 # Creates water to the right
	else:
		addpoints += 30 # Creates water to the left
	pass # Replace with function body.

func change_path_spawner() -> void:
	var change_path1 = change_path.instantiate()
	change_path1.global_position = Vector2(%Change_path1.global_position.x, %Change_path1.global_position.y)
	add_child(change_path1)
	pass


func _on_despawner_body_entered(body: Node2D) -> void:
	if body == water:
		water1.queue_free()
	pass # Replace with function body.
