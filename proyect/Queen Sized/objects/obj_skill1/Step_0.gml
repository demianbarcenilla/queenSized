var _skill = obj_player.st_skills[0];

image_speed = _skill = normal.glitch ? 1 : 0;

if(_skill != -1)
{
	if(_skill != normal.glitch)
	{
		image_index = _skill+1;
	};

	if(obj_player.st_skillPlus[0]){text = obj_player.arr_skill[_skill, skills.descPlus]}
	else{text = obj_player.arr_skill[_skill, skills.desc]};
}
else
{
	image_index = 0;
	text= "no skill";
}

//SPRITE INDEX
if(obj_player.st_skillPlus[0]) and (obj_player.st_skills[0] != -1)
{
	sprite_index = spr_uiSkillsetPlus;
}
else
{
	sprite_index = spr_uiSkillset;
};

if(!global.primaryUI)
{
	uiBehave()
}

else
{
	if(alarm[0] = -1){alarm[0] = 3};
	y = lerp(y, ystart+yPlus, .1);
};

var val = 0;
if(obj_player.st_skillRecharge[val] != -1) and (obj_player.st_skills[val] != -1)
{
	var_rechargeable = true;	
}
else
{
	var_rechargeable = false;
}