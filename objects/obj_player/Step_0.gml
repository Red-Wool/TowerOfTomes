if keyboard_check(vk_left)
{
	x -= player_speed
}
if keyboard_check(vk_right)
{
	x += player_speed
}
if keyboard_check(vk_up)
{
	y -= player_speed
}
if keyboard_check(vk_down)
{
	y += player_speed
}

x += global.player_force_x
global.player_force_x = 0
y += global.player_force_y
global.player_force_y = 0


global.player_x = x
global.player_y = y