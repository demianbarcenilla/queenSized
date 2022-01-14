//wave
t = 0;
inc = 3; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

image_speed = 0;

ini_open("unlocks.ini");
	unlocked = ini_read_real("unlocks", "6", false);
	if(unlocked)
	{
		sprite_index = spr_tbSelect;
		image_speed = 0.1;
	}
	else
	{
		sprite_index = spr_charSelect;
		image_index = 0;
	}

ini_close();

selected = false;