//wave
t = 0;
inc = 3; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

selected = false;
image_speed = 0;

ini_open("unlocks.ini");
	unlocked = ini_read_real("unlocks", "0", true);
	if(unlocked)
	{
		image_index = 1;
	};
ini_close();
