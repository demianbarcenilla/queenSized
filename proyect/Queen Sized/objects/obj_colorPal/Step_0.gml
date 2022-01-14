t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		if(global.color < 10)
		{
			global.color++;
		}
		else
		{
			global.color = 0;
		}
		ini_open("options.ini");
			ini_write_real("misc", "color", global.color);
		ini_close();
		
		audio_play_sound(snd_error, 0, 0);
		screenshake(10, 5, .2);
		text = "CHANGE THE COLOR! ( " + string(global.color) + " / 10 )"
	};
	
	selected = true;
};
else
{
	selected = false;
};