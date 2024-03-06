if keyboard_check(ord("A"))
{
	global.player_force_x -= player_speed
}
if keyboard_check(ord("D"))
{
	global.player_force_x += player_speed
}
if keyboard_check(ord("W"))
{
	global.player_force_y -= player_speed
}
if keyboard_check(ord("S"))
{
	global.player_force_y += player_speed
}

sprite_index = global.player_force_x != 0 or global.player_force_y != 0 ? spr_player_walk : spr_player

x += global.player_force_x
global.player_force_x = 0
y += global.player_force_y
global.player_force_y = 0

image_xscale = x - mouse_x > 0 ? -1 : 1

global.player_x = x
global.player_y = y