image_speed = 0;

enemylist();
stageEnemies(); //assign enemies for each stage

//initialize Character
if((global.battleCount -9) %10 = 0) //boss
{
	global.bossFight = true;
	_enemy = arr_bossList[global.stage];
};
else //enemy = a random enemy from selection, based on stage
{
	global.bossFight = false; 
	_enemy = arr_stageEnemies[global.stage, irandom_range(0, 2)]
}; 
if(_enemy = global.enemyPrev)
{
	while(_enemy = global.enemyPrev)
	{
		_enemy = arr_stageEnemies[global.stage, irandom_range(0, 2)]
	};
};
initializeEnemy(_enemy);

//Initialize Skills
_self = id;
_other = obj_player;
initializeSkills(id, _other);
image_xscale = -1;

//Skill Uses
for(i=0; i < 3; i++)
{
	if(st_skills[i] != -1)
	{
		st_skillUses[i] = arr_skill[st_skills[i], skills.uses];
	};
};

var_turnWait = 0;
var_guarding = false;

skillsAvailable = false;

for(i=0; i < 4; i++)
{
	if(st_skills[i] != -1)
	{
		skillsAvailable = true;
	};
};

newX = 400;

coinsDropped = false;

var_sound = snd_hit;
dead = false;

healthbarDisplace = -(sprite_get_width(sprite_index)/2)-20;
if(global.player = playerSelected)
{
	var _sprite = asset_get_index(sprite_get_name(sprite_index) + "_alt");
	if(_sprite > -1)
	{
		sprite_index = _sprite
	};
};

for(i=0; i < 4; i++)
{
	if(st_skills[i] != -1)
	{
		st_skillUses[i] = arr_skill[st_skills[i], skills.uses];
	};
};

arr_stats[0] = -1;
arr_stats[1] = -1;
arr_stats[2] = -1;
//Create stat objects
for(i=0; i < 3; i++)
{
	var _stat = instance_create_depth(x +healthbarDisplace -20, 120 + (40*i), depth-1, obj_stats);
	_stat.image_index = i;
	_stat.displace = healthbarDisplace-20;
	_stat.target = obj_enemy;
	arr_stats[i] = _stat.id;
	
	_stat.enemySide = true;
};