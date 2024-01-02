image_index = i;

if(mouse_check_button_pressed(mb_left))
{
	if(i = 4)
	{
		room_goto(rm_game);
	}
	else
	{
		i++;
		screenshake(5, 10, .1);
		audio_play_sound(snd_error, 0, 0);
	};
};