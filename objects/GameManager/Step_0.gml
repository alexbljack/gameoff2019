var count = instance_number(obj_enemy);

if (alarm[0] <= 0 && count < 10)
{
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(0, room_height);
	var enemy = instance_create_layer(xx, yy, "Enemy", obj_enemy);
	with (enemy)
	{
		while (place_meeting(x, y, obj_enemy) or place_meeting(x, y, obj_player) or not place_meeting(x, y, obj_floor))
		{
			x = irandom_range(0, room_width);
			y = irandom_range(0, room_height);
		}
	}
	alarm[0] = 2 * room_speed;
}