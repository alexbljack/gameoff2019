/// @description Insert description here
// You can write your code in this editor
for (var i = 1; i <= max_hp; i++) {
    if (i <= hp){
		index = 0;
	} else {
		index = 1
	}
	draw_sprite(spr_hp, index, gui_width + i*gui_width_step, gui_height);
}