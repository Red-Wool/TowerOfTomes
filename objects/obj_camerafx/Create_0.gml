global.camerafx = self

shake_power = 0
shake_time = 0
shake_timer = 0

function screen_shake(pow, s_time)
{
	shake_power = pow
	shake_time = s_time
	shake_timer = s_time
}