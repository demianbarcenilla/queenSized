var _xdisplace = 50, _ydisplace = 50;

for(ii = 0; ii < 2; ii++)
{
	for(i = 0; i < 10; i++)
	{
		var _obj = instance_create_depth(90 +i*_xdisplace, 270+ii*_ydisplace, depth-1, obj_achievementSelect);
		_obj.var_key = i+1+(ii*10);
		_obj.t -=i*10;
	};
};

noUnlocks = true;
ini_open("unlocks.ini")
	for(i=1; i<=20; i++)
	{
		if(ini_read_real("unlocks", i, false))
		{
			noUnlocks = false;
			break;
		}
	}
ini_close();
