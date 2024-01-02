/// @description Destroy
if(!instance_exists(obj_shop))
{
	instance_destroy();
};

if(place_meeting(x, y, obj_mouse))
{	
	if(!selected)
	{
		selected = true;
		obj_shop.canChangeText ++;
	};
	
	global.text = text;
	if((mouse_check_button_pressed(mb_left)))
	{
		if(image_index = 0)
		{
			image_index = 1;
			obj_player.var_specialPlus = true;	
			
			repeat(20)
			{
				instance_create_depth(x, y, depth-100, obj_glass);
			}
			audio_play_sound(snd_tv, 0, 0);
		}
	}
}
else
{
	if(selected)
	{
		selected = false;
		obj_shop.canChangeText --;
	}
}
