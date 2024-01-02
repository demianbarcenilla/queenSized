if(global.primaryUI)
{
	uiBehave()
}
else
{
	if(alarm[0] = -1){alarm[0] = 6};
	y = lerp(y, ystart+yPlus, .1);
		
	if(y > room_height)
	{
		instance_destroy();
	};
}