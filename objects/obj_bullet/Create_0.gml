/// @description Insert description here
// You can write your code in this editor

collision_list = [obj_block]

timer = 0
death_time = 200


speed = 32

function death()
{
	instance_create_layer(x,y,"MainLayer", obj_bullet_explosion)
	instance_destroy(self)	
}