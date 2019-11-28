if (message != "") {
	global.name = message;
	GameManager.alarm[1] = 1;
	highscore_add(message, score);
	instance_destroy();
}