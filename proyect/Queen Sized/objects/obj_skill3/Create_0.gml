alarm[2] = 6;

image_speed = 0;
yPlus = 160
y = ystart +yPlus;

var _skill = obj_player.st_skills[2];

if(_skill != -1)
{
	image_index = _skill+1;
	text = obj_player.arr_skill[_skill, skills.desc];
}
else
{
	image_index = 0;
	text= "no skill";
}
selected = false;

var _set = 2;
if(obj_player.st_skillUses[_set] = 0) //if no more skill uses, wipe the skill outta the inventory
{
	obj_player.st_skills[_set] = -1;
	obj_player.st_skillUses[_set] = -1;
	image_index = 0;
};