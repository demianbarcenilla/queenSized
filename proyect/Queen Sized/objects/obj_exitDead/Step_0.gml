t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse)) and (mouse_check_button_pressed(mb_left))
{
	resetGameState();
	room_goto(rm_menu);
};