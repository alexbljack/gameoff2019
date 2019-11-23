#macro _TYPE 1
#macro _DELAY 3
#macro _SPAWN 2
#macro _WAVE 0

triggered = false;
timer = 0;
c_wave = 0;
global.current_score = 0;

waves = ds_list_create();
enemy_count = 5;
total_waves = 3;
//List of enemy
enemy_list = ds_list_create();
ds_list_add(enemy_list, obj_enemy);
ds_list_add(enemy_list, obj_enemy_2);

//Generate waves
wave = 0;
position = 100;
while (wave <= total_waves) {
	for (var j = 0; j < enemy_count; j++) {
		random_enemy = irandom_range(0, 1);
		ds_list_add(waves, [wave, enemy_list[| random_enemy], 0, j*position]);
	}
	position++;
	wave++;
}

// Spawn position
spawn[0,0] = 100;
spawn[0,1] = 100;

