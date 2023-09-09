@tool
extends Resource
class_name Grid

@export var dimensions := Vector2i(10, 10)
var astar_region = Rect2i(0, 0, dimensions.x, dimensions.y)

## cell size in pixels
@export var cell_size := 64


# Called when the node enters the scene tree for the first time.
func _ready():
	print(astar_region)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
