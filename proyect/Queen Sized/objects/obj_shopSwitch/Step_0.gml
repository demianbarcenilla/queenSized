t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse)) and (!instance_exists(obj_skill1))
{
	if(!checked)
	{
		checked = true;
		global.text = text;
		obj_shop.canChangeText ++;
	};
	if(mouse_check_button_pressed(mb_left))
	{
		with(obj_player)
		{
			//swap characters
			global.player = global.player = enemy.tito ? enemy.bondiola : enemy.tito;
		
			initializeTB();
			global.text = "WELCOME TO THE SHOP!";
			global.textPrev = global.text;
			screenshake(5, 10, 2);
			audio_play_sound(snd_tbSwitch, 0, false);
		};
		
		var _player = global.player = enemy.tito ? "tito " : "bondiola ";
		text = _player + "IS CURRENTLY SELECTED!";
		
		global.text = text;
		
		image_index = global.player = enemy.tito ? 1 : 2		
	};
}
else
{
	if(checked)
	{
		obj_shop.canChangeText --;
		checked = false;
	};
};
if(!instance_exists(obj_shop))
{
	instance_destroy();
};