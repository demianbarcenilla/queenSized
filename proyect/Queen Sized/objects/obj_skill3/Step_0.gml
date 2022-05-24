var _skill = obj_player.st_skills[2];

image_speed = _skill = normal.glitch ? 1 : 0;

if(_skill != -1)
{
	if(_skill != normal.glitch)
	{
		image_index = _skill+1;
	};

	if(obj_player.st_skillPlus[2]){text = obj_player.arr_skill[_skill, skills.descPlus]}
	else{text = obj_player.arr_skill[_skill, skills.desc]};
}

//SPRITE INDEX
if(obj_player.st_skillPlus[2])
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
	if(alarm[0] = -1){alarm[0] = 9};
	y = lerp(y, ystart+yPlus, .1);
};