if (not global.dead) {
	var hp_end = 0;
	var scale = 4;
	var hpSize = sprite_get_width(spr_hp) * scale;
	var hpOffset = 10;
	var heartsOffset = 20;

	for (var i = 0; i < max_hp; i++) {
	    var index = i < hp ? 0 : 1;
		hp_end = heartsOffset + i * (hpSize + hpOffset);
		draw_sprite_ext(spr_hp, index, hp_end, heartsOffset, scale, scale, 0, c_white, 1);
	}

	draw_set_font(global.FONT);
	var sx = hp_end + hpSize + 50;
	var sy = 20;

	draw_sprite_ext(spr_coin, 0, sx - 10, sy + 15, 4, 4, 0, c_white, 1);
	draw_set_halign(fa_left);
	draw_text(sx + 30, sy, score);	
}