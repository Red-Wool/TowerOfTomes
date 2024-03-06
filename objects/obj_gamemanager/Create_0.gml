global.game_manager = self
global.death = false

music = audio_play_sound(RollerMobster, 10, 1,.8)

function destroy_all_blocks()
{
	for (i = 0; i < instance_number(obj_wall); ++i)
	{
		instance_destroy(instance_find(obj_wall, i))
	}
}

function destroy_some_blocks(j)
{
	for (i = 0; i < j; ++i)
	{
		instance_destroy(instance_find(obj_wall, i))
	}
}

function player_death()
{
	audio_stop_sound(RollerMobster)
	
	alarm[0] = 60
}
