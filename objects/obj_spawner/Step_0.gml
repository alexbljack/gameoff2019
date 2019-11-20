/// Spawn

if (triggered){
	for (var i = 0; i < ds_list_size(waves); i++) {
	    var next = ds_list_find_value(waves, i);
		if (next[_WAVE] == c_wave) && (next[_DELAY] == timer) {
			var spawnPoint = next[_SPAWN];
			draw_sprite(spr_fire, 0, 200, 200);
			instance_create_layer(spawn[spawnPoint, 0], spawn[spawnPoint, 1], "Enemy", next[_TYPE]);
		}
	}
	timer++;
	
	if (remaining[c_wave] <= 0){
		if (c_wave == total_waves){
			instance_destroy();
		}
		else {
			c_wave++;
			timer = 0;
		}
	}
}
