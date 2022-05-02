image_speed = 0;

//initialize
enemylist();
playerEnemies(); //Sets the changes for playable enemies

_self = id;
_other = obj_enemy;

var _player = global.player;
phishPrices();

initializeEnemy(_player);
initializeSkills(_self, _other);

eventValues();
chatValues();
var_chatNumber = 0;

global.money = 0;
//Skill Uses
for(i=0; i < 4; i++)
{
	if(st_skills[i] != -1)
	{
		st_skillUses[i] = arr_skill[st_skills[i], skills.uses];
	};
};
mx_specialRecharge = st_special != -1 ? arr_skill[st_special, skills.recharge] +1 : 0;
st_specialRecharge = 0;

var_guarding = false;
var_turnWait = 0;

var_sound = snd_hit;
guiSelected = -1;

if(playerSelected = enemy.tito) or (playerSelected = enemy.bondiola)
{
	x +=40;
	tempWrite();
};
dead = false;

healthbarDisplace = (sprite_get_width(sprite_index)/2);

arr_stats[0] = -1;
arr_stats[1] = -1;
arr_stats[2] = -1;

//Create stat objects
for(i=0; i < 3; i++)
{
	var _stat = instance_create_depth(x + healthbarDisplace +35+16, 120 + (40*i), depth-1, obj_stats);
	_stat.image_index = i;
	_stat.displace = (sprite_get_width(sprite_index)/2) +35+16;
	_stat.target = obj_player;
	arr_stats[i] = _stat.id;
	
	_stat.enemySide = false;
};
//instance_create_depth(0, 0, depth, obj_newUnlockBattle);