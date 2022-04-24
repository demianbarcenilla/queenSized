x = target.x +(displace);

//Sets the anim_x to the middle of wherever the two stats are;
obj_control.anim_x[enemySide] = x;

if(target.dead)
{
	for(i = 0; i < 3; i++)
	{
		if(target.arr_stats[i] = id)
		{
			instance_destroy();
		}
	};
};