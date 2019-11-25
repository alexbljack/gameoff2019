/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < instance_number(obj_BaseEnemy); ++i) {
	var e = instance_find(obj_BaseEnemy, i);
	for (var j = 0; j < instance_number(obj_floor_boost); ++j) {
		var b = instance_find(obj_floor_boost, j);
		if (place_meeting(e.x, e.y, b)) {
			e.speed = b.boost_speed;
			show_debug_message(b.boost_speed)
			e.direction = b.boost_direction;
			e.bouncing = true;
			alarm[0] = 15;
		}
	}
}