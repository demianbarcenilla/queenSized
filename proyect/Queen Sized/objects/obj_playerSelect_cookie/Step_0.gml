t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse))
{
	if(mouse_check_button_pressed(mb_left))
	{
		if(unlocked) or (current_month = 12)
		{
			global.player = enemy.cookie;
			room_goto(rm_game)
		};
		else
		{
			audio_play_sound(snd_error, 1, false);
		};
	};
	selected = true;
}
else
{
	selected = false;
};