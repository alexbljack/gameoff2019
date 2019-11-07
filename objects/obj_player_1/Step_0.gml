// Process input
var key_right = keyboard_check(ord("D"));
var key_left =	keyboard_check(ord("A"));
var key_up =	keyboard_check(ord("W"));
var key_down =	keyboard_check(ord("S"));

var mhor = key_right - key_left;
var mver = key_down - key_up;

// Calculate movement normalized to FPS
var movement = deltaTime(run_speed);

// Diagonal movement
if (mhor != 0) and (mver != 0) {
	movement = movement * (sqrt(2) / 2);
}

// Apply movement
x += mhor * movement;
y += mver * movement;

if (abs(mhor) + abs(mver)) > 0 {
	sprite_index = sprite_run;
} else {
	sprite_index = sprite_idle;
}

if (mhor != 0) {
	image_xscale = mhor;
}
