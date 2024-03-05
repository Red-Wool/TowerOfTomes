/// @description Insert description here
// You can write your code in this editor

hp = 3
function hurt(damage)
{
	hp -= damage
	if (hp <= 0)
	{
		global.camerafx.screen_shake(15, 20)
		instance_destroy(self)	
	}
}

enemy_speed = 2

move_target_dist = 200
move_target_x = x
move_target_y = y

aggro_distance = 1000
shoot_distance = 500
idle_distance = 300

move_time = 200
move_timer = move_time

gun_distance = 60

gun_pos_x = x
gun_pos_y = y

recoil_x = 0
recoil_y = 0
position_recoil = 10
angle_recoil = 40

recoil_timer = 0
recoil_time = 10

bullet_spread = 40

shoot_timer = 0
fire_rate = 100

current_direction = 0
current_rotation = 0

spawn_x = 0
spawn_y = 0