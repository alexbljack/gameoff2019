var player = instance_place(x, y, obj_player);
if  (player and player.dashing) {
	speed = player.speed / 4;
	direction = point_direction(player.x, player.y, x, y);
	bouncing = true;
	player.dashing = false;
	player.speed = 0;
}


var enemy = instance_place(x, y, obj_BaseEnemy);
if (enemy and not bouncing and enemy.bouncing) {
	speed = enemy.speed;
	direction = point_direction(enemy.x, enemy.y, x, y);
	bouncing = true;
}

var on_floor = place_meeting(x, y, obj_floor);
if (not on_floor) {
	instance_destroy();
}


if (bouncing) {
	if (speed > 0) {
		speed -= 0.12;
	} else {
		bouncing = false;
		speed = 0;
	}
} else {
	if (instance_exists(obj_player)){
		var fromX = x;
		var fromY = y;
	
		var toX = to_follow.x;
		var toY = to_follow.y;
	
		for (var i = 0; i < instance_number(obj_BaseEnemy); ++i) {
		    var e = instance_find(obj_BaseEnemy, i);
			if (e.id != id and distance_to_point(e.x, e.y) < max_enemy_dist) {
				fromX = e.x;
				fromY = e.y;
				toX = x;
				toY = y;
				break;	
			}
		}
		direction = point_direction(fromX, fromY, toX, toY);
		speed = walk_speed;
	}
}

image_xscale = sign(to_follow.x - x);