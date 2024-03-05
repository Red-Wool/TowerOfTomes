/// @description Insert description here
// You can write your code in this editor

//mask_index = obj_block

player_speed = 6
hp = 4

is_hit = false

global.player_x = x
global.player_y = y

global.player_force_x = 0
global.player_force_y = 0

function got_hit()
{
	hp--
	is_hit = true
	alarm[0] = 3
}