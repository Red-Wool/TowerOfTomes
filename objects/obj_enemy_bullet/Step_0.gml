/// @description Insert description here
// You can write your code in this editor


if (instance_place(x,y,obj_player))
{
	var _instance = instance_place(x,y,obj_player)
	global.player_force_x += lengthdir_x(20,point_direction(x,y, _instance.x, _instance.y))
	global.player_force_y += lengthdir_y(20,point_direction(x,y, _instance.x, _instance.y))
	_instance.got_hit()
	death()
}
if (instance_place(x,y,obj_wall))
{
	death()
}


timer += 1
if (timer >= death_time)
{
	death()
}

