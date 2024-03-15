var shake_x = 0
var shake_y = 0

shake_timer--
if (shake_timer > 0)
{
	var p = shake_power * (shake_timer/shake_time)
	shake_x = random_range(-p,p)
	shake_y = random_range(-p,p)
}

x = global.camera_x + shake_x
y = global.camera_y + shake_y

window_set_size(1366, 768)

if global.the_end
window_set_position(x-global.player_x + (display_get_width()-window_get_width())/2,y-global.player_y + (display_get_height()-window_get_height())/2)