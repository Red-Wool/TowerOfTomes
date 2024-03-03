/// @description Insert description here
// You can write your code in this editor

var dist = point_distance(x,y,global.player_x,global.player_y)
if dist < aggro_distance
{
	current_direction = point_direction(x, y, global.player_x, global.player_y)
	
	move_timer--
	
	
	if point_distance(x,y,move_target_x,move_target_y) > enemy_speed
	{
		var target_direction = point_direction(x,y,move_target_x,move_target_y)
		x += lengthdir_x(enemy_speed, target_direction)
		y += lengthdir_y(enemy_speed, target_direction)
	}
	
	if move_timer < 0
	{
		move_timer = move_time	
		move_target_x = x + (dist > idle_distance ? lengthdir_x(move_target_dist, current_direction) : random_range(-move_target_dist, move_target_dist))
		move_target_y = y + (dist > idle_distance ? lengthdir_y(move_target_dist, current_direction) : random_range(-move_target_dist, move_target_dist))
	}

	//Gun
	spawn_x = x + lengthdir_x(gun_distance, current_direction)
	spawn_y = y + lengthdir_y(gun_distance, current_direction)

	shoot_timer--
	recoil_timer--
	
	if shoot_timer < 0 and dist < shoot_distance
	{
		shoot_timer = fire_rate
	
		var bullet = instance_create_layer(spawn_x, spawn_y, "MainLayer", obj_enemy_bullet)
	
		var target_x = global.player_x + random_range(-bullet_spread,bullet_spread)
		var target_y = global.player_y + random_range(-bullet_spread,bullet_spread)
		var target_direction = point_direction(spawn_x, spawn_y, target_x, target_y)
	
		bullet.direction = target_direction
		bullet.image_angle = target_direction
	
		recoil_x = random_range(position_recoil-2, position_recoil) * -lengthdir_x(1, target_direction)
		recoil_y = random_range(position_recoil-2, position_recoil) * -lengthdir_y(1, target_direction)
	
		recoil_timer = random_range(recoil_time-3, recoil_time)
	}
	
	current_rotation = point_direction(x,y,global.player_x,global.player_y) + max(0, lerp(0, angle_recoil, recoil_timer/recoil_time)) * 
	(current_direction > 90 and current_direction < 270 ? -1 : 1)

	gun_pos_x = lerp(gun_pos_x, x, .4) 
	gun_pos_y = lerp(gun_pos_y, y, .4)
}