extends Resource

@export var name: String
@export var move: int
@export var health: int
@export var attack: int

func _init(init_name="Unamed", init_move=0, init_health=0, init_attack=0):
	name = init_name
	move = init_move
	health = init_health
	attack = init_attack
