//Screenshake
if(shaking)
{
	control_shake();
};

//Music
music = control_getMusic(); //Choose Track

//If not playing music, stop all sound, play track
if(!audio_is_playing(music)){ 
	audio_stop_all();
	audio_play_sound(music, 1, true);
};

// MICHAEL MODE 
if(instance_exists(obj_enemy))
{
	if(global.player = enemy.michael) or (obj_enemy.playerSelected = enemy.michael)
	{
		if(global.michaelMode = -1)
		{
			global.michaelMode = 0;
		};
	};
};
else
{
	global.michaelMode = -1;
};
switch(global.michaelMode)
{
	case 0: //sine wave
		window_set_fullscreen(false);
		
		t = (t + inc) mod 360;
		shift = amp * dsin(t);
		window_set_position(window_get_x(), (display_get_height()/2)-(window_get_height()/2) + shift); //vertical wave motion
	break;
		
	case 1:
		window_set_fullscreen(false);
		
		t = (t + inc) mod 360;
		shift = amp * dsin(t);
		window_set_position((display_get_width()/2)-(window_get_width()/2) + shift, window_get_y()); //horizontal wave motion
	break;
		
	case 2:
		window_set_fullscreen(false);
	
		t = (t + inc) mod 360;
		shift = amp * dsin(t);
		var _shift = amp * dcos(t);
		window_set_position((display_get_width()/2)-(window_get_width()/2) + shift, (display_get_height()/2)-(window_get_height()/2) + _shift); //circular wave motion
	break;
};
