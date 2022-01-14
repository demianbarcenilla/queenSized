t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		if(global.sfxVol < 1)
		{
			global.sfxVol += .25
		};
		else
		{
			global.sfxVol = 0;
		};
		
		audio_play_sound(snd_error, 0, 0);
		
		audio_group_set_gain(ag_sfx, global.sfxVol, 0);
		ini_open("options.ini");
			ini_write_real("volume", "sfx", global.sfxVol);
		ini_close();
	};
	selected = true;
	text = "CHANGE THE VOLUME OF THE SOUND EFFECTS! CURRENT: "+string(global.sfxVol*100) + "PERCENT!";
};
else
{
	selected = false;
}