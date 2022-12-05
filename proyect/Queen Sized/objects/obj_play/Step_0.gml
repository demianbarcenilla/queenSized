t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse)) and (mouse_check_button_pressed(mb_left))
{
	//IF SOMEONE'S UNLOCKED
	ini_open("unlocks.ini")
		if(ini_read_real("timesFinished", "total", 0) > 0) //IF FINISHED THE GAME ONCE
		{
			room_goto(rm_characterSelect);
		}
		else{room_goto(rm_intro)};
	ini_close();
	
};