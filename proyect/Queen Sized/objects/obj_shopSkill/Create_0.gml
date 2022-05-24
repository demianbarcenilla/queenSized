//initialize
enemylist();

_other = obj_enemy;
initializeEnemy(enemy.pillow);
initializeSkills(id, _other);

sprite_index = spr_skills;
image_speed = 0;

var _poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID

var _gotThat = false;

//check if i already got the skill
for(i=0; i< 4; i++)
{
	if(var_holding = obj_player.st_skills[i])
	{
		_gotThat = true;
		
		_poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
		var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID
		break;
	};
};

while(_gotThat)
{
	_gotThat = false; //set to false
	
	for(i=0; i< 4; i++)
	{
		if(var_holding = obj_player.st_skills[i]) //if i'm still holding the item i allready have, reroll
		{
			_gotThat = true;
			
			_poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
			var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID
			break;
		};
	};
};
image_index = var_holding; //Display the corresponding image

//for avoiding mouse clicky shit
isLerping = false;

//wave
t = 0;
inc = choose(3, -3); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;
discount = false;

if(global.player = enemy.phish) //ALLWAYS discount with phish
{
	discount = true;
}

ini_open("unlocks.ini") //Ocasional discount
	if(ini_read_real("unlocks", "100", false))
	{
		var r = irandom_range(0, 50);
		if(r > 25)
		{
			discount = true;
		};
	};
ini_close()

holdingPlus = false;

if(holdingPlus){text = arr_skill[var_holding, skills.descPlus]}
else{text = arr_skill[var_holding, skills.desc]};

cost = arr_skill[var_holding, skills.shop] + (10 * global.mult);

checked = false;

skillsFull = 0;

centered = false;

guiSelected = -1;
xx = x;
yy = ystart;

reroll = false;
global.shoplift = false;
