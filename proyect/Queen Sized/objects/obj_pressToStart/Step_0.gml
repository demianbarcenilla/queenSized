if(mouse_check_button_pressed(mb_left))
{
	sprite_index = spr_start2;
	screenshake(10, 5, .2);
	
	if(alarm[0] = -1) 
	{
		alarm[0] = 30;
		audio_play_sound(snd_select, 1, false);
	}
	
};