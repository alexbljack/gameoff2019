gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_font = fMenu;

menu_itemheight = font_get_size(menu_font);
menu_commited = -1;
menu_control = true;
menu_speed = 20;

menu[2] = "Level 1";
menu[1] = "Level 2";
menu[0] = "Exit";

menu_items = array_length_1d(menu);
menu_cursor = 2;
