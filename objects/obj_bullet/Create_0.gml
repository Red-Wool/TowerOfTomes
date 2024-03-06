/// @description Insert description here
// You can write your code in this editor

collision_list = [obj_block]

timer = 0
death_time = 200


speed = 32

function death()
{
	audio_play_sound(bullet_hit, 10, 0, 1, 0, random_range(1.3,1.7))
	
	instance_create_layer(x,y,"MainLayer", obj_bullet_explosion)
	instance_destroy(self)	
}