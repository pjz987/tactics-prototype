@tool

extends Node2D

class_name GameRunner

@export var grid: Grid
@export var cell_texture: Texture2D
@export var cell_texture_scale := 1.0
#var cell_sprite: Sprite2D
@onready var long_hair = $LongHair

var astar: AStarGrid2D
var test_point_path: PackedVector2Array

func _ready():
	print(grid.dimensions)
	astar = AStarGrid2D.new()
	astar.default_compute_heuristic = AStarGrid2D.HEURISTIC_MANHATTAN
	astar.diagonal_mode = AStarGrid2D.DIAGONAL_MODE_NEVER
	astar.region = Rect2i(0, 0, grid.dimensions.x, grid.dimensions.y)
	astar.cell_size = Vector2i(grid.cell_size, grid.cell_size)
	astar.offset = Vector2i(grid.cell_offset, grid.cell_offset)
	astar.update()
	print(astar.region, astar.cell_size)
	test_point_path = astar.get_point_path(Vector2i(0, 0), Vector2i(4, 4))
	for x in grid.dimensions.x:
		for y in grid.dimensions.y:
	#			draw_circle(Vector2(x, y) * grid.cell_size, grid.cell_size / 2, Color('red'))
	#			draw_texture(cell_texture, Vector2i(x, y) * grid.cell_size)
			var cell_sprite = Sprite2D.new()
			cell_sprite.texture = cell_texture
			cell_sprite.scale = Vector2(cell_texture_scale, cell_texture_scale)
			cell_sprite.position = (
				Vector2i(x, y) * grid.cell_size + Vector2i(grid.cell_offset, grid.cell_offset)
			)
			add_child(cell_sprite)
	
	follow_grid_path(long_hair, test_point_path)

func follow_grid_path(unit, path):
	for index in test_point_path.size():
		var point = test_point_path[index]
		var timer = get_tree().create_timer(index * 0.2)
		await timer.timeout
		long_hair.position = point
		
#		timer.timeout.connect()
	
