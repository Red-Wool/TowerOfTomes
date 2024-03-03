/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_bullet,0,x,y,1,1,direction, c_white,1)

var ghost_dist = 25
if (timer > 1)
{
	for (var i = 0; i < 6; i++)
	{
		draw_sprite_ext(spr_bullet,0,x - lengthdir_x(ghost_dist, direction)*i, y- lengthdir_y(ghost_dist, direction)*i,1 - i*.1,1 - i*.1,direction, c_white,1 - i*.15)
	}
}
