/// @description Shoot projectile
instance_create_layer(x, y, "Instances", obj_projectile);
alarm[0] = room_speed * random_range(2, 4);