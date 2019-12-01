/// Spawn

if (triggered){
	for (var i = 0; i < ds_list_size(waves); i++) {
	    var next = ds_list_find_value(waves, i);
		if (next[_WAVE] == c_wave) && (next[_DELAY] == timer) {
			instance_activate_object(obj_portal);
			var spw = instance_create_layer(spawn[0, 0], spawn[0, 1], "Enemy", obj_spawn);
			var spw2 = instance_create_layer(spawn[1, 0], spawn[1, 1], "Enemy2", obj_spawn);
			spw.enemy = next[_TYPE];
			spw2.enemy = next[_TYPE];
		}
	}
	timer++;
	
	if (remaining[c_wave] <= 0){
		if (c_wave == total_waves){
			instance_destroy();
			instance_deactivate_object(obj_portal);
		}
		else {
			c_wave++;
			timer = 0;
		}
	}
}
