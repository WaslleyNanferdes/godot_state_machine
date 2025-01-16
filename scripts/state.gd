class_name State extends Node

var player: Actor
var anim: AnimationPlayer
var direction: Vector2 = Vector2.ZERO

signal state_transition(actual_state: State, new_state_name: String)

func enter() -> void:
	pass

func exit() -> void:
	pass

func update(_delta: float) -> void:
	pass

func update_physics(_delta: float) -> void:
	pass
