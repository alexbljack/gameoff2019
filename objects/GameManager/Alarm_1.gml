instance_deactivate_all(true);
instance_activate_layer("Menu");
instance_create_layer(room_width * 0.5 - sprite_get_width(spr_menu_button) * 0.5, room_height - 80, "Menu", obj_button_restart);
instance_create_layer(x, y, "Menu", obj_highscore);
