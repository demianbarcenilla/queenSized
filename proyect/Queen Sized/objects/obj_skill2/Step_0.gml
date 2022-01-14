var _skill = obj_player.st_skills[1];

image_speed = _skill = normal.glitch ? 1 : 0;

if(_skill != -1)
{
	if(_skill != normal.glitch)
	{
		image_index = _skill+1;
	};

	text = obj_player.arr_skill[_skill, skills.desc];
}
else
{
	image_index = 0;
	text= "no skill";
}

if(!global.primaryUI)
{
	uiBehave()
};

else
{
	if(alarm[0] = -1){alarm[0] = 6};
	y = lerp(y, ystart+yPlus, .1);
};
