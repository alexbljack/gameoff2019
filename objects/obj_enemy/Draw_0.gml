draw_self();

if (global.DEBUG) {
	// Bounding box
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,0.5);
	
	// Vector for bounce from player
	draw_line(x, y, obj_player.x, obj_player.y);
}