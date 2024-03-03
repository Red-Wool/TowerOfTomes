/// @description Insert description here
// You can write your code in this editor

hp = 3
function hurt(damage)
{
	hp -= damage
	if (hp <= 0)
	{
		instance_destroy(self)	
	}
}

enemy_speed = 5

target_x = 0
target_y = 0

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