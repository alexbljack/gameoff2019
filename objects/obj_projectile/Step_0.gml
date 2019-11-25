if (exploding) {
	if (image_index > image_number - 1) {
		instance_destroy();
	}
}

if (place_meeting(x, y, obj_box)){
	instance_destroy();
}