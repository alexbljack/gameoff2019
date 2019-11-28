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
boosted = false;

dash_power = 0;
hp = 3;
collision_speed = 5;

global.dead = false;