if is_falling {
	if abs(image_xscale) < 0.1 {
		show_debug_message("Game Over");
		instance_deactivate_object(id);
	}
	image_angle += falling_rotation_spd;
	image_xscale = image_xscale - sign(image_xscale) * 0.01;
    image_yscale = image_xscale;
}

// Process input
var key_right = keyboard_check(k_right);
var key_left =	keyboard_check(k_left);
var key_up =	keyboard_check(k_up);
var key_down =	keyboard_check(k_down);
var dash_clicked = mouse_check_button_pressed(mb_left);

var mhor = key_right - key_left;
var mver = key_down - key_up;

var on_floor = place_meeting(x, y, obj_floor);

if (not on_floor and not started_falling) {
	alarm[2] = room_speed * 2;
	started_falling = true;
}

if (on_floor and started_falling) {
	show_debug_message("RECOVERED");
	started_falling = false;
	alarm[2] = -1;
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
	if (mhor != 0) {
		image_xscale = mhor;
	}
}

if dash_clicked {
	if (can_dash) {
		dashing = true;
		var dash_time = room_speed * 0.3;
		alarm[1] = dash_time;
		move_towards_point(mouse_x, mouse_y, dash_distance / dash_time);
		
		// Change sprite direction if needed
		var diff = sign(mouse_x - x);
		if (diff != 0) {
			image_xscale = diff;
		}
		can_dash = false;
	}
}