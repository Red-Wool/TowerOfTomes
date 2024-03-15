/// @description Insert description here
// You can write your code in this editor

timer++
var size_scale = min(power(timer,3)*.00001,1) 
window_set_size(1366 * size_scale, 768 * size_scale)
window_set_position((display_get_width()-window_get_width())/2,(display_get_height()-window_get_height())/2)


if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(RollerMobster, 10, 1,.8)
	room_goto(GameScene)	
}


