/// @description Insert description here
// You can write your code in this editor
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control){
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = 2;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_commited = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_commited != -1){
	switch (menu_commited){
		case 2: default: room_goto(r_level); break;
		case 1: default: room_goto(r_level2); break;
		case 0: game_end();
	}
}