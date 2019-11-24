var enemy = instance_place(x, y, obj_BaseEnemy);
if (enemy and not bouncing and not dashing) {
	speed = 4;
	direction = point_direction(enemy.x, enemy.y, x, y);
	bouncing = true;
}

var projectile = instance_place(x, y, obj_projectile);
if (projectile and not bouncing and not dashing) {
	speed = 4;
	direction = point_direction(projectile.x, projectile.y, x, y);
	bouncing = true;
	projectile.speed = 0;
	projectile.sprite_index = spr_projectile_expl;
	projectile.exploding = true;
}


if (bouncing) {
	if (speed > 0) {
		speed -= 0.12;
	} else {
		bouncing = false;
		speed = 0;
	}
}

// Process input
var key_right = keyboard_check(ord("D"));
var key_left =	keyboard_check(ord("A"));
var key_up =	keyboard_check(ord("W"));
var key_down =	keyboard_check(ord("S"));

var mhor = key_right - key_left;
var mver = key_down - key_up;

var on_floor = not place_meeting(x, y, obj_lava);

if (not on_floor and not recovering and not dashing) {
	hp -= 1
	alarm[2] = room_speed * 2;
	recovering = true;
		if (hp <= 0){
			global.dead = true;
	}
}

// Apply movement
if (not dashing) {
	// Calculate movement normalized to FPS
	var movement = deltaTime(run_speed);

	// Diagonal movement
	if (mhor != 0) and (mver != 0) {
		movement = movement * (sqrt(2) / 2);
	}
	
	x += mhor * movement;
	y += mver * movement;
	
	if (abs(mhor) + abs(mver)) > 0 {
		sprite_index = sprite_run;
	} else {
		sprite_index = sprite_idle;
	}
	// Change sprite direction if needed
	var diff = sign(mouse_x - x);
	if (diff != 0) {
		image_xscale = diff;
	}
}

var dash_pressed = mouse_check_button(mb_left);
var dash_released = mouse_check_button_released(mb_left);

if (dash_pressed and not dashing and not dash_cooldown) {
	if dash_power < dash_distance {
		dash_power += deltaTime(dash_power_speed);
	}
}

if (dash_cooldown) {
	if dash_power > 0 {
		dash_power -= deltaTime(dash_power_speed);
	} else {
		dash_cooldown = false;
		dash_power = 0;
	}
}

if (dashing) {
	instance_create_layer(x, y, "Instances", obj_player_dash);
}

if (dash_released and not dashing and not dash_cooldown) {
	dashing = true;
	var dash_time = room_speed * 0.1;
	alarm[1] = dash_time;
	var dash_speed = dash_power / dash_time;
	show_debug_message("Power: " + string(dash_power) + " Speed: " + string(dash_speed));
	speed = dash_speed;
	move_towards_point(mouse_x, mouse_y, dash_speed);
}