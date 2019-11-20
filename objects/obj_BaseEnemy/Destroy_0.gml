/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_spawner)){
	with (obj_spawner) {
		if (triggered){
			remaining[c_wave]--;
		}
	}
}