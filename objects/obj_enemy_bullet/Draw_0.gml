/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_enemy_bullet,0,x,y,1,1,direction, c_white,1)

var ghost_dist = 12
if (timer > 1)
{
	for (var i = 0; i < 3; i++)
	{
		draw_sprite_ext(spr_enemy_bullet,0,x - lengthdir_x(ghost_dist, direction)*i, y- lengthdir_y(ghost_dist, direction)*i,(1 - i*.1)*visual_size,(1 - i*.1)*visual_size,direction, c_white,1 - i*.40)
	}
}
