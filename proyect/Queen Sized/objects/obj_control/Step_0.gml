//Screenshake
var _add = "";

if(shaking)
{

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
};

//If battling the queen change theme song
var _queenThemeChange = false;

if(instance_exists(obj_enemy))
{
	if(obj_enemy.playerSelected = enemy.queen)
	{
		_queenThemeChange = true
	};
}

//Music
if(room = rm_start) or (global.chat)
{
	music = mus_silent;
};
else if(room = rm_menu) or (room = rm_options)
{
	music = mus_menu;
};
else if(room = rm_dead)
{
	music = mus_dead;
};
else if(room = rm_newUnlocks)
{
	music = mus_achievementSelect;
};
else if(room = rm_intro)
{
	music = mus_intro;
};
else if(room = rm_outro)
{
	music = mus_outro;
};
else if(room = rm_achievements)
{
	music = mus_achievementSelect;
};
else if(room = rm_characterSelect)
{
	music = mus_charsel;
};
else if(global.queenType = 1) and (_queenThemeChange)
{
	music = mus_4b2;
};
else //Music
{
	if(!instance_exists(obj_shop))
	{
		_add = global.bossFight = true ? "b" : "";
	};
	else
	{
		_add = "s";
	};
	
	music = asset_get_index("mus_" + string(global.stage) + _add);
};

if(!audio_is_playing(music)){
	audio_stop_all();
	audio_play_sound(music, 1, true);
};

/* MICHAEL MODE if(instance_exists(obj_enemy))
{
	if(global.player = enemy.michael) or (obj_enemy.playerSelected = enemy.michael)
	{
		if(global.michaelMode = -1)
		{
			global.michaelMode = 0;
		};
	};
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
};*/
