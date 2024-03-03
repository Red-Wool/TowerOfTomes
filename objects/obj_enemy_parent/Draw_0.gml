
draw_sprite(spr_enemy, 0, x, y)

draw_sprite_ext(spr_enemy_gun, current_direction > 90 and current_direction < 270, x, y, 1, 1, point_direction(x,y,global.player_x, global.player_y),c_white,1)

