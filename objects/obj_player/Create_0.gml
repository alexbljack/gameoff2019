k_up = ord("W");
k_down = ord("S");
k_left = ord("A");
k_right = ord("D");

dashing = false;
dash_cooldown = false;
recovering = false;
bouncing = false;
global.dead = false;

dash_power = 0;

max_hp = 3;
hp = 3;
gui_width = display_get_gui_width() - 950;
gui_height = display_get_gui_height() - 700;
gui_width_step = 30;

