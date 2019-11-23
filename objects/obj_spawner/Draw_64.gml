/// @description Insert description here
// You can write your code in this editor
// GUI position
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 200;

score_x = gui_width - 250;
score_y = gui_height - gui_margin;

if (triggered){
	var str = "Remaining: ";
	for (var i = 0; i < array_length_1d(remaining); i++) {
	    str += string(remaining[i]) + "|";
	}
	draw_text(score_x, score_y,
	str
	+"\nwaves tottal: " +string(total_waves + 1)
	+"\nwaves now: " + string(c_wave + 1)
	+"\nScore: " +string(global.current_score)
	)
}