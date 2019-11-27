draw_self()

draw_set_font(global.HSFONT);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xx = x + sprite_get_width(sprite_index) * 0.5;
var yy = y + sprite_get_height(sprite_index) * 0.5 - 5;

draw_text(xx, yy, text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);