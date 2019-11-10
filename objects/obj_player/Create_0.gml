item = noone;

p_count = instance_number(obj_player);

// Controls for Player 1
if p_count == 1 {
	k_up = ord("W");
	k_down = ord("S");
	k_left = ord("A");
	k_right = ord("D");
	image_blend = c_blue;
}


// Controls for Player 2
if p_count == 2 {
	k_up = vk_up;
	k_down = vk_down;
	k_left = vk_left;
	k_right = vk_right;
	image_blend = c_red;
}