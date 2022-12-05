if(global.primaryUI)
{
	uiBehave()
};
else
{
	if(alarm[0] = -1){alarm[0] = 9 +1};
	y = lerp(y, ystart+yPlus, .1);
		
	if(y > room_height)
	{
		instance_destroy();
	};
};

if(obj_enemy.arr_status[status.frozen])
{
	image_index = 1;
}
else
{
	image_index = 0;
};