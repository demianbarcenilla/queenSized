if(global.primaryUI)
{
	uiBehave()
}
else
{
	if(alarm[0] = -1){alarm[0] = 3};
	y = lerp(y, ystart+yPlus, .1);
		
	if(y > room_height)
	{
		instance_destroy();
	};
}


if(obj_enemy.arr_status[status.frozen]) and (obj_player.playerSelected = enemy.eggplant)
{
	image_index = 1;
}
else
{
	image_index = 0;
};