function control_getMusic(){
	
	//If battling the queen change theme song
	var _queenThemeChange = false;
	var _add = "";
	if(instance_exists(obj_enemy))
	{
		if(obj_enemy.playerSelected = enemy.queen)
		{
			_queenThemeChange = true
		};
	}

	var music = mus_silent;
	if(room = rm_start) or (global.chat)
	{
		music = mus_silent;
	}
	else if(room = rm_menu) or (room = rm_options)
	{
		music = mus_menu;
	}
	else if(room = rm_dead)
	{
		music = mus_dead;
	}
	else if(room = rm_newUnlocks)
	{
		if(!instance_exists(obj_video))
		{
			music = mus_achievementSelect;
		}
		else
		{
			music = mus_silent;
		}
	
	}
	else if(room = rm_intro)
	{
		music = mus_intro;
	}
	else if(room = rm_outro)
	{
		music = mus_outro;
	}
	else if(room = rm_achievements)
	{
		music = mus_achievementSelect;
	}
	else if(room = rm_thanks)
	{
		music = mus_thanks;
	}
	else if(room = rm_characterSelect)
	{
		music = mus_charsel;
	}
	else if(global.queenType = 1) and (_queenThemeChange)
	{
		music = mus_4b2;
	}
	else if(global.queenType = 2) and (_queenThemeChange)
	{
		music = mus_4b3;
	}
	else if(global.queenType = 3) and (_queenThemeChange)
	{
		music = mus_4b4;
	}
	else //Music
	{
		if(!instance_exists(obj_shop))
		{
			_add = global.bossFight = true ? "b" : "";
		}
		else
		{
			_add = "s";
		};
	
		music = asset_get_index("mus_" + string(global.stage) + _add);
	};
	
	return music;
}

function control_shake(){
	shakeTime--;
	var xx = choose(-shakeAmmount, shakeAmmount);
	var yy = choose(-shakeAmmount, shakeAmmount);
	camera_set_view_pos(view_camera[0], xx, yy);
	
	if(shakeTime <= 0)
	{
		camera_set_view_pos(view_camera[0], 0, 0);
		shaking = false;
		shakeTime = 0;
		shakeAmmount = 0;
		shakeFade = 0;
	};
}