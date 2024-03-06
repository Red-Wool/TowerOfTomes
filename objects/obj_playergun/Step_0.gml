/// @description Insert description here
// You can write your code in this editor

if (global.death)
{
	image_index = spr_gun
	recoil_timer = 0
	exit
}

depth = -y-1

shoot_timer--
reload_timer--
animation_frame = min(int64((reload_time - reload_timer)/2), 13)

current_direction = point_direction(x, y, mouse_x, mouse_y)
spawn_x = x + lengthdir_x(gun_distance, current_direction)
spawn_y = y + lengthdir_y(gun_distance, current_direction)

if is_reloading
{

	if reload_timer <= 0
	{
		is_reloading = false
		current_magazine = magazine_size
	}
}

if !mouse_check_button(0) and shoot_timer <= 0 and !is_reloading
{
	if (current_magazine <= 0)
	{
		audio_play_sound(reload_gun,1,0,.5,0,random_range(1,1.5))
		
		var bullet_magazine = instance_create_layer(x, y, "Effect", obj_bullet_magazine)
		bullet_magazine.move_x = random_range(-10,10)
		bullet_magazine.move_y = random_range(-10,10)
		bullet_magazine.rot = random_range(-30,30)
		
		global.camerafx.screen_shake(5, 10)
		
		animation_frame = true
		is_reloading = true
		reload_timer = reload_time
	}
	else
	{
		current_magazine--
		shoot_timer = fire_rate
	
		audio_play_sound(gun_shot,1,0,.5,0,random_range(1.5,2)+max(3 - current_magazine,0)*.2)
		
		global.player_force_x -= lengthdir_x(player_recoil, current_direction)
		global.player_force_y -= lengthdir_y(player_recoil, current_direction)
	
		var bullet = instance_create_layer(spawn_x, spawn_y, "MainLayer", obj_bullet)
	
		var target_x = mouse_x + random_range(-bullet_spread,bullet_spread)
		var target_y = mouse_y + random_range(-bullet_spread,bullet_spread)
		var target_direction = point_direction(spawn_x, spawn_y, target_x, target_y)
	
		bullet.direction = target_direction
		bullet.image_angle = target_direction
	
		recoil_x = random_range(position_recoil-2, position_recoil) * -lengthdir_x(1, target_direction)
		recoil_y = random_range(position_recoil-2, position_recoil) * -lengthdir_y(1, target_direction)
	
		recoil_timer = random_range(recoil_time-3, recoil_time)
		
		var bullet_casing = instance_create_layer(spawn_x, spawn_y, "Effect", obj_bullet_casing)
		bullet_casing.move_x = (random_range(-1,1) + recoil_x + random_range(5-recoil_y, -5+recoil_y))*random_range(.8,1.3)
		bullet_casing.move_y = (random_range(-1,1) + recoil_y + random_range(5-recoil_x, -5+recoil_x))*random_range(.8,1.3)
		bullet_casing.rot = random_range(-30,30)
		
		global.camerafx.screen_shake(5, 10)
	}
}

current_rotation = point_direction(x,y,mouse_x,mouse_y) + max(0, lerp(0, angle_recoil, recoil_timer/recoil_time)) * 
(current_direction > 90 and current_direction < 270 ? -1 : 1)

x = lerp(x, global.player_x, .4)
y = lerp(y, global.player_y, .4)

recoil_timer--