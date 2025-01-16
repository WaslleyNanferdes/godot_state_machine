class_name StateMachine extends Node

@export var initial_state: State
@export var actor: Actor
@export var animation: AnimationPlayer

var states: Dictionary = {}
var current_state: State

func _ready() -> void:
	for child in get_children():
		if child is State:
			states[child.name] = child
			child.player = actor
			child.anim = animation
			child.state_transition.connect(_on_change_state)
	
	if initial_state:
		current_state = initial_state

func _process(_delta: float) -> void:
	if current_state:
		current_state.update(_delta)

func _physics_process(_delta: float) -> void:
	if current_state:
		current_state.update_physics(_delta)

func _on_change_state(actual_state: State, new_state_name: String):
	if actual_state != current_state:
		return
	
	var new_state = states.get(new_state_name)
	if !new_state:
		return
	
	if current_state:
		current_state.exit()
	
	current_state = new_state
