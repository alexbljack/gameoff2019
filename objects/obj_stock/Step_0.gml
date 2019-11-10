if consuming and image_speed == 0 {
	image_speed = 3;
}

if image_index == image_number - 1 {
	consuming = false;
	image_speed = 0;
	image_index = 0;
}