/// @description Insert description here
// You can write your code in this editor

//mask_index = obj_block

player_speed = 6
hp = 2

is_hit = false
global.the_end = false
end_timer = 0

gamemanager = pointer_null

global.player_x = x
global.player_y = y

global.player_force_x = 0
global.player_force_y = 0
global.sfx = 1

has_book = false
current_book = undefined

function got_hit()
{
	hp--
	
	if hp <= 0 and !global.the_end
	{
		global.game_manager.player_death()
		global.death = true
		
		var d = instance_create_layer(x, y, "Effect", obj_player_death)
		d.move_y = random_range(-10,10)
		d.move_x = random_range(-10,10)
		
		global.camerafx.sleep(60,30)
		
		instance_destroy(self)
		//gamemanager.player_death()
	}
	else
	{
		global.camerafx.sleep(6,15)
		is_hit = true
		alarm[0] = 6

	}
}