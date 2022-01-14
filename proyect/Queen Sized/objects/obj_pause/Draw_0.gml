/// @description PAUSE
//Pause
if(pause)
{
	draw_set_color(arr_colors[global.color]);
	draw_rectangle(0, 0, room_width, room_height, false);
	instance_activate_object(obj_mouse);
	
	instance_activate_object(obj_text);
	instance_destroy(obj_text);
	instance_create_depth(0, 0, depth-1000, obj_text);
	
	draw_set_font(global.invertedFont)
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "PRESS ESC TO RETURN TO GAME");
	
	if(!instance_exists(obj_optionsMenu))
	{
		instance_create_depth(x, y, depth-100, obj_optionsMenu)
	};
};

else if(room != rm_options)
{
	instance_destroy(obj_sfx);
	instance_destroy(obj_sound);
	instance_destroy(obj_colorPal);
	instance_destroy(obj_fullScreen);

	instance_destroy(obj_backMenu);
	instance_destroy(obj_optionsMenu);
	instance_activate_all();
	audio_resume_all();
};