draw_self();

var x1 = x - 9;
var y1 = y - 19;
var x2 = x + 9;
var y2 = y - 17;

var charge = dash_power / dash_distance * 100;

draw_healthbar(x1, y1, x2, y2, charge, c_black, c_yellow, c_red, 0, true, true);

if (global.DEBUG) {
	draw_line(x, y, mouse_x, mouse_y);
	mask_index = sprite_index;
	draw_sprite_ext(mask_index,0,x,y,1,1,0,c_black,0.5);
}