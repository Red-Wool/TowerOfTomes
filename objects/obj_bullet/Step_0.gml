/// @description Insert description here
// You can write your code in this editor


if (instance_place(x,y,obj_enemy_parent))
{
	var _instance = instance_place(x,y,obj_enemy_parent)
	_instance.move_x += lengthdir_x(20,point_direction(x,y, _instance.x, _instance.y))
	_instance.move_y += lengthdir_y(20,point_direction(x,y, _instance.x, _instance.y))
	_instance.hurt(1)
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

