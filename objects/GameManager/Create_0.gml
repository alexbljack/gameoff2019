global.COINS = 0;

p1_x = room_width * 0.2;
p1_y = room_height * 0.2

p2_x = room_width * 0.8;
p2_y = room_height * 0.8;

player1 = instance_create_layer(p1_x, p1_y, "Game_Objects", obj_player);
player2 = instance_create_layer(p2_x, p2_y, "Game_Objects", obj_player);

alarm[0] = 5 * room_speed;