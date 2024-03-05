if keyboard_check(ord("A"))
{
	x -= player_speed
}
if keyboard_check(ord("D"))
{
	x += player_speed
}
if keyboard_check(ord("W"))
{
	y -= player_speed
}
if keyboard_check(ord("S"))
{
	y += player_speed
}

x += global.player_force_x
global.player_force_x = 0
y += global.player_force_y
global.player_force_y = 0


global.player_x = x
global.player_y = y