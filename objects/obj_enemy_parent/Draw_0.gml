
draw_sprite(spr_enemy, 0, x, y)

draw_sprite_ext(spr_enemy_gun, current_direction > 90 and current_direction < 270,
gun_pos_x + recoil_x*max(recoil_timer/recoil_time,0), gun_pos_y + recoil_y*max(recoil_timer/recoil_time,0), 1, 1,current_rotation,c_white,1)

