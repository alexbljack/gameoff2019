var player = instance_place(x, y, obj_player);
if  (player and player.dashing) {
	speed = player.speed / 4;
	direction = point_direction(player.x, player.y, x, y);
	bouncing = true;
	player.dashing = false;
	player.speed = 0;
}


var enemy = instance_place(x, y, obj_enemy);
var enemy_on_floor = place_meeting(x, y, obj_floor);
if (enemy and not bouncing) {
	speed = enemy.speed;
	direction = point_direction(enemy.x, enemy.y, x, y);
	bouncing = true;
}


if (bouncing) {
	if (speed > 0) {
		speed -= 0.12;
	} else {
		bouncing = false;
		speed = 0;
	}
} else if (enemy_on_floor){
	move_towards_point(to_follow.x, to_follow.y, 0.5);
	} else {
	instance_destroy();
}