ini_open("options.ini")
	var _isSaveUpdated = ini_read_real("Version", "not the old one", false);
ini_close();

if(!_isSaveUpdated)
{
	file_delete("options.ini");
	file_delete("unlocks.ini");
	
	ini_open("options.ini")
		ini_write_real("Version", "not the old one", true);
	ini_close();
};
