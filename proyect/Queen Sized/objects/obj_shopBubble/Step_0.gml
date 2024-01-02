t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(!checked)
	{
		checked = true;
		global.text = text;
		obj_shop.canChangeText ++;
		obj_moneyText.costDisplay = cost;
		obj_moneyText.discount = discount;
	};
	
	if(mouse_check_button_pressed(mb_left)) and (global.canPurchase)
	{
		if(global.money >= cost) or (global.shoplift)
		{
			switch(var_holding)
			{
				case 0:
					obj_player.hp += round(obj_player.maxHp/4);
					obj_player.hp = clamp(obj_player.hp, 0, obj_player.maxHp);
				
					var_soundPlay = snd_heal;
				break;
		
				case 1:
					obj_player.maxHp += 25;
					obj_player.hp += 25;
					var_soundPlay = snd_heal;
				break;
		
				case 2:
					obj_player.st_defense += 2;
					var_soundPlay = snd_heal;
				break;
	
				case 3:
					obj_player.st_damage += 2;
					var_soundPlay = snd_heal;
				break;
			};
			
			if(global.shoplift)
			{
				repeat(10){instance_create_depth(x, y, depth-10, obj_confetti)}
				global.shoplift = false;
			}
			else
			{
				global.money -= cost;
			
				repeat(cost)
				{
					instance_create_depth(x, y, depth, obj_money);
				};
			}
			
			audio_play_sound(var_soundPlay, 0, false);
			obj_shop.canChangeText --;
			
			instance_destroy();
		}
		else
		{
			audio_play_sound(snd_hit, 0, false)
		};
	};
}
else
{
	if(checked)
	{
		obj_shop.canChangeText --;
		checked = false;
	}
};

if(!instance_exists(obj_shop))
{
	instance_destroy();
};