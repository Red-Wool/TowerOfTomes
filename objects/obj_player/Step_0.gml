depth = -y

if (global.the_end)
{
	end_timer += 1
	global.sfx = 1.-.002*end_timer	
	
	global.camerafx.screen_shake(max(0, .8*(end_timer-1400)),2)
	
}

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

if mouse_check_button(mb_right) and has_book
{
	audio_play_sound(paper_rustling,10,0,1*global.sfx)
	if (current_book.object_index == obj_book_shotgun)
	{
		global.current_magazine = 5
		global.gun_speed = 2.5
		global.gun_shots = 10
		global.gun_accuracy = 20
		has_book = false
	}
	if (current_book.object_index == obj_book_shoot_fast)
	{
		global.current_magazine = 18
		global.gun_speed = .3
		global.gun_shots = 1
		global.gun_accuracy = 0
		has_book = false
	}
	if (current_book.object_index == obj_book_bomb)
	{
		
		has_book = false
	}
	if (current_book.object_index == obj_book_nuke and !global.the_end)
	{
		audio_stop_all()
		audio_play_sound(legalize_nuclear_bombs, 1000, 0, 1)
		alarm[1] = 60
		alarm[2] = 1500
		alarm[3] = 2100
		global.the_end = true
		has_book = false
	}
	
	instance_destroy(current_book)
	//global.game_manager.sad()
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

if (!has_book and instance_place(x,y,obj_book))
{
	hp = 2
	current_book = instance_place(x,y,obj_book)
	has_book = true
}
if (has_book)
{
	current_book.x = lerp(current_book.x, x, .1) 	
	current_book.y = lerp(current_book.y, y, .1) 	
}