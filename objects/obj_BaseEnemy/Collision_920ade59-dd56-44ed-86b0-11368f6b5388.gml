/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < instance_number(obj_BaseEnemy); ++i) {
	var e = instance_find(obj_BaseEnemy, i);
	if (place_meeting(e.x, e.y, obj_floor_boost)) {
		e.speed = obj_floor_boost.boost_speed;
		e.direction = obj_floor_boost.boost_direction;
		e.bouncing = true;
		alarm[0] = 15;
	}
}
