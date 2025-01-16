class_name Actor extends CharacterBody2D

var dir = 'Down'
const SPEED = 70

func _physics_process(_delta: float) -> void:
	move_and_slide()
