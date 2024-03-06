/// @description Insert description here
// You can write your code in this editor

if (instance_place(x + move_x,y,obj_wall))
{
	move_x *= -1
}
if (instance_place(x,y + move_y,obj_wall))
{
	move_y *= -1
}


x += move_x
y += move_y
image_angle += rot

move_x = max(abs(move_x)-decay,0)*sign(move_x)
move_y = max(abs(move_y)-decay,0)*sign(move_y)
rot = max(abs(rot)-decay,0)*sign(rot)


