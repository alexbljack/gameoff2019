/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x, y, 40, obj_player, false, true)) {
	solid = false;
	visible = false;
} else {
	solid = true;
	visible = true;
}