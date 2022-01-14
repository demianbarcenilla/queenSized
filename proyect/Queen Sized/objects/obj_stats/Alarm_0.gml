if(target = obj_enemy)
{
	var _noID = 0;
	for(i = 0; i < 3; i++)
	{
		if(target.arr_stats[i] != id)
		{
			_noID ++;
		};
		
		if(_noID = 3)
		{
			instance_destroy();
		};
	};
};