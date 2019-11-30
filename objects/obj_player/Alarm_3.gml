if recovering {
	show_debug_message(string(image_alpha))
	if (image_alpha > 0.9) {
		image_alpha = 0.3;
	} else {
		image_alpha = 0.95;
	}
	alarm[3] = room_speed * 0.3;
}