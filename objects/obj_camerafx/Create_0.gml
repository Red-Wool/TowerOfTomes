global.camerafx = self

shake_power = 0
shake_time = 0
shake_timer = 0

width = window_get_width()/2

function screen_shake(pow, s_time)
{
	shake_power = pow
	shake_time = s_time
	shake_timer = s_time
}

function sleep(t, gspeed)
{
	alarm[0] = t
	game_set_speed(gspeed, gamespeed_fps);
}