if(room = rm_game)
{
	if(pause)
	{
		pause = false;
		instance_destroy(obj_sfx);
		instance_destroy(obj_sound);
		instance_destroy(obj_colorPal);
		instance_destroy(obj_fullScreen);

		instance_destroy(obj_backMenu);
		instance_destroy(obj_optionsMenu);
		
		instance_destroy(obj_text);
		instance_create_depth(0, 0, depth, obj_text);
	
		audio_stop_sound(mus_pause);
	};
	else
	{
		audio_pause_all();
		instance_deactivate_all(true);	
		
		instance_activate_object(obj_control);
		pause = true;
		
		audio_play_sound(mus_pause, 1, true);
	};
};