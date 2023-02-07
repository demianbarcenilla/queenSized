t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion
if(!instance_exists(obj_shop))
{
	instance_destroy();
};

if(!instance_exists(obj_shopSkill))
{
	repeat(10){instance_create_depth(x, y, depth-10, obj_confetti)}
	instance_destroy();
}

if(place_meeting(x, y, obj_mouse)) and (!instance_exists(obj_skill1))
{
	if(!checked)
	{
		checked = true;
		global.text = text;
		obj_shop.canChangeText ++;
		obj_moneyText.costDisplay = cost;
	};
	if(mouse_check_button_pressed(mb_left)) and (global.money >= cost)
	{
		with(obj_shop)
		{
			array_delete(arr_poolTable, 0, array_length(arr_poolTable))
			array_delete(arr_pool, 0, array_length(arr_pool))
			poolsCookie();
			for(i=0; i < array_length(arr_poolTable[global.stage]); i++)
			{
				arr_pool[i] = arr_poolTable[global.stage, i];
			};
		}
		obj_shopSkill.reroll = true;
		
		screenshake(5, 10, .2)
	
		repeat(cost)
		{
			instance_create_depth(x, y, depth-1, obj_money)
		};
		instance_destroy();
		
		audio_play_sound(snd_select, 0, 0);
		global.money -= cost;
		
		instance_destroy();
	};
};
else
{
	if(checked)
	{
		obj_shop.canChangeText --;
		checked = false;
	}
};