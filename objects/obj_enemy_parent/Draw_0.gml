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

draw_sprite_ext(spr_enemy_gun, current_direction > 90 and current_direction < 270,
gun_pos_x + recoil_x*max(recoil_timer/recoil_time,0), gun_pos_y + recoil_y*max(recoil_timer/recoil_time,0), 1, 1,current_rotation,c_white,1)

