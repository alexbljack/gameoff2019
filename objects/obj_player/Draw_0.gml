draw_self();

var x1 = x - 9;
var y1 = y - 19;
var x2 = x + 9;
var y2 = y - 17;

var charge = dash_power / dash_distance * 100;

draw_healthbar(x1, y1, x2, y2, charge, c_aqua, c_yellow, c_red, 0, false, true);

if (global.DEBUG) {
	draw_line(x, y, mouse_x, mouse_y);
	mask_index = sprite_index;
	draw_sprite_ext(mask_index,0,x,y,1,1,0,c_black,0.5);
}

var sword_dir = point_direction(x, y, mouse_x, mouse_y) - 90;
draw_sprite_ext(spr_spear, 0, x, y + 4, 0.7, 0.7, sword_dir, c_white, 1);

if (global.dead){
	with(instance_create_layer(128, 64, "Menu", obj_button_restart)){
    image_xscale = 0.338;
    image_yscale = 0.283;
	}
	
	with(instance_create_layer(229, 146, "Menu", obj_button_exit)){
    image_xscale = 0.338;
    image_yscale = 0.283;
	}
	instance_deactivate_object(obj_player);
	global.dead = false;
}

