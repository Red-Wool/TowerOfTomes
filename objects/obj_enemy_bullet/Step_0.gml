/// @description Insert description here
// You can write your code in this editor


if (instance_place(x,y,obj_player))
{
	var _instance = instance_place(x,y,obj_player)
	_instance.got_hit()
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

