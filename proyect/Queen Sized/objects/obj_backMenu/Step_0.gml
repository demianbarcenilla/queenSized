t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		clicks++
		if(clicks = 5) or (room = rm_options)
		{
			room_goto(rm_menu)
			audio_play_sound(snd_error, 0, 0);
			obj_pause.pause = false;
		
			resetGameState();
		}
		else
		{
			screenshake(15, 5, .1);
			audio_play_sound(snd_error, 0, 0)
		}
	};
	selected = true;
};
else
{
	selected = false;
};