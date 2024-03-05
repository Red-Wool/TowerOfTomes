/// @description Insert description here
// You can write your code in this editor

var sprite_use = is_reloading ? ( current_direction > 90 and current_direction < 270 ? spr_gun_spin_left : spr_gun_spin_right)
: spr_gun
var sprite_ind = is_reloading ? animation_frame : int64(current_direction > 90 and current_direction < 270)

draw_sprite_ext(sprite_use, sprite_ind,
x+recoil_x*max(recoil_timer/recoil_time,0),y+recoil_y*max(recoil_timer/recoil_time,0),1,1,current_rotation, c_white,1)

if (recoil_timer > 0)
{
	draw_set_color(recoil_timer % 4 >= 2 ? c_orange : c_yellow)
	draw_circle(spawn_x,spawn_y, random_range(10,30)*(recoil_timer/recoil_time), false)	
}	