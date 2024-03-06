/// @description Insert description here
// You can write your code in this editor

if global.death and keyboard_check_pressed(ord("R"))
{
	game_set_speed(60, gamespeed_fps);
	room_restart()	
}

