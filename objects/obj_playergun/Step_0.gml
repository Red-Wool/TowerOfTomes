/// @description Insert description here
// You can write your code in this editor

shoot_timer--

current_direction = point_direction(x, y, mouse_x, mouse_y)
spawn_x = x + lengthdir_x(gun_distance, current_direction)
spawn_y = y + lengthdir_y(gun_distance, current_direction)

if !mouse_check_button(0) and shoot_timer <= 0
{
	shoot_timer = fire_rate
	
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
	
	global.camerafx.screen_shake(2, 10)
}

current_rotation = point_direction(x,y,mouse_x,mouse_y) + max(0, lerp(0, angle_recoil, recoil_timer/recoil_time)) * 
(current_direction > 90 and current_direction < 270 ? -1 : 1)

recoil_timer--