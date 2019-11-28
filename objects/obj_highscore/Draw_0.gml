//draw_set_alpha(0.5);
//draw_set_color(c_black);
//draw_rectangle(0, 0, room_width, room_height, false);
//draw_set_alpha(1);
//draw_set_color(c_white);

draw_set_font(global.HSFONT);
draw_set_halign(fa_center);
draw_text(room_width * 0.5, 50, "Top 10");
draw_set_halign(fa_left);

draw_highscore(150, 100, room_width - 150, room_height - 100);