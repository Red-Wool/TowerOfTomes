/// @description Insert description here
// You can write your code in this editor


if (instance_place(x,y,obj_enemy_parent))
{
	var _instance = instance_place(x,y,obj_enemy_parent)
	_instance.hurt(1)
	death()
}
if (instance_place(x,y,collision_list))
{
	death()
}


timer += 1
if (timer >= death_time)
{
	death()
}

