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
			
			switch(global.player)
			{
				case enemy.pillow:
					obj_player.st_defense = -10;
				break;
				
				case enemy.rat:
					obj_player.st_damage = 15;
				break;
			}
			repeat(20)
			{
				instance_create_depth(x, y, depth-100, obj_glass);
			}
			audio_play_sound(snd_tv, 0, 0);
		}
	}
};
else
{
	if(selected)
	{
		selected = false;
		obj_shop.canChangeText --;
	}
}
