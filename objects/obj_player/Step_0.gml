// Process input
var key_right = keyboard_check(k_right);
var key_left =	keyboard_check(k_left);
var key_up =	keyboard_check(k_up);
var key_down =	keyboard_check(k_down);

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

// Handle item pickup
var obj = instance_place(x, y, obj_item);
if obj != noone and obj.holding_obj == noone {
	if item != noone {
		item.holding_obj = noone;
		item = noone;
	}
	obj.holding_obj = id;
	item = obj.id;
}

// Handle coin drop
var stock = instance_place(x, y, obj_stock);
if stock != noone and item != noone {
	if object_get_name(item.object_index) == "obj_coin" {
		instance_destroy(item);
		item = noone;
		global.COINS += 1;
		with (stock) {
			consuming = true;
		}
	}
}

// Handle enemy collision
var enemy = instance_place(x, y, obj_enemy);
if enemy != noone and item != noone {
	if object_get_name(item.object_index) == "obj_sword" {
		instance_destroy(item);
		item = noone;
		instance_destroy(enemy);
	}
}