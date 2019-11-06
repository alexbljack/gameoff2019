var movement = deltaTime(run_speed);

if keyboard_check(ord("W")) {
	sprite_index = spr_player_1_run;
	y -= movement;
}

if keyboard_check(ord("S")) {
	sprite_index = spr_player_1_run;
	y += movement;
}

if keyboard_check(ord("D")) {
	sprite_index = spr_player_1_run;
	go_right = true;
}

if keyboard_check(ord("A")) {
	sprite_index = spr_player_1_run;
	go_right = false;
}


x += go_right * movement;