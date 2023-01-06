image_index = i;

if(mouse_check_button_pressed(mb_left))
{
	if(i = array_length(arr_text)-1)
	{
		if(global.newUnlocks)
		{
			room_goto(rm_newUnlocks)
		}
		else
		{
			resetGameState();
			room_goto(rm_menu);
		}
	};
	else
	{
		i++;
		screenshake(5, 10, .1);
		audio_play_sound(snd_error, 0, 0);
	};
};