t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion
if(!instance_exists(obj_shop)) 
{
	instance_destroy();
};

else if((!instance_exists(obj_shopSkill)) and (!instance_exists(obj_shopBubble)))
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
		global.shoplift = true;
	
		screenshake(5, 10, .2)
		
		repeat(10){instance_create_depth(x, y, depth-10, obj_confetti)}
		instance_destroy();
		audio_play_sound(snd_select, 0, 0);
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