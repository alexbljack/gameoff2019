if (falling) {
	if (abs(image_xscale) > 0.01) {
		image_angle += 5;
		image_xscale -= sign(image_xscale) * 0.02;
		image_yscale -= 0.02;
	} else {
		instance_create_layer(x, y, "Instances", obj_death_fire);
		instance_destroy();
		score += points_for_kill;
	}
} else {
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

	if (not place_meeting(x, y, obj_floor) and not bouncing) {
		falling = true;
		sprite_index = death_spr;
	}

	if (bouncing) {
		if (speed > 0) {
			speed -= 0.12;
		} else {
			bouncing = false;
			speed = 0;
		}
	} else {
		if (!global.dead && instance_exists(obj_player)){
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
			var xf = x + lengthdir_x(bound_dist, direction);
			var yf = y + lengthdir_y(bound_dist, direction);
			if (!place_meeting(xf, yf, obj_floor) or place_meeting(xf, yf, obj_box)) {
				speed = 0;
			} else {
				speed = walk_speed;
			}
		}
	}
	if (!global.dead && instance_exists(obj_player)){
		image_xscale = sign(to_follow.x - x);
	}
}