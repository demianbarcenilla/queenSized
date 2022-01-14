t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(place_meeting(x, y, obj_mouse)) and (mouse_check_button_pressed(mb_left))
{
	var _someOneUnlocked = false, _stringKey;
	for(i=3; i <=9; i++)
	{
		_stringKey = string(i);
		ini_open("unlocks.ini")
			if(ini_read_real("unlocks", _stringKey, false) = true)
			{
				_someOneUnlocked = true;
				break;
			};
		ini_close()
	};
	if(_someOneUnlocked)
	{
		room_goto(rm_characterSelect);
	}
	else
	room_goto(rm_intro);
	
};