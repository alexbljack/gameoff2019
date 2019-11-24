if (!global.dead && instance_exists(obj_player)){
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	image_angle = direction;
	speed = start_speed;
}

exploding = false;