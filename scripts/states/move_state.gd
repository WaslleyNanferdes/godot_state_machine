class_name MoveState extends State

func update_physics(_delta: float):
	direction = Input.get_vector('left', 'right', 'up', 'down')
	
	if direction == Vector2.ZERO:
		print('TROCANDO PARA IDLE STATE')
		state_transition.emit(self, 'IdleState')
	
	if direction != Vector2.ZERO:
		if direction.x == 1 and direction.y == 1:
			player.dir = 'Down'
			anim.play(player.dir + 'Move')
		if direction.x == 1 and direction.y == 0:
			player.dir = 'Right'
			anim.play(player.dir + 'Move')
		if direction.x == 0 and direction.y == 1:
			player.dir = 'Down'
			anim.play(player.dir + 'Move')
		if direction.x == -1 and direction.y == -1:
			player.dir = 'Up'
			anim.play(player.dir + 'Move')
		if direction.x == -1 and direction.y == 0:
			player.dir = 'Left'
			anim.play(player.dir + 'Move')
		if direction.x == 0 and direction.y == -1:
			player.dir = 'Up'
			anim.play(player.dir + 'Move')
	
	player.velocity = direction.normalized() * player.SPEED
