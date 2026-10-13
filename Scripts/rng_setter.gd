extends Node2D

@export var seedName := "" 
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	var seedToUse: int
	if seedName:
		seedToUse = hash(seedName)
	else:
		seedToUse = randi()
		
	seed(seedToUse)
	print(seedToUse, " is used")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
