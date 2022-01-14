var _keyString = string(var_key);
ini_open("unlocks.ini")
	 unlocked = ini_read_real("unlocks", _keyString, false);
	 image_index = unlocked
ini_close();