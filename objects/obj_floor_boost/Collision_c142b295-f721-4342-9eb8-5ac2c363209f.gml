/// @description Insert description here
// You can write your code in this editor
if (!obj_player.dashing){
	obj_player.speed = boost_speed;
	obj_player.direction = boost_direction;
	obj_player.boosted = true;
	alarm[0] = 15;
}