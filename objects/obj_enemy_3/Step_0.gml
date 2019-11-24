if (dash_triggered) {
	dash_triggered = false;
	dashing = true;
	var player = instance_nearest(x, y, obj_player);
	var dash_time = room_speed * 0.2;
	alarm[1] = dash_time;
	var dash_speed = 100 / dash_time;
	show_debug_message(string(dash_speed));
	speed = dash_speed;
	move_towards_point(player.x, player.y, dash_speed);
}

if (dashing) {
	instance_create_layer(x, y, "Instances", obj_enemy_3_dash);
} else {
	event_inherited();
}