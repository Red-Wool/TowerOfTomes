/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(spr_gun, current_direction > 90 and current_direction < 270,x,y,1,1,current_rotation, c_white,1)

if (recoil_timer > 0)
{
	draw_set_color(recoil_timer % 4 >= 2 ? c_orange : c_yellow)
	draw_circle(spawn_x,spawn_y, random_range(10,30)*(recoil_timer/recoil_time), false)	
}
