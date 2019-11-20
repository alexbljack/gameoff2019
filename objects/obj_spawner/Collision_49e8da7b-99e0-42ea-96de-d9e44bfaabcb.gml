/// @description Insert description here
// You can write your code in this editor
if (triggered == false){
	triggered = true;
	total_waves = -1;
	
	for (var i = 0; i < ds_list_size(waves); i++) {
			var thisentry = ds_list_find_value(waves, i);
		if (thisentry[_WAVE] > total_waves){
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++;
	}
}