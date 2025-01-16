class_name IdleState extends State

func update_physics(_delta: float) -> void:
	direction = Input.get_vector('left', 'right', 'up', 'down')
	
	if direction != Vector2.ZERO:
		print('TROCANDO PARA MOVE STATE')
		state_transition.emit(self, 'MoveState')
	
	if direction == Vector2.ZERO:
		if player.dir == 'Down':
			anim.play(player.dir + 'Idle')
		elif player.dir == 'Up':
			anim.play(player.dir + 'Idle')
		elif player.dir == 'Right':
			anim.play(player.dir + 'Idle')
		elif player.dir == 'Left':
			anim.play(player.dir + 'Idle')
