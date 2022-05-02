if(global.chat)
{
	uiBehave()
};
else
{
	if(alarm[0] = -1){alarm[0] = 3};
	y = lerp(y, ystart+yPlus, .1);
		
	if(y > room_height)
	{
		obj_player.var_chatNumber = 0;
		instance_destroy();
	};
}

