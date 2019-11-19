if (!global.dead && instance_exists(obj_player)){
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 1.5;
}