depth -=100;

var _skill = obj_player.st_special

image_speed = _skill = normal.glitch ? 1 : 0;

if(_skill != -1)
{
	if(_skill != normal.glitch)
	{
		image_index = _skill+1;
	};

	if(obj_player.var_specialPlus){text = obj_player.arr_skill[_skill, skills.descPlus]}
	else{text = obj_player.arr_skill[_skill, skills.desc]};
}
else
{
	image_index = 0;
	text= "no skill";
};

//SPRITE INDEX
if(obj_player.var_specialPlus)
{
	sprite_index = spr_uiSkillsetPlus;
}
else
{
	sprite_index = spr_uiSkillset;
}

if(global.primaryUI)
{
	uiBehave()
}
else
{
	if(alarm[0] = -1){alarm[0] = 12 +1};
	y = lerp(y, ystart+yPlus, .1);
		
	if(y > room_height)
	{
		instance_create_depth(40, 240, depth, obj_skill1);
		instance_create_depth(140, 240, depth, obj_skill2);
		instance_create_depth(240, 240, depth, obj_skill3);
		instance_create_depth(340, 240, depth, obj_skill4);
		
		instance_create_depth(225, room_height/2, depth, obj_back);	
		instance_destroy();
	};
};