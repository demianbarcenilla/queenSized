var _skill = obj_player.st_skills[3];

image_speed = _skill = normal.glitch ? 1 : 0;

if(_skill != -1)
{
	if(_skill != normal.glitch)
	{
		image_index = _skill+1;
	};

	if(obj_player.st_skillPlus[3]){text = obj_player.arr_skill[_skill, skills.descPlus]}
	else{text = obj_player.arr_skill[_skill, skills.desc]};
}
else
{
	image_index = 0;
	text= "no skill";
}

//SPRITE INDEX
if(obj_player.st_skillPlus[3]) and (obj_player.st_skills[3] != -1)
{
	sprite_index = spr_uiSkillsetPlus;
};
else
{
	sprite_index = spr_uiSkillset;
};

if(!global.primaryUI)
{
	uiBehave()
};

else
{
	if(alarm[0] = -1){alarm[0] = 12};
	y = lerp(y, ystart+yPlus, .1);
	
	if(y > room_height)
	{
		resetToPrimary();
	};
};