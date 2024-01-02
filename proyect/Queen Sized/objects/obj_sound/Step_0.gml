t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		if(global.musVol < 1)
		{
			global.musVol += .25;
		}
		else
		{
			global.musVol = 0;
		};
		
		audio_group_set_gain(ag_music, global.musVol, 1);
		audio_play_sound(snd_error, 0, 0);
		ini_open("options.ini");
			ini_write_real("volume", "mus", global.musVol);
		ini_close();
	};
	selected = true;
	text = "CHANGE THE VOLUME OF THE MUSIC! CURRENT: "+string(global.musVol*100) + "PERCENT!";
}
else
{
	selected = false;
}