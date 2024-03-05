/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_shadow, 0, x, y+30)

if !is_hit
{
	draw_self()
}
else
{
	gpu_set_fog(true, c_white, 0,0)
	draw_self()
	gpu_set_fog(false, c_white, 0,0)	
}


