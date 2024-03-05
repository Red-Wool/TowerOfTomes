/// @description Insert description here
// You can write your code in this editor

collision_list = [obj_block]

timer = 0
death_time = 400

visual_size = 1

speed = 8

function death()
{
	instance_create_layer(x,y,"MainLayer", obj_bullet_explosion)
	instance_destroy(self)	
}