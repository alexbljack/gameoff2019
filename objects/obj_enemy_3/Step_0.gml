if (dash_triggered and instance_exists(obj_player)) {
	dash_triggered = false;
	dashing = true;
	var player = instance_nearest(x, y, obj_player);
	var dash_time = room_speed * 0.2;
	alarm[1] = dash_time;
	var dash_speed = 100 / dash_time;
	show_debug_message(string(dash_speed));
	angle = point_direction(x, y, player.x, player.y);
	distance = dash_speed * dash_time;
	tX = distance * abs(cos(angle*0.017));
	tY = distance * abs(sin(angle*0.017));
	show_debug_message(angle);
	show_debug_message(x + tX);
	show_debug_message(y + tY);
	if (place_meeting(x + tX, y + tY, obj_floor)){
		show_debug_message("dashing");
		speed = dash_speed;
		move_towards_point(player.x, player.y, dash_speed);
	}
}

if (dashing) {
	instance_create_layer(x, y, "Instances", obj_enemy_3_dash);
} else {
	event_inherited();
}