enum PlayerStates {
	IDLE,
	RUNNING,
	DASHING,
	BOUNCING,
}

state = PlayerStates.IDLE;

dashing = false;
dash_cooldown = false;
recovering = false;
bouncing = false;

dash_power = 0;
hp = 3;