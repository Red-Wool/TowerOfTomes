/// @description Insert description here
// You can write your code in this editor

hurt_sound = [enemy_hurt_1,enemy_hurt_2,enemy_hurt_3]

move_x = 0
move_y = 0

is_hit = false
hp = 2
function hurt(damage)
{
	is_hit = true
	alarm[0] = 3
	
	//var sound = asset_get_index("enemy_hurt_"+int64(random_range(1,3)))
	
	
	hp -= damage
	if (hp <= 0)
	{
		audio_play_sound(enemy_death,10,0,4*global.sfx,0,random_range(1.,1.5))
		global.camerafx.screen_shake(15, 20)
		global.camerafx.sleep(1,15)
		
		var d = instance_create_layer(x, y, "Effect", obj_enemy_death)
		d.move_y = random_range(-3,3) + move_x *.3
		d.move_x = random_range(-3,3) + move_y * .3
		
		instance_destroy(self)	
	}
	else
	{
		audio_play_sound(hurt_sound[irandom_range(0,2)],10,0,4*global.sfx,0,random_range(.8,1.2))	
	}
}

enemy_speed = 3

move_target_dist = 200
move_target_x = x
move_target_y = y

aggro_distance = 1000
shoot_distance = 450
idle_distance = 400

move_time = 150
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