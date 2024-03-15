depth = -y

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

if mouse_check_button(mb_right)
{
	if (current_book == obj_book)
	{
		global.current_magazine = 12
		global.gun_speed = 2.5
		global.gun_shots = 10
		global.gun_accuracy = 20
		has_book = false
	}
	
}

sprite_index = global.player_force_x != 0 or global.player_force_y != 0 ? spr_player_walk : spr_player

if (instance_place(x + global.player_force_x,y,obj_wall))
{
	global.player_force_x = 0
}
if (instance_place(x,y + global.player_force_y,obj_wall))
{
	global.player_force_y = 0
}
if (instance_place(x + global.player_force_x,y + global.player_force_y,obj_wall))
{
	global.player_force_x = 0
	global.player_force_y = 0
}


x += global.player_force_x
global.player_force_x = 0
y += global.player_force_y
global.player_force_y = 0

image_xscale = x - mouse_x > 0 ? -1 : 1

global.player_x = x
global.player_y = y