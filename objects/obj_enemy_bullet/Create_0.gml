/// @description Insert description here
// You can write your code in this editor



timer = 0
death_time = 400

visual_size = 1

speed = 10

function death()
{
	audio_play_sound(bullet_hit, 10, 0, 1, 0, random_range(.9,1.2))
	
	instance_create_layer(x,y,"MainLayer", obj_enemy_bullet_explosion)
	instance_destroy(self)	
}