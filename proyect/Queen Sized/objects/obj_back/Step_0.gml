t = (t + inc) mod 360;
shift = amp * dsin(t);
y = lerp(y, ystart + shift, .1); //vertical wave motion

if(mouse_check_button_pressed(mb_left)) and (place_meeting(x, y, obj_mouse))
{
	global.primaryUI = true;
	
	instance_destroy();
	
};

if(global.event)
{
	y += 40;
};