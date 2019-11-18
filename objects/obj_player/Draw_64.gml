for (var i = 0; i < max_hp; i++) {
    var index = i < hp ? 0 : 1;
	var scale = 4;
	var hpSize = sprite_get_width(spr_hp) * scale;
	var hpOffset = 10;
	var heartsOffset = 20;
	draw_sprite_ext(spr_hp, index, heartsOffset + i * (hpSize + hpOffset), heartsOffset, scale, scale, 0, c_white, 1);
}