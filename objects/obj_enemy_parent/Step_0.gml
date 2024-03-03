/// @description Insert description here
// You can write your code in this editor

shoot_timer--
if shoot_timer < 0
{
	shoot_timer = fire_rate
	
	var bullet = instance_create_layer(spawn_x, spawn_y, "MainLayer", obj_bullet)
	
	var target_x = mouse_x + random_range(-bullet_spread,bullet_spread)
	var target_y = mouse_y + random_range(-bullet_spread,bullet_spread)
	var target_direction = point_direction(spawn_x, spawn_y, target_x, target_y)
	
	bullet.direction = target_direction
	bullet.image_angle = target_direction
	
	recoil_x = random_range(position_recoil-2, position_recoil) * -lengthdir_x(1, target_direction)
	recoil_y = random_range(position_recoil-2, position_recoil) * -lengthdir_y(1, target_direction)
	
	recoil_timer = random_range(recoil_time-3, recoil_time)
}