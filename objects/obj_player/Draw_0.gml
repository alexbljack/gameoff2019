draw_self();

var x1 = x - 9;
var y1 = y - 19;
var x2 = x + 9;
var y2 = y - 17;

if (alarm[0] != -1) {
	var charge = (dash_timer - alarm[0]) / dash_timer * 100;
} else {
	var charge = 100;
}

if (not is_falling) {
	draw_healthbar(x1, y1, x2, y2, charge, c_black, c_red, c_orange, 0, false, true);
}

// Debug
draw_line(x, y, mouse_x, mouse_y);