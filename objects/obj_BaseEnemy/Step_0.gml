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
			mp_potential_step(obj_player.x, obj_player.y, walk_speed, false)
		}
	}
	if (!global.dead && instance_exists(obj_player)){
		image_xscale = sign(to_follow.x - x);
	}
}

if (collision_circle(x, y, 40, obj_floor_boost, false, true)) {
	solid = false;
} else {
	solid = true;
}