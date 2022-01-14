t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		//Set Fullscreen
		if window_get_fullscreen()
		{
			window_set_fullscreen(false);
		}

		else
		{
			window_set_fullscreen(true);
		};
		
		audio_play_sound(snd_error, 0, 0);
	};
	selected = true;
};
else
{
	selected = false;
};