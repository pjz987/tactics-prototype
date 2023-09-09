@tool

extends Node2D

class_name GameRunner

@export var grid: Grid

var astar: AStarGrid2D

func _ready():
	print(grid.dimensions)
	astar = AStarGrid2D.new()
	astar.region = Rect2i(0, 0, grid.dimensions.x, grid.dimensions.y)
	astar.cell_size = Vector2i(grid.cell_size, grid.cell_size)
	print(astar.region, astar.cell_size)
	
func _draw():
	for x in grid.dimensions.x:
		for y in grid.dimensions.y:
			draw_circle(Vector2(x, y) * grid.cell_size, grid.cell_size / 2, Color('red'))
