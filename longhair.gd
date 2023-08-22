extends Node2D

@onready var animation_player = $AnimationPlayer

func _process(delta):
	if Input.is_action_just_pressed('D'):
		animation_player.play('idle_down')
	if Input.is_action_just_pressed('U'):
		animation_player.play('idle_up')
	if Input.is_action_just_pressed('L'):
		animation_player.play('idle_left')
	if Input.is_action_just_pressed('R'):
		animation_player.play('idle_right')
