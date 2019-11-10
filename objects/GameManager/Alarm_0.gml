// Spawn coins
show_debug_message("Spawn coin");

var cx = irandom_range(50, room_width - 50);
var cy = irandom_range(50, room_height - 50);

instance_create_layer(cx, cy, "Instances", obj_coin);

alarm[0] = room_speed * irandom_range(3, 5);