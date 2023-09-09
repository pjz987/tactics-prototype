@tool
extends Resource
class_name Grid

@export var dimensions := Vector2i(10, 10)
var astar_region = Rect2i(0, 0, dimensions.x, dimensions.y)

## cell size in pixels
@export var cell_size := 64
var cell_offset = cell_size / 2
