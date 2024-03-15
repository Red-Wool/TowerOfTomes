/// @description Insert description here
// You can write your code in this editor

magazine_size = 12
global.current_magazine = magazine_size
reload_time = 30
reload_timer = 0
is_reloading = false
animation_frame = 0

global.gun_speed = 2.5
global.gun_shots = 10
global.gun_accuracy = 20

hp = 2

is_hit = false

function damage(hp_damage)
{
	is_hit = true
}

gun_distance = 60
player_recoil = 3

recoil_x = 0
recoil_y = 0
position_recoil = 20
angle_recoil = 40

recoil_timer = 0
recoil_time = 10

bullet_spread = 40

shoot_timer = 0
fire_rate = 9

current_direction = 0
current_rotation = 0

spawn_x = 0
spawn_y = 0