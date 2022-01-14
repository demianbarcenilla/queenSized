// @func initializeSkills(self, other)
function initializeSkills(_self, _other)
{ 

	//Nap - Heals 40HP
	arr_skill[normal.nap, skills.name] = "NAP";
	arr_skill[normal.nap, skills.desc] = "TAKE A QUICK NAP TO RECOVER HALF HP!";
	
	arr_skill[normal.nap, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.nap, skills.cost] = 0; arr_skill[normal.nap, skills.uses] = 3;	
	arr_skill[normal.nap, skills.selfIndex] = 3;
	arr_skill[normal.nap, skills.otherIndex] = 0;
	arr_skill[normal.nap, skills.sound] = snd_heal;
	arr_skill[normal.nap, skills.text] = string(var_name) + " TOOK A NAP!";
	arr_skill[normal.nap, skills.shop] = 25;
	
	arr_skill[normal.nap, skills.recharge] = 7;

	//Long Nap - Heals 120HP
	arr_skill[normal.napLong, skills.name] = "LONG NAP";
	arr_skill[normal.napLong, skills.desc] = "FILL YOUR HP AT THE COST OF A TURN";
	
	arr_skill[normal.napLong, skills.func] = function(){regen(_self, maxHp)};
	arr_skill[normal.napLong, skills.cost] = 1; arr_skill[normal.napLong, skills.uses] = 1;	
	arr_skill[normal.napLong, skills.selfIndex] = 3;
	arr_skill[normal.napLong, skills.otherIndex] = 0;
	arr_skill[normal.napLong, skills.sound] = snd_heal;
	arr_skill[normal.napLong, skills.text] = string(var_name) + " TOOK A LONG NAP!";
	arr_skill[normal.napLong, skills.shop] = 50;
	
	arr_skill[normal.napLong, skills.recharge] = 15;
	
	//Drain - Drains the enemy
	arr_skill[normal.drain, skills.name] = "DRAIN";
	arr_skill[normal.drain, skills.desc] = "STEAL YOUR ENEMY'S HP";
	
	arr_skill[normal.drain, skills.func] = function(){attack( st_damage); regen(_self, st_damage)};
	arr_skill[normal.drain, skills.cost] = 0; arr_skill[normal.drain, skills.uses] = 3;	
	arr_skill[normal.drain, skills.selfIndex] = 3;
	arr_skill[normal.drain, skills.otherIndex] = 0;
	arr_skill[normal.drain, skills.sound] = snd_drain;
	arr_skill[normal.drain, skills.text] = string(var_name) + " DRAINS THEIR ENEMY!"
	arr_skill[normal.drain, skills.shop] = 50;
	
	arr_skill[normal.drain, skills.recharge] = 15;
	
	//Distract - Lowers Enemy Defense
	arr_skill[normal.distract, skills.name] = "DISTRACT";
	arr_skill[normal.distract, skills.desc] = "LOWERS ENEMY DEFENSE";
	
	arr_skill[normal.distract, skills.func] = function(){_other.tempDef -= 10};
	arr_skill[normal.distract, skills.cost] = 0; arr_skill[normal.distract, skills.uses] = -1;	
	arr_skill[normal.distract, skills.selfIndex] = 3;
	arr_skill[normal.distract, skills.otherIndex] = 0;
	arr_skill[normal.distract, skills.sound] = snd_defenseDown;
	arr_skill[normal.distract, skills.text] = string(var_name) + " DID SOMETHING DISTRACTING!"
	arr_skill[normal.distract, skills.shop] = 25;
	
	arr_skill[normal.distract, skills.recharge] = 0;
	
	//Confuse! - REALLY Lowers Enemy Defense
	arr_skill[normal.confuse, skills.name] = "CONFUSE";
	arr_skill[normal.confuse, skills.desc] = "LOWER ENEMY DEFENSE A LOT!";
	
	arr_skill[normal.confuse, skills.func] = function(){_other.tempDef -= 20};
	arr_skill[normal.confuse, skills.cost] = 1; arr_skill[normal.confuse, skills.uses] = -1;	
	arr_skill[normal.confuse, skills.selfIndex] = 3;
	arr_skill[normal.confuse, skills.otherIndex] = 0;
	arr_skill[normal.confuse, skills.sound] = snd_defenseDown;
	arr_skill[normal.confuse, skills.text] = string(var_name) + " DID SOMETHING CONFUSING!"
	arr_skill[normal.confuse, skills.shop] = 50;
	
	arr_skill[normal.confuse, skills.recharge] = 0;
	
	//RESIST - +DEF!
	arr_skill[normal.resist, skills.name] = "RESIST";
	arr_skill[normal.resist, skills.desc] = "TEMPORARILY INCREASES YOUR DEFENSE";
	
	arr_skill[normal.resist, skills.func] = function(){_self.tempDef += 10};
	arr_skill[normal.resist, skills.cost] = 0; arr_skill[normal.resist, skills.uses] = -1;	
	arr_skill[normal.resist, skills.selfIndex] = 3;
	arr_skill[normal.resist, skills.otherIndex] = 0;
	arr_skill[normal.resist, skills.sound] = snd_defenseUp;
	arr_skill[normal.resist, skills.text] = string(var_name) + " HAS MORE RESISTANCE!";
	arr_skill[normal.resist, skills.shop] = 25;
	
	arr_skill[normal.resist, skills.recharge] = 0;
	
	//ARMOR - +LOT OF DEF!
	arr_skill[normal.armor, skills.name] = "ARMOR";
	arr_skill[normal.armor, skills.desc] = "TEMPORARILY INCREASES YOUR DEFENSE A LOT!";
	
	arr_skill[normal.armor, skills.func] = function(){_self.tempDef += 20};
	arr_skill[normal.armor, skills.cost] = 1;  arr_skill[normal.armor, skills.uses] = -1;	
	arr_skill[normal.armor, skills.selfIndex] = 3;
	arr_skill[normal.armor, skills.otherIndex] = 0;
	arr_skill[normal.armor, skills.sound] = snd_defenseUp;
	arr_skill[normal.armor, skills.text] = string(var_name) + " GOT SOME ARMOR!";
	arr_skill[normal.armor, skills.shop] = 50;
	
	arr_skill[normal.armor, skills.recharge] = 0;

	//PUNCH
	arr_skill[normal.punch, skills.name] = "PUNCH";
	arr_skill[normal.punch, skills.desc] = "MAKE DOUBLE THE DAMAGE!";
	
	arr_skill[normal.punch, skills.func] = function(){attack(st_damage*2)};
	arr_skill[normal.punch, skills.cost] = 1; arr_skill[normal.punch, skills.uses] = -1;	
	arr_skill[normal.punch, skills.selfIndex] = 2; 
	arr_skill[normal.punch, skills.otherIndex] = 1;
	arr_skill[normal.punch, skills.sound] = snd_hit;
	arr_skill[normal.punch, skills.text] = string(var_name) + " PUNCHES VERY HARD!";
	arr_skill[normal.punch, skills.shop] = 50;
	
	arr_skill[normal.punch, skills.recharge] = 3;
	
	//BITE
	arr_skill[normal.bite, skills.name] = "BITE";
	arr_skill[normal.bite, skills.desc] = "MAKES TRIPLE THE DAMAGE!";
	
	arr_skill[normal.bite, skills.func] = function(){attack(st_damage*3)};
	arr_skill[normal.bite, skills.cost] = 2; arr_skill[normal.bite, skills.uses] = -1;	
	arr_skill[normal.bite, skills.selfIndex] = 2;
	arr_skill[normal.bite, skills.otherIndex] = 1;
	arr_skill[normal.bite, skills.sound] = snd_bite;
	arr_skill[normal.bite, skills.text] = string(var_name) + " BITES HARD!";
	arr_skill[normal.bite, skills.shop] = 75;
	
	arr_skill[normal.bite, skills.recharge] = 10;
	
	//Cheese
	arr_skill[normal.cheese, skills.name] = "CHEESE";
	arr_skill[normal.cheese, skills.desc] = "EAT SOME TASTY CHEESE";
	
	arr_skill[normal.cheese, skills.func] = function(){regen(_self, maxHp/4)};
	arr_skill[normal.cheese, skills.cost] = 0; arr_skill[normal.cheese, skills.uses] = 2;	
	arr_skill[normal.cheese, skills.selfIndex] = 3;
	arr_skill[normal.cheese, skills.otherIndex] = 0;
	arr_skill[normal.cheese, skills.sound] = snd_cheese;
	arr_skill[normal.cheese, skills.text] = string(var_name) + " ATE A PIECE OF CHEESE!";
	arr_skill[normal.cheese, skills.shop] = 15;
	
	arr_skill[normal.cheese, skills.recharge] = 3;
	
	//WAIT
	arr_skill[normal.wait, skills.name] = "ID +1";
	arr_skill[normal.wait, skills.desc] = "RAISES THE ID OF THE FIRST SKILL BY ONE";
	
	arr_skill[normal.wait, skills.func] = function(){st_skills[0] ++; global.turn = 1};
	arr_skill[normal.wait, skills.cost] = 0; arr_skill[normal.wait, skills.uses] = -1;	
	arr_skill[normal.wait, skills.selfIndex] = 3;
	arr_skill[normal.wait, skills.otherIndex] = 1;
	arr_skill[normal.wait, skills.sound] = snd_heal;
	arr_skill[normal.wait, skills.text] = string(var_name) + " CHANGES THE ID OF A SKILL!";
	arr_skill[normal.wait, skills.shop] = 50;
	
	arr_skill[normal.wait, skills.recharge] = 0;
	
	//EXPLODE
	arr_skill[normal.explode, skills.name] = "EXPLODE";
	arr_skill[normal.explode, skills.desc] = "SACRIFICE YOURSELF!";
	
	arr_skill[normal.explode, skills.cost] = 1; arr_skill[normal.explode, skills.uses] = -1;	
	arr_skill[normal.explode, skills.func] = function(){
		if(explodeTimer = -1)
		{
			explodeTimer = arr_skill[normal.explode, skills.cost]
		};
		else
		{
			attack(st_damage*4); 
			_self.hp = 0
		};
	};
	arr_skill[normal.explode, skills.selfIndex] = 3;
	arr_skill[normal.explode, skills.otherIndex] = 1;
	if(explodeTimer = -1){arr_skill[normal.explode, skills.sound] = snd_error}else{arr_skill[normal.explode, skills.sound] = snd_explosion};
	if(explodeTimer = -1){arr_skill[normal.explode, skills.text] = string(var_name) + " IS PREPARING FOR SOMETHING!"} else{ arr_skill[normal.explode, skills.text] = string(var_name) + " GOES OUT WITH A BANG!"};
	arr_skill[normal.explode, skills.shop] = 75;
	
	arr_skill[normal.explode, skills.recharge] = 0;
	
	//HEAL
	arr_skill[normal.heal, skills.name] = "HEAL";
	arr_skill[normal.heal, skills.desc] = "RECOVERS HALF YOUR LIFE!";
	
	arr_skill[normal.heal, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.heal, skills.cost] = 0; arr_skill[normal.heal, skills.uses] = 3;	
	arr_skill[normal.heal, skills.selfIndex] = 3;
	arr_skill[normal.heal, skills.otherIndex] = 0;
	arr_skill[normal.heal, skills.sound] = snd_heal;
	arr_skill[normal.heal, skills.text] = string(var_name) + " HEALED!";
	arr_skill[normal.heal, skills.shop] = 9999;
	
	arr_skill[normal.heal, skills.recharge] = 5;
	
	//SHOOT
	arr_skill[normal.shoot, skills.name] = "SHOOT";
	arr_skill[normal.shoot, skills.desc] = "MAKES A BIT MORE DAMAGE";
	
	arr_skill[normal.shoot, skills.func] = function(){attack(st_damage+5)};
	arr_skill[normal.shoot, skills.cost] = 0; arr_skill[normal.shoot, skills.uses] = 5;	
	arr_skill[normal.shoot, skills.selfIndex] = 2;
	arr_skill[normal.shoot, skills.otherIndex] = 1;
	arr_skill[normal.shoot, skills.sound] = snd_shoot;
	arr_skill[normal.shoot, skills.text] = string(var_name) + " SHOOTS!";
	arr_skill[normal.shoot, skills.shop] = 15;
	
	arr_skill[normal.shoot, skills.recharge] = 3;
	
	//Triangulate
	arr_skill[normal.triangle, skills.name] = "Triangulate";
	arr_skill[normal.triangle, skills.desc] = "Heals 20hp!";
	
	arr_skill[normal.triangle, skills.func] = function(){regen(_self, 20)};
	arr_skill[normal.triangle, skills.cost] = 0; arr_skill[normal.triangle, skills.uses] = 5;	
	arr_skill[normal.triangle, skills.selfIndex] = 3;
	arr_skill[normal.triangle, skills.otherIndex] = 0;
	arr_skill[normal.triangle, skills.sound] = snd_heal;
	arr_skill[normal.triangle, skills.text] = string(var_name) + " TRIANGULATES!";
	arr_skill[normal.triangle, skills.shop] = 15;
	
	arr_skill[normal.triangle, skills.recharge] = 5;
	
	//HONK
	arr_skill[normal.honk, skills.name] = "HONK";
	arr_skill[normal.honk, skills.desc] = "HONK HONK";

	arr_skill[normal.honk, skills.func] = function(){screenshake(5, 2, .5); _self.tempDef += 5};
	arr_skill[normal.honk, skills.cost] = 0; arr_skill[normal.honk, skills.uses] = -1;	
	arr_skill[normal.honk, skills.selfIndex] = 3;
	arr_skill[normal.honk, skills.otherIndex] = 3;
	arr_skill[normal.honk, skills.sound] = snd_honk;
	arr_skill[normal.honk, skills.text] = "HONK HONK";
	arr_skill[normal.honk, skills.shop] = 25;
	
	arr_skill[normal.honk, skills.recharge] = 0;
	
	//STEAL
	arr_skill[normal.steal, skills.name] = "STEAL";
	arr_skill[normal.steal, skills.desc] = "USE A SKILL FROM YOUR ENEMY!";
	if(global.player = enemy.rat_king)
	{
		arr_skill[normal.steal, skills.desc] = "USE A SKILL FROM YOUR ENEMY! \n REGENS 1/4HP AS WELL";
	};
	
	arr_skill[normal.steal, skills.cost] = 0; arr_skill[normal.steal, skills.uses] = 2;	
	arr_skill[normal.steal, skills.text] = string(var_name) + " USES A STOLEN SKILL!";
	
	arr_skill[normal.steal, skills.func] = function(){
			if(global.player = enemy.rat_king){regen(_self, maxHp/4)};
			var _hasSkill = false;
			
			for(i=0; i < 4; i++)
			{
				if(_other.st_skills[i] != -1) and (_other.st_skills[i] != normal.explode) and (_other.st_skills[i] != normal.swap)
				{
					_hasSkill = true;
				};
			};
			
			if(_hasSkill)
			{
				var _ski = choose(0, 1, 2, 3), _skillChange = -1;
				
				while(_other.st_skills[_ski] = -1)
				{
					_ski = choose(0, 1, 2, 3);
				};
				
				if(_other.st_skills[_ski]  = normal.explode)
				{
					_skillChange = normal.rat_bomb;
				}
				else if(_other.st_skills[_ski]  = normal.download)
				{
					_skillChange = normal.rat_e;
				};
				else if(_other.st_skills[_ski]  = normal.swap)
				{
					_skillChange = normal.rat_ratuary;
				};
				
				//TRIGGER
				if(_skillChange != -1)
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_skillChange, skills.cost];
					skill(_skillChange);
				}
				else
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_other.st_skills[_ski], skills.cost];
					skill(_other.st_skills[_ski]);
				};
				
				//TEXT
				arr_skill[normal.steal, skills.text] = string(var_name) + " USES A STOLEN SKILL! ( "+ string(arr_skill[_other.st_skills[_ski], skills.name]) +" )";
			};
			else
			{
				arr_skill[normal.steal, skills.cost] = 0;
				arr_skill[normal.steal, skills.text] = "NO SKILLS TO STEAL! " + string(var_name) + " STOLE CHEESE INSTEAD!";
				skill(normal.cheese);
			};	
		};
	arr_skill[normal.steal, skills.selfIndex] = 3;
	arr_skill[normal.steal, skills.otherIndex] = 1;
	arr_skill[normal.steal, skills.sound] = snd_steal;
	arr_skill[normal.steal, skills.shop] = 15;
	
	arr_skill[normal.steal, skills.recharge] = 3;
	
	//BARK
	arr_skill[normal.bark, skills.name] = "BARK";
	arr_skill[normal.bark, skills.desc] = "LOWERS ENEMY DEFENSE";
	
	arr_skill[normal.bark, skills.func] = function(){_other.tempDef -= 10};
	arr_skill[normal.bark, skills.cost] = 0; arr_skill[normal.bark, skills.uses] = -1;	
	arr_skill[normal.bark, skills.selfIndex] = 3;
	arr_skill[normal.bark, skills.otherIndex] = 0;
	arr_skill[normal.bark, skills.sound] = snd_bark;
	arr_skill[normal.bark, skills.text] = string(var_name) + " BARKS, LOWERING ENEMY DEFENSE!"
	arr_skill[normal.bark, skills.shop] = 25;
	
	arr_skill[normal.bark, skills.recharge] = 3;
	
	//Bitter
	arr_skill[normal.bitter, skills.name] = "Bitter";
	arr_skill[normal.bitter, skills.desc] = "ENEMY'S REGENERATION IS HALF AS EFFECTIVE!";
	
	arr_skill[normal.bitter, skills.func] = function(){_other.arr_status[status.bitter] = true};
	arr_skill[normal.bitter, skills.cost] = 0; arr_skill[normal.bitter, skills.uses] = -1;
	arr_skill[normal.bitter, skills.selfIndex] = 3;
	arr_skill[normal.bitter, skills.otherIndex] = 1;
	arr_skill[normal.bitter, skills.sound] = snd_defenseDown;
	arr_skill[normal.bitter, skills.text] = string(var_name) + " MAKES THE ENEMY BITTER!";
	arr_skill[normal.bitter, skills.shop] = 25;
	
	arr_skill[normal.bitter, skills.recharge] = 10;
	
	//LEMONADE!
	arr_skill[normal.lemonade, skills.name] = "LEMONADE";
	arr_skill[normal.lemonade, skills.desc] = "REGENERATES HALF YOUR HP, NOT AFFECTED BY BITTER STATUS EFFECT!";
	
	arr_skill[normal.lemonade, skills.func] = function(){_self.hp += maxHp/2};
	arr_skill[normal.lemonade, skills.cost] = 0; arr_skill[normal.lemonade, skills.uses] = 3;	
	arr_skill[normal.lemonade, skills.selfIndex] = 3;
	arr_skill[normal.lemonade, skills.otherIndex] = 0;
	arr_skill[normal.lemonade, skills.sound] = snd_heal;
	arr_skill[normal.lemonade, skills.text] = string(var_name) + " DRANK SOME LEMONADE!";
	arr_skill[normal.lemonade, skills.shop] = 25;
	
	arr_skill[normal.lemonade, skills.recharge] = 10;
	
	//Shroom
	arr_skill[normal.shroom, skills.name] = "Shroom";
	arr_skill[normal.shroom, skills.desc] = "Drain some enemy hp every turn!";
	
	arr_skill[normal.shroom, skills.func] = function(){_other.arr_status[status.shroomed] = true};
	arr_skill[normal.shroom, skills.cost] = 0; arr_skill[normal.shroom, skills.uses] = 3;
	arr_skill[normal.shroom, skills.selfIndex] = 3;
	arr_skill[normal.shroom, skills.otherIndex] = 1;
	arr_skill[normal.shroom, skills.sound] = snd_heal;
	arr_skill[normal.shroom, skills.text] = string(var_name) + " TOSSED SOME SHROOMS!";
	arr_skill[normal.shroom, skills.shop] = 50;
	
	arr_skill[normal.shroom, skills.recharge] = 7;
	
	//Scare
	arr_skill[normal.scare, skills.name] = "Scare";
	arr_skill[normal.scare, skills.desc] = "BOO!";
	
	arr_skill[normal.scare, skills.func] = function(){_other.arr_status[status.spooked]  = true};
	arr_skill[normal.scare, skills.cost] = 0; arr_skill[normal.scare, skills.uses] = 3;
	arr_skill[normal.scare, skills.selfIndex] = 2;
	arr_skill[normal.scare, skills.otherIndex] = 1;
	arr_skill[normal.scare, skills.sound] = snd_defenseDown;
	arr_skill[normal.scare, skills.text] = string(var_name) + " IS BEING SCARY!";
	arr_skill[normal.scare, skills.shop] = 25;
	
	arr_skill[normal.scare, skills.recharge] = 5;
	
	//LEMON TOSS
	arr_skill[normal.lemon_toss, skills.name] = "Lemon Toss";
	arr_skill[normal.lemon_toss, skills.desc] = "Toss lemons that make 1.2 times your damage!";
	
	arr_skill[normal.lemon_toss, skills.func] = function(){attack(st_damage*1.2)};
	arr_skill[normal.lemon_toss, skills.cost] = 0; arr_skill[normal.lemon_toss, skills.uses] = 2;
	arr_skill[normal.lemon_toss, skills.selfIndex] = 2;
	arr_skill[normal.lemon_toss, skills.otherIndex] = 1;
	arr_skill[normal.lemon_toss, skills.sound] = snd_hit;
	arr_skill[normal.lemon_toss, skills.text] = string(var_name) + " TOSSED SOME LEMONS!";
	arr_skill[normal.lemon_toss, skills.shop] = 25;
	
	arr_skill[normal.lemon_toss, skills.recharge] = 5;
	
	//Fireball
	arr_skill[normal.fireball, skills.name] = "Fireball";
	arr_skill[normal.fireball, skills.desc] = "Throw a Fireball that will burn the enemy!";
	
	arr_skill[normal.fireball, skills.func] = function(){attack(st_damage); _other.arr_status[status.burnt] = true};
	arr_skill[normal.fireball, skills.cost] = 0; arr_skill[normal.fireball, skills.uses] = 2;
	arr_skill[normal.fireball, skills.selfIndex] = 2;
	arr_skill[normal.fireball, skills.otherIndex] = 1;
	arr_skill[normal.fireball, skills.sound] = snd_hit;
	arr_skill[normal.fireball, skills.text] = string(var_name) + " THREW A FIREBALL!";
	arr_skill[normal.fireball, skills.shop] = 50;
	
	arr_skill[normal.fireball, skills.recharge] = 5;
	
	//Dissipate
	arr_skill[normal.dissipate, skills.name] = "Dissipate";
	arr_skill[normal.dissipate, skills.desc] = "HUGE DEFENSE UP!";
	
	arr_skill[normal.dissipate, skills.func] = function(){_self.tempDef = 999};
	arr_skill[normal.dissipate, skills.cost] = 1; arr_skill[normal.dissipate, skills.uses] = -1;
	arr_skill[normal.dissipate, skills.selfIndex] = 2;
	arr_skill[normal.dissipate, skills.otherIndex] = 1;
	arr_skill[normal.dissipate, skills.sound] = snd_defenseUp;
	arr_skill[normal.dissipate, skills.text] = string(var_name) + " DISSIPATES!";
	arr_skill[normal.dissipate, skills.shop] = 25;
	
	arr_skill[normal.dissipate, skills.recharge] = 5;
	
	//Disengage
	arr_skill[normal.disengage, skills.name] = "Disengage";
	arr_skill[normal.disengage, skills.desc] = "Damage immunity for a turn!";
	
	arr_skill[normal.disengage, skills.func] = function(){_self.disengaged = _other = obj_enemy ? 2 : 1; _self.arr_status[status.disengaged] = true};
	arr_skill[normal.disengage, skills.cost] = 0; arr_skill[normal.disengage, skills.uses] = 3;
	arr_skill[normal.disengage, skills.selfIndex] = 3;
	arr_skill[normal.disengage, skills.otherIndex] = 0;
	arr_skill[normal.disengage, skills.sound] = snd_defenseUp;
	arr_skill[normal.disengage, skills.text] = string(var_name) + " DISENGAGES!";
	arr_skill[normal.disengage, skills.shop] = 75;
	
	arr_skill[normal.disengage, skills.recharge] = 3;
	
	//Rat Flute
	arr_skill[normal.rat_flute, skills.name] = "Rat Flute";
	arr_skill[normal.rat_flute, skills.desc] = "Plays a beautiful rat song!";
	arr_skill[normal.rat_flute, skills.func] = function(){
		var _upgraded;
		ini_open("unlocks.ini")
			_upgraded = ini_read_real("unlocks", "10", false)
		ini_close();
	
		if(_upgraded)
		{
			for(i=0; i<4; i++)
			{
				if(st_skills[i] = normal.rat_flute){st_skills[i]= normal.rat_pocket};
			};
		};
		else
		{
			_self.tempDef += 10
		};
	};
	arr_skill[normal.rat_flute, skills.cost] = 0; arr_skill[normal.rat_flute, skills.uses] = -1;
	arr_skill[normal.rat_flute, skills.selfIndex] = 3;
	arr_skill[normal.rat_flute, skills.otherIndex] = 0;
	arr_skill[normal.rat_flute, skills.sound] = snd_ratFlute;
	arr_skill[normal.rat_flute, skills.text] = string(var_name) + " PLAYS A SONG!";
	arr_skill[normal.rat_flute, skills.shop] = 25;
	
	arr_skill[normal.rat_flute, skills.recharge] = 3;
	
	//Lick
	arr_skill[normal.lick, skills.name] = "LICK";
	arr_skill[normal.lick, skills.desc] = "LICK YOUR ENEMY'S SOUL";
	
	arr_skill[normal.lick, skills.func] = function(){attack(st_damage*2); regen(_self, st_damage*2)};
	arr_skill[normal.lick, skills.cost] = 1; arr_skill[normal.lick, skills.uses] = 2;
	arr_skill[normal.lick, skills.selfIndex] = 3;
	arr_skill[normal.lick, skills.otherIndex] = 1;
	arr_skill[normal.lick, skills.sound] = snd_drain;
	arr_skill[normal.lick, skills.text] = string(var_name) + " LICKS THEIR ENEMY!"
	arr_skill[normal.lick, skills.shop] = 75;
	
	arr_skill[normal.lick, skills.recharge] = 3;
	
	//Smile
	arr_skill[normal.smile, skills.name] = "SMILE";
	arr_skill[normal.smile, skills.desc] = "REGENS HEALTH AND INCREASES DEFENSE!";
	
	arr_skill[normal.smile, skills.func] = function(){regen(_self, maxHp/4); _self.tempDef += 2};
	arr_skill[normal.smile, skills.cost] = 0; arr_skill[normal.smile, skills.uses] = 1;	
	arr_skill[normal.smile, skills.selfIndex] = 3;
	arr_skill[normal.smile, skills.otherIndex] = 1;
	arr_skill[normal.smile, skills.sound] = snd_heal;
	arr_skill[normal.smile, skills.text] = string(var_name) + " SHOWS A BIG SMILE!"
	arr_skill[normal.smile, skills.shop] = 50;
	
	arr_skill[normal.smile, skills.recharge] = 3;
	
	//Pretend
	arr_skill[normal.pretend, skills.name] = "PRETEND";
	arr_skill[normal.pretend, skills.desc] = "DECREASES ENEMY DEFENSE AND RAISES YOURS!";
	
	arr_skill[normal.pretend, skills.func] = function(){_other.tempDef -= 10; _self.tempDef += 10};
	arr_skill[normal.pretend, skills.cost] = 0; arr_skill[normal.pretend, skills.uses] = 2;	
	arr_skill[normal.pretend, skills.selfIndex] = 3;
	arr_skill[normal.pretend, skills.otherIndex] = 1;
	arr_skill[normal.pretend, skills.sound] = snd_defenseDown;
	arr_skill[normal.pretend, skills.text] = string(var_name) + " PRETENDS TO HAVE SOMEONE TRAPPED INSIDE THEIR HEAD!"
	arr_skill[normal.pretend, skills.shop] = 50;
	
	arr_skill[normal.pretend, skills.recharge] = 3;
	
	//HONK 2
	arr_skill[normal.honk2, skills.name] = "HONK";
	arr_skill[normal.honk2, skills.desc] = "HONK HONK!!! ( FUNNY )";
	
	arr_skill[normal.honk2, skills.func] = function(){};
	arr_skill[normal.honk2, skills.cost] = 0; arr_skill[normal.honk2, skills.uses] = -1;	
	arr_skill[normal.honk2, skills.selfIndex] = 3;
	arr_skill[normal.honk2, skills.otherIndex] = 3;
	arr_skill[normal.honk2, skills.sound] = snd_honk2;
	arr_skill[normal.honk2, skills.text] = string(var_name) + " HONKS! ( IN A FUNNY WAY )"
	arr_skill[normal.honk2, skills.shop] = 50;
	
	arr_skill[normal.honk2, skills.recharge] = 3;
	
	//JUGGLE
	arr_skill[normal.juggle, skills.name] = "GHOST JUGGLE";
	arr_skill[normal.juggle, skills.desc] = "SPOOK THE ENEMY BY JUGGLING SOME GHOSTS!!";

	arr_skill[normal.juggle, skills.func] = function(){_other.arr_status[status.spooked] = true};
	arr_skill[normal.juggle, skills.cost] = 0; arr_skill[normal.juggle, skills.uses] = 2;	
	arr_skill[normal.juggle, skills.selfIndex] = 3;
	arr_skill[normal.juggle, skills.otherIndex] = 1;
	arr_skill[normal.juggle, skills.sound] = snd_honk;
	arr_skill[normal.juggle, skills.text] = string(var_name) + " JUGGLES SOME GHOSTS!"
	arr_skill[normal.juggle, skills.shop] = 50;
	
	arr_skill[normal.juggle, skills.recharge] = 3;
	
	//RUSH
	arr_skill[normal.rush, skills.name] = "RUSH";
	arr_skill[normal.rush, skills.desc] = "MAKES A LITTLE BIT MORE DAMAGE THAN A REGULAR ATTACK ( IT KINDA SUCKS )";
	
	arr_skill[normal.rush, skills.func] = function(){attack(st_damage*1.2)};
	arr_skill[normal.rush, skills.cost] = 0; arr_skill[normal.rush, skills.uses] = 3;	
	arr_skill[normal.rush, skills.selfIndex] = 3;
	arr_skill[normal.rush, skills.otherIndex] = 1;
	arr_skill[normal.rush, skills.sound] = snd_honk;
	arr_skill[normal.rush, skills.text] = string(var_name) + " RUSHES INTO THEMY!"
	arr_skill[normal.rush, skills.shop] = 50;
	
	arr_skill[normal.rush, skills.recharge] = 1;
	
	//JEWEL TOSS
	arr_skill[normal.jewel_toss, skills.name] = "JEWEL TOSS";
	arr_skill[normal.jewel_toss, skills.desc] = "DAMAGES / LOWERS ENEMY DEFENSE!";
	
	arr_skill[normal.jewel_toss, skills.func] = function(){attack(st_damage*1.25); _other.tempDef -= 5};
	arr_skill[normal.jewel_toss, skills.cost] = 0; arr_skill[normal.jewel_toss, skills.uses] = 3;	
	arr_skill[normal.jewel_toss, skills.selfIndex] = 3;
	arr_skill[normal.jewel_toss, skills.otherIndex] = 1;
	arr_skill[normal.jewel_toss, skills.sound] = snd_honk;
	arr_skill[normal.jewel_toss, skills.text] = string(var_name) + " TOSSES SOME JEWELS!"
	arr_skill[normal.jewel_toss, skills.shop] = 50;
	
	arr_skill[normal.jewel_toss, skills.recharge] = 3;
	
	//LEMONADE PLUS!
	arr_skill[normal.lemonade_plus, skills.name] = "LEMONADE PLUS";
	arr_skill[normal.lemonade_plus, skills.desc] = "HEALS AND RAISES YOUR DEFENSE!";

	arr_skill[normal.lemonade_plus, skills.func] = function(){_self.hp += maxHp/2; _self.tempDef += 10};
	arr_skill[normal.lemonade_plus, skills.cost] = 0; arr_skill[normal.lemonade_plus, skills.uses] = 3;	
	arr_skill[normal.lemonade_plus, skills.selfIndex] = 3;
	arr_skill[normal.lemonade_plus, skills.otherIndex] = 0;
	arr_skill[normal.lemonade_plus, skills.sound] = snd_heal;
	arr_skill[normal.lemonade_plus, skills.text] = string(var_name) + " DRANK SOME LEMONADE PLUS!";
	arr_skill[normal.lemonade_plus, skills.shop] = 25;
	
	arr_skill[normal.lemonade_plus, skills.recharge] = 10;
	
	//SEEDY LEMONADE!
	arr_skill[normal.lemonade_seedy, skills.name] = "SEEDY LEMONADE";
	arr_skill[normal.lemonade_seedy, skills.desc] = "HEALS AND RAISES YOUR DAMAGE!";
	
	arr_skill[normal.lemonade_seedy, skills.func] = function(){_self.hp += maxHp/2; _self.tempDmg += 5};
	arr_skill[normal.lemonade_seedy, skills.cost] = 0; arr_skill[normal.lemonade_seedy, skills.uses] = 1;	
	arr_skill[normal.lemonade_seedy, skills.selfIndex] = 3;
	arr_skill[normal.lemonade_seedy, skills.otherIndex] = 0;
	arr_skill[normal.lemonade_seedy, skills.sound] = snd_heal;
	arr_skill[normal.lemonade_seedy, skills.text] = string(var_name) + " DRANK SOME SEEDY LEMONADE!";
	arr_skill[normal.lemonade_seedy, skills.shop] = 25;
	
	arr_skill[normal.lemonade_seedy, skills.recharge] = 10;
	
	//LEMONADE ROTTEN
	arr_skill[normal.lemonade_rotten, skills.name] = "ROTTEN LEMONADE";
	arr_skill[normal.lemonade_rotten, skills.desc] = "HEAL ALL HP, BUT GET ROTTEN!";
	
	arr_skill[normal.lemonade_rotten, skills.func] = function(){_self.hp += maxHp; _self.arr_status[status.rotten] = true};
	arr_skill[normal.lemonade_rotten, skills.cost] = 0; arr_skill[normal.lemonade_rotten, skills.uses] = 1;	
	arr_skill[normal.lemonade_rotten, skills.selfIndex] = 3;
	arr_skill[normal.lemonade_rotten, skills.otherIndex] = 0;
	arr_skill[normal.lemonade_rotten, skills.sound] = snd_heal;
	arr_skill[normal.lemonade_rotten, skills.text] = string(var_name) + " DRANK SOME ROTTEN LEMONADE...";
	arr_skill[normal.lemonade_rotten, skills.shop] = 25;
	
	arr_skill[normal.lemonade_rotten, skills.recharge] = 10;
	
	//BITTER LEMONADE!
	arr_skill[normal.lemonade_bitter, skills.name] = "BITTER LEMONADE";
	arr_skill[normal.lemonade_bitter, skills.desc] = "HEAL ALL HP, BUT FEEL BITTER!";
	
	arr_skill[normal.lemonade_bitter, skills.func] = function(){_self.hp += maxHp; _self.arr_status[status.bitter] = true};
	arr_skill[normal.lemonade_bitter, skills.cost] = 0; arr_skill[normal.lemonade_bitter, skills.uses] = 1;	
	arr_skill[normal.lemonade_bitter, skills.selfIndex] = 3;
	arr_skill[normal.lemonade_bitter, skills.otherIndex] = 0;
	arr_skill[normal.lemonade_bitter, skills.sound] = snd_heal;
	arr_skill[normal.lemonade_bitter, skills.text] = string(var_name) + " DRANK SOME BITTER LEMONADE!";
	arr_skill[normal.lemonade_bitter, skills.shop] = 25;
	
	arr_skill[normal.lemonade_bitter, skills.recharge] = 10;
	
	//CROWN
	arr_skill[normal.crown, skills.name] = "CROWN";
	arr_skill[normal.crown, skills.desc] = "LOOK AT YOUR GORGEOUS CROWN, REMEMBER YOU'RE THE QUEEN!";
	
	arr_skill[normal.crown, skills.func] = function(){_self.arr_status[status.regeneration] = true; regenCountdown = 3};
	arr_skill[normal.crown, skills.cost] = 0; arr_skill[normal.crown, skills.uses] = 3;	
	arr_skill[normal.crown, skills.selfIndex] = 3;
	arr_skill[normal.crown, skills.otherIndex] = 0;
	arr_skill[normal.crown, skills.sound] = snd_heal;
	arr_skill[normal.crown, skills.text] = string(var_name) + " CHECKS OUT HER CROWN!"
	arr_skill[normal.crown, skills.shop] = 50;
	
	arr_skill[normal.crown, skills.recharge] = 15;
	
	//ILLEGAL
	arr_skill[normal.swap, skills.name] = "SWAP";
	arr_skill[normal.swap, skills.desc] = "SWAP CHARACTERS!";
	
	arr_skill[normal.swap, skills.func] = function(){
		if(playerSelected = enemy.tito)
		{
			global.player = enemy.bondiola
		}
		else
		{
			global.player = enemy.tito
		}
		initializeTB()
	};
	arr_skill[normal.swap, skills.cost] = 0; arr_skill[normal.swap, skills.uses] = 3;	
	arr_skill[normal.swap, skills.selfIndex] = 0;
	arr_skill[normal.swap, skills.otherIndex] = 0;
	arr_skill[normal.swap, skills.sound] = snd_defenseDown;
	arr_skill[normal.swap, skills.text] = string(var_name) + " SWAPPED!"
	arr_skill[normal.swap, skills.shop] = 50;
	
	arr_skill[normal.swap, skills.recharge] = 7;
	
	//CONNECT
	arr_skill[normal.connect, skills.name] = "CONNECT";
	arr_skill[normal.connect, skills.desc] = "CONNECT YOURSELF WITH THE ENEMY!";
	
	arr_skill[normal.connect, skills.func] = function(){_other.arr_status[status.connected] = true; _other.connectedCountdown = 3};
	arr_skill[normal.connect, skills.cost] = 0; arr_skill[normal.connect, skills.uses] = 3;	
	arr_skill[normal.connect, skills.selfIndex] = 3;
	arr_skill[normal.connect, skills.otherIndex] = 1;
	arr_skill[normal.connect, skills.sound] = snd_defenseDown;
	arr_skill[normal.connect, skills.text] = string(var_name) + " CONNECTS WITH THE ENEMY"
	arr_skill[normal.connect, skills.shop] = 50;
	
	arr_skill[normal.connect, skills.recharge] = 7;
	
	//PHISH
	arr_skill[normal.phish, skills.name] = "PHISH";
	arr_skill[normal.phish, skills.desc] = "TAKES MONEY AWAY!";
	
	arr_skill[normal.phish, skills.func] = function(){
		
		if(_other = obj_enemy)
		{
			ini_open("unlocks.ini");
				var _scammed = ini_read_real("other", "scams", 0);
				ini_write_real("other", "scams", _scammed +1);
			
				if(ini_read_real("other", "scams", 0) >= 10) and (!ini_read_real("unlocks", "5", false))
				{
					ini_write_real("unlocks", "5", true);
					instance_create_depth(x, y, depth, obj_newUnlockBattle);
				};
			ini_close();
		};
		if(_other = obj_player){global.money -= 5}; else{global.money +=10}
		repeat(5){instance_create_depth(_other.x, _other.y, depth-1, obj_money)}
	};
	arr_skill[normal.phish, skills.cost] = 0; arr_skill[normal.phish, skills.uses] = -1;	
	arr_skill[normal.phish, skills.selfIndex] = 3;
	arr_skill[normal.phish, skills.otherIndex] = 1;
	arr_skill[normal.phish, skills.sound] = snd_defenseDown;
	arr_skill[normal.phish, skills.text] = string(var_name) + " TOOK SOME OF YOUR MONEY!"
	arr_skill[normal.phish, skills.shop] = 50;
	
	arr_skill[normal.phish, skills.recharge] = 3;
	
	//DOWNLOAD
	arr_skill[normal.download, skills.name] = "DOWNLOAD";
	arr_skill[normal.download, skills.desc] = "DOWNLOADS AND COPIES YOUR DATA!";
	
	arr_skill[normal.download, skills.func] = function(){
		enemylist();
		initializeEnemy(_other.playerSelected);
		
		for(i=0; i<4; i++)
		{
			if(_other.st_skills[i] != -1)
			{
				st_skills[i] = _other.st_skills[i];
				st_skillUses[i] = arr_skill[st_skills[i], skills.uses];
			};
		};
		st_special = arr_enemy[enemy.virus, character.special];
	};
	arr_skill[normal.download, skills.cost] = 0; arr_skill[normal.download, skills.uses] = -1;	
	arr_skill[normal.download, skills.selfIndex] = 3;
	arr_skill[normal.download, skills.otherIndex] = 0;
	arr_skill[normal.download, skills.sound] = snd_defenseDown;
	arr_skill[normal.download, skills.text] = string(var_name) + " DOWNLOADED YOUR DATA!"
	arr_skill[normal.download, skills.shop] = 50;
	
	arr_skill[normal.download, skills.recharge] = 15;
	
	//WARN
	arr_skill[normal.warn, skills.name] = "WARN";
	arr_skill[normal.warn, skills.desc] = "RAISE ENEMY DEFENSE BUT LOWER THEIR DAMAGE!";
	
	arr_skill[normal.warn, skills.func] = function(){_other.tempDef += 15; _other.tempDmg -= 10};
	arr_skill[normal.warn, skills.cost] = 0; arr_skill[normal.warn, skills.uses] = -1;	
	arr_skill[normal.warn, skills.selfIndex] = 3;
	arr_skill[normal.warn, skills.otherIndex] = 1;
	arr_skill[normal.warn, skills.sound] = snd_defenseDown;
	arr_skill[normal.warn, skills.text] = string(var_name) + " WARNS YOU!"
	arr_skill[normal.warn, skills.shop] = 50;
	
	arr_skill[normal.warn, skills.recharge] = 7;
	
	//ELECTRIC
	arr_skill[normal.electric, skills.name] = "ELECTRIC";
	arr_skill[normal.electric, skills.desc] = "ELECTROCUTES YOUR ENEMY!";

	arr_skill[normal.electric, skills.func] = function(){_other.arr_status[status.electrocuted] = true; _other.electrocuted = 3};
	arr_skill[normal.electric, skills.cost] = 0; arr_skill[normal.electric, skills.uses] = 3;	
	arr_skill[normal.electric, skills.selfIndex] = 2;
	arr_skill[normal.electric, skills.otherIndex] = 1;
	arr_skill[normal.electric, skills.sound] = snd_heal;
	arr_skill[normal.electric, skills.text] = string(var_name) + " ELECTROCUTES THE ENEMY!"
	arr_skill[normal.electric, skills.shop] = 50;
	
	arr_skill[normal.electric, skills.recharge] = 7;
	
	//MUNCH
	arr_skill[normal.soul_munch, skills.name] = "MUNCH SOUL";
	arr_skill[normal.soul_munch, skills.desc] = "MUNCHES YOUR SOUL";
	
	arr_skill[normal.soul_munch, skills.func] = function(){attack(st_damage*2); var ii= choose(1, 2); if (ii = 1){_other.arr_status[status.spooked] = true}};
	arr_skill[normal.soul_munch, skills.cost] = 1; arr_skill[normal.soul_munch, skills.uses] = 2;	
	arr_skill[normal.soul_munch, skills.selfIndex] = 2;
	arr_skill[normal.soul_munch, skills.otherIndex] = 1;
	arr_skill[normal.soul_munch, skills.sound] = snd_bite;
	arr_skill[normal.soul_munch, skills.text] = string(var_name) + " MUNCHES YOUR SOUL!"
	arr_skill[normal.soul_munch, skills.shop] = 50;
	
	arr_skill[normal.soul_munch, skills.recharge] = 5;
	
	arr_skill[normal.soul_steal, skills.recharge] = 5;
	
	//steal
	arr_skill[normal.soul_steal, skills.name] = "STEAL SOUL";
	arr_skill[normal.soul_steal, skills.desc] = "STEALS YOUR SOUL";
	
	arr_skill[normal.soul_steal, skills.func] = function(){_other.arr_status[status.rotten] = true; _other.arr_status[status.spooked] = true};
	arr_skill[normal.soul_steal, skills.cost] = 0; arr_skill[normal.soul_steal, skills.uses] = 3;	
	arr_skill[normal.soul_steal, skills.selfIndex] = 3;
	arr_skill[normal.soul_steal, skills.otherIndex] = 1;
	arr_skill[normal.soul_steal, skills.sound] = snd_heal;
	arr_skill[normal.soul_steal, skills.text] = string(var_name) + " STEALS YOUR SOUL!"
	arr_skill[normal.soul_steal, skills.shop] = 50;
	
	arr_skill[normal.soul_steal, skills.recharge] = 5;
	
	//block
	arr_skill[normal.soul_block, skills.name] = "BLOCK SOUL";
	arr_skill[normal.soul_block, skills.desc] = "BLOCKS YOUR SOUL";
	
	arr_skill[normal.soul_block, skills.func] = function(){_self.arr_status[status.disengaged] = true; _self.disengaged = 2};
	arr_skill[normal.soul_block, skills.cost] = 0; arr_skill[normal.soul_block, skills.uses] = 3;	
	arr_skill[normal.soul_block, skills.selfIndex] = 3;
	arr_skill[normal.soul_block, skills.otherIndex] = 0;
	arr_skill[normal.soul_block, skills.sound] = snd_heal;
	arr_skill[normal.soul_block, skills.text] = string(var_name) + " BLOCKS YOUR SOUL!"
	arr_skill[normal.soul_block, skills.shop] = 50;
	
	arr_skill[normal.soul_block, skills.recharge] = 5;
	
	//lilyJuice
	arr_skill[normal.lily_juice, skills.name] = "LILY JUICE";
	arr_skill[normal.lily_juice, skills.desc] = "HEALS YOUR WOUNDS AND MAKES YOU TIPSY!";
	
	arr_skill[normal.lily_juice, skills.func] = function(){regen(_self, maxHp *.70); _self.arr_status[status.tipsy] = true};
	arr_skill[normal.lily_juice, skills.cost] = 0; arr_skill[normal.lily_juice, skills.uses] = 3;	
	arr_skill[normal.lily_juice, skills.selfIndex] = 3;
	arr_skill[normal.lily_juice, skills.otherIndex] = 0;
	arr_skill[normal.lily_juice, skills.sound] = snd_heal;
	arr_skill[normal.lily_juice, skills.text] = string(var_name) + " DRINKS SOME LILY JUICE!"
	arr_skill[normal.lily_juice, skills.shop] = 50;
	
	arr_skill[normal.lily_juice, skills.recharge] = 5;
	
	//burgify
	arr_skill[normal.burgify, skills.name] = "BURGIFY";
	arr_skill[normal.burgify, skills.desc] = "TURN THE ENEMY INTO A LITTLE BURGER!";
	
	arr_skill[normal.burgify, skills.sound] = snd_heal;
	arr_skill[normal.burgify, skills.text] = string(var_name) + " TURNS THE ENEMY INTO A BURGER!"
	arr_skill[normal.burgify, skills.func] = function(){
		if(!global.bossFight) and (_other != obj_player)
			{
				with(_other){initializeEnemy(enemy.burger); initializeSkills(id, obj_player)};screenshake(5, 10, 2)
			}
			else
			{
				arr_skill[normal.burgify, skills.sound] = snd_error;
				arr_skill[normal.burgify, skills.text] = string(var_name) + " CANNOT TURN BOSSES INTO BURGERS!"
				attack(st_damage*2)
			};
		}
	arr_skill[normal.burgify, skills.cost] = 0; arr_skill[normal.burgify, skills.uses] = 3;	
	arr_skill[normal.burgify, skills.selfIndex] = 3;
	arr_skill[normal.burgify, skills.otherIndex] = 0;	
	arr_skill[normal.burgify, skills.shop] = 50;
	
	arr_skill[normal.burgify, skills.recharge] = 7;
	
	//rot
	arr_skill[normal.rot, skills.name] = "ROT";
	arr_skill[normal.rot, skills.desc] = "ROTS THE ENEMY";
	
	arr_skill[normal.rot, skills.func] = function(){_other.arr_status[status.rotten] = true};
	arr_skill[normal.rot, skills.cost] = 0; arr_skill[normal.rot, skills.uses] = 3;	
	arr_skill[normal.rot, skills.selfIndex] = 3;
	arr_skill[normal.rot, skills.otherIndex] = 1;
	arr_skill[normal.rot, skills.sound] = snd_heal;
	arr_skill[normal.rot, skills.text] = string(var_name) + " ROTS THE ENEMY"
	arr_skill[normal.rot, skills.shop] = 50;
	
	arr_skill[normal.rot, skills.recharge] = 5;
	
	//Freeze
	arr_skill[normal.freeze, skills.name] = "FREEZE";
	arr_skill[normal.freeze, skills.desc] = "FREEZE YOUR ENEMY FOR TWO TURNS!";
	
	arr_skill[normal.freeze, skills.func] = function(){_other.frozenCountdown = 2; _other.arr_status[status.frozen] = true};	
	arr_skill[normal.freeze, skills.cost] = 0; arr_skill[normal.freeze, skills.uses] = 3;
	arr_skill[normal.freeze, skills.selfIndex] = 3;
	arr_skill[normal.freeze, skills.otherIndex] = 1;
	arr_skill[normal.freeze, skills.sound] = snd_defenseDown;
	arr_skill[normal.freeze, skills.text] = string(var_name) + " FREEZES THE ENEMY!";
	arr_skill[normal.freeze, skills.shop] = 25;
	
	arr_skill[normal.freeze, skills.recharge] = 7;
	
	//Lifehack
	arr_skill[normal.lifehack, skills.name] = "LIFEHACK";
	arr_skill[normal.lifehack, skills.desc] = "RESTORES ALL LIFE, SETS ENEMY'S HP TO RANDOM VALUE";
	
	arr_skill[normal.lifehack, skills.func] = function(){regen(_self, maxHp); _other.hp = irandom_range(5, _other.maxHp)};	
	arr_skill[normal.lifehack, skills.cost] = 0; arr_skill[normal.lifehack, skills.uses] = 1;
	arr_skill[normal.lifehack, skills.selfIndex] = 3;
	arr_skill[normal.lifehack, skills.otherIndex] = 1;
	arr_skill[normal.lifehack, skills.sound] = snd_heal;
	arr_skill[normal.lifehack, skills.text] = string(var_name) + " PRETENDS NOT TO BE HURT!";
	arr_skill[normal.lifehack, skills.shop] = 25;
	
	arr_skill[normal.lifehack, skills.recharge] = 7;
	
	//Rubbish
	arr_skill[normal.rubbish, skills.name] = "RUBBISH";
	arr_skill[normal.rubbish, skills.desc] = "SEARCH THE RUBBISH AND SEE WHAT YOU FIND";
	
	arr_skill[normal.rubbish, skills.func] = function(){
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rubbish)
				{
					var _choice = choose(normal.bug, normal.can, normal.cheese_old);
					st_skills[i] = _choice
					
					if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
					break;
				};
			};	
		};	
	arr_skill[normal.rubbish, skills.cost] = 0; arr_skill[normal.rubbish, skills.uses] = -1;
	arr_skill[normal.rubbish, skills.selfIndex] = 3;
	arr_skill[normal.rubbish, skills.otherIndex] = 0;
	arr_skill[normal.rubbish, skills.sound] = snd_heal;
	arr_skill[normal.rubbish, skills.text] = string(var_name) + " LOOKS IN THE RUBBISH!";
	arr_skill[normal.rubbish, skills.shop] = 15;
	
	arr_skill[normal.rubbish, skills.recharge] = 1;
	
	//BUG
	arr_skill[normal.bug, skills.name] = "BUG";
	arr_skill[normal.bug, skills.desc] = "A SCARY BUG!";
	
	arr_skill[normal.bug, skills.func] = function(){_other.arr_status[status.spooked] = true};	
	arr_skill[normal.bug, skills.cost] = 0; arr_skill[normal.bug, skills.uses] = 1;
	arr_skill[normal.bug, skills.selfIndex] = 2;
	arr_skill[normal.bug, skills.otherIndex] = 1;
	arr_skill[normal.bug, skills.sound] = snd_defenseDown;
	arr_skill[normal.bug, skills.text] = string(var_name) + " SHOWS THE ENEMY A VERY SCARY BUG!";
	arr_skill[normal.bug, skills.shop] = 0;
	
	arr_skill[normal.bug, skills.recharge] = 7;
	
	//BUG
	arr_skill[normal.cheese_old, skills.name] = "OLD CHEESE";
	arr_skill[normal.cheese_old, skills.desc] = "REGENERATE HALF HP AT THE COST OF ROTTEN EFFECT!";
	
	arr_skill[normal.cheese_old, skills.func] = function(){regen(_self, maxHp/2); _self.arr_status[status.rotten] = true};	
	arr_skill[normal.cheese_old, skills.cost] = 0; arr_skill[normal.cheese_old, skills.uses] = 2;
	arr_skill[normal.cheese_old, skills.selfIndex] = 3;
	arr_skill[normal.cheese_old, skills.otherIndex] = 1;
	arr_skill[normal.cheese_old, skills.sound] = snd_heal;
	arr_skill[normal.cheese_old, skills.text] = string(var_name) + " EATS A NASTY CHEESE...";
	arr_skill[normal.cheese_old, skills.shop] = 0;
	
	arr_skill[normal.cheese_old, skills.recharge] = 5;
	
	//CAN
	arr_skill[normal.can, skills.name] = "A CAN";
	arr_skill[normal.can, skills.desc] = "TOSS A CAN TO THE ENEMY THAT MAKES DOUBLE YOUR DAMAGE!";
	
	arr_skill[normal.can, skills.func] = function(){attack(st_damage*2)};	
	arr_skill[normal.can, skills.cost] = 0; arr_skill[normal.can, skills.uses] = 1;
	arr_skill[normal.can, skills.selfIndex] = 2;
	arr_skill[normal.can, skills.otherIndex] = 1;
	arr_skill[normal.can, skills.sound] = snd_hit;
	arr_skill[normal.can, skills.text] = string(var_name) + " TOSSES A CAN!";
	arr_skill[normal.can, skills.shop] = 0;
	
	arr_skill[normal.can, skills.recharge] = 7;
	
	//SPOOKIE COOKIE
	arr_skill[normal.ghost_cookie, skills.name] = "GHOST COOKIE";
	arr_skill[normal.ghost_cookie, skills.desc] = "HEALS SOME HP, BUT HAS A CHANCE TO SPOOK YOU!";
	
	arr_skill[normal.ghost_cookie, skills.func] = function(){regen(_self, maxHp/2); var _choice = choose(1, 2, 3); if(_choice = 1){_self.arr_status[status.spooked] = true}};	
	arr_skill[normal.ghost_cookie, skills.cost] = 0; arr_skill[normal.ghost_cookie, skills.uses] = 3;
	arr_skill[normal.ghost_cookie, skills.selfIndex] = 3;
	arr_skill[normal.ghost_cookie, skills.otherIndex] = 0;
	arr_skill[normal.ghost_cookie, skills.sound] = snd_heal;
	arr_skill[normal.ghost_cookie, skills.text] = string(var_name) + " EATS A SPOOKY COOKIE!";
	arr_skill[normal.ghost_cookie, skills.shop] = 0;
	
	arr_skill[normal.ghost_cookie, skills.recharge] = 5;
	
	//LIFESWAP
	arr_skill[normal.lifeswap, skills.name] = "LIFESWAP";
	arr_skill[normal.lifeswap, skills.desc] = "SWAP YOUR HP WITH THE ENEMY'S HP!";
	
	arr_skill[normal.lifeswap, skills.func] = function(){var _myHP = _self.hp; _self.hp = _other.hp; _other.hp = _myHP};	
	arr_skill[normal.lifeswap, skills.cost] = 0; arr_skill[normal.lifeswap, skills.uses] = 1;
	arr_skill[normal.lifeswap, skills.selfIndex] = 3;
	arr_skill[normal.lifeswap, skills.otherIndex] = 1;
	arr_skill[normal.lifeswap, skills.sound] = snd_hit;
	arr_skill[normal.lifeswap, skills.text] = string(var_name) + " SWAPS HEALTH BARS WITH THE ENEMY!";
	arr_skill[normal.lifeswap, skills.shop] = 75;
	
	arr_skill[normal.lifeswap, skills.recharge] = 25;
	
	//GRILLED CHEESE
	arr_skill[normal.grilled_cheese, skills.name] = "GRILLED CHEESE";
	arr_skill[normal.grilled_cheese, skills.desc] = "FILLS HP, DAMAGE UP";
	
	arr_skill[normal.grilled_cheese, skills.func] = function(){regen(_self, maxHp); _self.st_damage += 10};	
	arr_skill[normal.grilled_cheese, skills.cost] = 0; arr_skill[normal.grilled_cheese, skills.uses] = 1;
	arr_skill[normal.grilled_cheese, skills.selfIndex] = 3;
	arr_skill[normal.grilled_cheese, skills.otherIndex] = 0;
	arr_skill[normal.grilled_cheese, skills.sound] = snd_heal;
	arr_skill[normal.grilled_cheese, skills.text] = string(var_name) + " EATS SOME GRILLED CHEESE!";
	arr_skill[normal.grilled_cheese, skills.shop] = 75;
	
	arr_skill[normal.grilled_cheese, skills.recharge] = 15;
	
	//GRILLED CHEESE
	arr_skill[normal.milk, skills.name] = "MILK";
	arr_skill[normal.milk, skills.desc] = "REMOVES ALL STATUS EFFECTS";
	
	arr_skill[normal.milk, skills.target] = _self;
	arr_skill[normal.milk, skills.value] = maxHp;
	arr_skill[normal.milk, skills.func] = function(){for(i=0; i <= 10; i++){_self.arr_status[i]= false}};
	arr_skill[normal.milk, skills.cost] = 0; arr_skill[normal.milk, skills.uses] = 5;
	arr_skill[normal.milk, skills.selfIndex] = 3;
	arr_skill[normal.milk, skills.otherIndex] = 0;
	arr_skill[normal.milk, skills.sound] = snd_heal;
	arr_skill[normal.milk, skills.text] = string(var_name) + " DRANK SOME HEALTHY MILK!";
	arr_skill[normal.milk, skills.shop] = 0;
	
	arr_skill[normal.milk, skills.recharge] = 3;
	
	//MELK
	arr_skill[normal.melk, skills.name] = "MELK";
	arr_skill[normal.melk, skills.desc] = "INFLICTS ALL STATUS EFFECTS";
	
	arr_skill[normal.melk, skills.target] = _self;
	arr_skill[normal.melk, skills.value] = maxHp;
	arr_skill[normal.melk, skills.func] = function(){for(i=0; i <= 10; i++){_self.arr_status[i]= true}};
	arr_skill[normal.melk, skills.cost] = 0; arr_skill[normal.melk, skills.uses] = 1;
	arr_skill[normal.melk, skills.selfIndex] = 1;
	arr_skill[normal.melk, skills.otherIndex] = 0;
	arr_skill[normal.melk, skills.sound] = snd_heal;
	arr_skill[normal.melk, skills.text] = string(var_name) + " DRANK SOME WEIRD MELK!";
	arr_skill[normal.melk, skills.shop] = 25;
	
	arr_skill[normal.melk, skills.recharge] = 3;
	
	//MUAH
	arr_skill[normal.muah, skills.name] = "MUAH";
	arr_skill[normal.muah, skills.desc] = "LOWER ENEMY DAMAGE!";
	
	arr_skill[normal.muah, skills.func] = function(){_other.tempDmg -= 5};
	arr_skill[normal.muah, skills.cost] = 0; arr_skill[normal.muah, skills.uses] = 5;
	arr_skill[normal.muah, skills.selfIndex] = 3;
	arr_skill[normal.muah, skills.otherIndex] = 3;
	arr_skill[normal.muah, skills.sound] = snd_heal;
	arr_skill[normal.muah, skills.text] = string(var_name) + " MUAH!";
	arr_skill[normal.muah, skills.shop] = 50;
	
	arr_skill[normal.muah, skills.recharge] = 5;
	
	//PLUNGER
	arr_skill[normal.plunger, skills.name] = "PLUNGER";
	arr_skill[normal.plunger, skills.desc] = "DAMAGES ENEMY, MAY ROT THEM TOO!";
	
	arr_skill[normal.plunger, skills.func] = function(){attack(st_damage*1.2) var ii = choose(1, 2); if(ii = 1){_other.arr_status[status.rotten] = true}};
	arr_skill[normal.plunger, skills.cost] = 0; arr_skill[normal.plunger, skills.uses] = 3;
	arr_skill[normal.plunger, skills.selfIndex] = 2;
	arr_skill[normal.plunger, skills.otherIndex] = 1;
	arr_skill[normal.plunger, skills.sound] = snd_heal;
	arr_skill[normal.plunger, skills.text] = string(var_name) + " USES THE PLUNGER!";
	arr_skill[normal.plunger, skills.shop] = 0;
	
	arr_skill[normal.plunger, skills.recharge] = 5;
	
	//frown
	arr_skill[normal.frown, skills.name] = "frown";
	arr_skill[normal.frown, skills.desc] = "MAKE DOUBLE DAMAGE FOR REST OF THE FIGHT!";
	
	arr_skill[normal.frown, skills.func] = function(){_self.tempDmg = st_damage};
	arr_skill[normal.frown, skills.cost] = 0; arr_skill[normal.frown, skills.uses] = 1;
	arr_skill[normal.frown, skills.selfIndex] = 1;
	arr_skill[normal.frown, skills.otherIndex] = 0;
	arr_skill[normal.frown, skills.sound] = snd_heal;
	arr_skill[normal.frown, skills.text] = string(var_name) + " FROWNS!";
	arr_skill[normal.frown, skills.shop] = 50;
	
	arr_skill[normal.frown, skills.recharge] = 5;
	
	//RED BOOK
	arr_skill[normal.book_red, skills.name] = "RED BOOK";
	arr_skill[normal.book_red, skills.desc] = "+5 PERMANENT DAMAGE! TURNS INTO WHITE BOOK";
	
	arr_skill[normal.book_red, skills.text] = string(var_name) + "THIS BOOK SAYS: ";
	arr_skill[normal.book_red, skills.func] = function(){
		_self.st_damage += 25; 
		
		for(i=0; i < 4; i++)
		{
			if(_self.st_skills[i] = normal.book_red)
			{
				_self.st_skills[i] = normal.book_white
				break;
			};
		};	
		
		arr_skill[normal.book_red, skills.text] = choose
		(
			"THIS BOOK SAYS: IT'S A GOOD IDEA TO GUARD WHEN THE ENEMY DOES",
			"THIS BOOK SAYS: DEFENSE TAKES THAT AMMOUNT OF DAMAGE AWAY, AND IT CAPS AT 1/2DMG PER HIT",
			"THIS BOOK SAYS: GUARDING WILL ALLWAYS CUT DAMAGE RECIEVED IN HALF"
		);
	};
	arr_skill[normal.book_red, skills.cost] = 0; arr_skill[normal.book_red, skills.uses] = -1;
	arr_skill[normal.book_red, skills.selfIndex] = 1;
	arr_skill[normal.book_red, skills.otherIndex] = 0;
	arr_skill[normal.book_red, skills.sound] = snd_heal;
	arr_skill[normal.book_red, skills.shop] = 50;
	
	arr_skill[normal.book_red, skills.recharge] = 5;
	
	//GREEN BOOK
	arr_skill[normal.book_green, skills.name] = "GREEN BOOK";
	arr_skill[normal.book_green, skills.desc] = "+25 MAX HP! TURNS INTO WHITE BOOK";
	
	arr_skill[normal.book_green, skills.text] = string(var_name) + "THIS BOOK SAYS: ";
	arr_skill[normal.book_green, skills.func] = function(){
		_self.maxHp += 25; 
		
		for(i=0; i < 4; i++)
		{
			if(_self.st_skills[i] = normal.book_green)
			{
				_self.st_skills[i] = normal.book_white
				break;
			};
		};	
		
		arr_skill[normal.book_green, skills.text] = choose
		(
			"THIS BOOK SAYS: \n SKILLS ALLWAYS COST EITHER USES OR TURNS",
			"THIS BOOK SAYS: BESIDES THE SHOP, ENEMIES HAVE UNIQUE SKILLS THAT YOU CAN STEAL WITH THE RIGHT SKILL",
			"THIS BOOK SAYS: THERE ARE HIDDEN SKILLS THAT ARE UNOBTAINABLE VIA SHOPS/STEALING"
		);
	};
	arr_skill[normal.book_green, skills.cost] = 0; arr_skill[normal.book_green, skills.uses] = -1;
	arr_skill[normal.book_green, skills.selfIndex] = 1;
	arr_skill[normal.book_green, skills.otherIndex] = 0;
	arr_skill[normal.book_green, skills.sound] = snd_heal;
	arr_skill[normal.book_green, skills.shop] = 50;
	
	arr_skill[normal.book_green, skills.recharge] = 5;
	
	//BLUE BOOK
	arr_skill[normal.book_blue, skills.name] = "BLUE BOOK";
	arr_skill[normal.book_blue, skills.desc] = "+15 PERMANENT DEFENSE! TURNS INTO WHITE BOOK";
	
	arr_skill[normal.book_blue, skills.text] = string(var_name) + "THIS BOOK SAYS: ";
	arr_skill[normal.book_blue, skills.func] = function(){
		_self.st_defense += 15; 
		
		for(i=0; i < 4; i++)
		{
			if(_self.st_skills[i] = normal.book_blue)
			{
				_self.st_skills[i] = normal.book_white
				break;
			};
		};	
		
		arr_skill[normal.book_blue, skills.text] = choose
		(
			"THIS BOOK SAYS: YOU CAN FIND SECRETS BY USING THE RIGHT SKILL AT THE RIGHT PLACE",
			"THIS BOOK SAYS: UNLOCKING EVERYTHING WILL GIVE YOU A LITTLE PRIZE <3"
		);
	};
	arr_skill[normal.book_blue, skills.cost] = 0; arr_skill[normal.book_blue, skills.uses] = -1;
	arr_skill[normal.book_blue, skills.selfIndex] = 1;
	arr_skill[normal.book_blue, skills.otherIndex] = 0;
	arr_skill[normal.book_blue, skills.sound] = snd_heal;
	arr_skill[normal.book_blue, skills.shop] = 50;
	
	arr_skill[normal.book_blue, skills.recharge] = 5;
	
	//WHITE BOOK
	arr_skill[normal.book_white, skills.name] = "WHITE BOOK";
	arr_skill[normal.book_white, skills.desc] = "MAYBE READ IT SOMEWHERE SPECIAL?";
	
	arr_skill[normal.book_white, skills.text] = "THIS BOOK SAYS: \n"
	arr_skill[normal.book_white, skills.func] = function(){};
	arr_skill[normal.book_white, skills.cost] = 0; arr_skill[normal.book_white, skills.uses] = -1;
	arr_skill[normal.book_white, skills.selfIndex] = 1;
	arr_skill[normal.book_white, skills.otherIndex] = 0;
	arr_skill[normal.book_white, skills.sound] = snd_heal;
	arr_skill[normal.book_white, skills.shop] = 50;
	
	arr_skill[normal.book_white, skills.recharge] = 5;
	
	//grape soda
	arr_skill[normal.grape_soda, skills.name] = "grape soda";
	arr_skill[normal.grape_soda, skills.desc] = "HEALS SOME HP";
	
	arr_skill[normal.grape_soda, skills.func] = function(){_self.hp += maxHp/2};
	arr_skill[normal.grape_soda, skills.cost] = 0; arr_skill[normal.grape_soda, skills.uses] = 2;
	arr_skill[normal.grape_soda, skills.selfIndex] = 3;
	arr_skill[normal.grape_soda, skills.otherIndex] = 0;
	arr_skill[normal.grape_soda, skills.sound] = snd_heal;
	arr_skill[normal.grape_soda, skills.text] = string(var_name) + " DRINKS CHEAP SODA!";
	arr_skill[normal.grape_soda, skills.shop] = 15;
	
	arr_skill[normal.grape_soda, skills.recharge] = 7;
	
	//cigar
	arr_skill[normal.cigar, skills.name] = "cigar";
	arr_skill[normal.cigar, skills.desc] = "DAMAGES YOU, BUT RAISES YOUR DEFENSE!";
	
	arr_skill[normal.cigar, skills.func] = function(){_self.hp -= 15; _self.tempDef += 20};
	arr_skill[normal.cigar, skills.cost] = 0; arr_skill[normal.cigar, skills.uses] = -1;
	arr_skill[normal.cigar, skills.selfIndex] = 1;
	arr_skill[normal.cigar, skills.otherIndex] = 0;
	arr_skill[normal.cigar, skills.sound] = snd_heal;
	arr_skill[normal.cigar, skills.text] = string(var_name) + " SMOKES A CIGAR";
	arr_skill[normal.cigar, skills.shop] = 25;
	
	arr_skill[normal.cigar, skills.recharge] = 3;
	
	//change
	arr_skill[normal.change, skills.name] = "change";
	arr_skill[normal.change, skills.desc] = "HIT THE ENEMY WITH YOUR MONEY!";
	
	arr_skill[normal.change, skills.func] = function(){if(global.money >= 5){attack(st_damage*1.5); global.money -=5} else{attack(st_damage)}};
	arr_skill[normal.change, skills.cost] = 0; arr_skill[normal.change, skills.uses] = -1;
	arr_skill[normal.change, skills.selfIndex] = 2;
	arr_skill[normal.change, skills.otherIndex] = 1;
	arr_skill[normal.change, skills.sound] = snd_heal;
	arr_skill[normal.change, skills.text] = string(var_name) + " TOSSES SOME COINS";
	arr_skill[normal.change, skills.shop] = 25;
	
	arr_skill[normal.change, skills.recharge] = 3;
	
	//change
	arr_skill[normal.rubber_glove, skills.name] = "rubber glove";
	arr_skill[normal.rubber_glove, skills.desc] = "x2 damage to the enemy, but x1 damage to yourself";
	
	arr_skill[normal.rubber_glove, skills.func] = function(){attack(st_damage*2); self.hp -= dmgCalc(_self, _self, st_damage)};
	arr_skill[normal.rubber_glove, skills.cost] = 0; arr_skill[normal.rubber_glove, skills.uses] = -1;
	arr_skill[normal.rubber_glove, skills.selfIndex] = 2;
	arr_skill[normal.rubber_glove, skills.otherIndex] = 1;
	arr_skill[normal.rubber_glove, skills.sound] = snd_heal;
	arr_skill[normal.rubber_glove, skills.text] = string(var_name) + " SLAPS WITH A GLOVE!";
	arr_skill[normal.rubber_glove, skills.shop] = 25;
	
	arr_skill[normal.rubber_glove, skills.recharge] = 3;
	
	//sneeze
	arr_skill[normal.sneeze, skills.name] = "SNEEZE";
	arr_skill[normal.sneeze, skills.desc] = "damage with a chance to freeze!";
	
	arr_skill[normal.sneeze, skills.func] = function(){attack(st_damage/2); var ii= choose(1, 2); if(ii = 1){_other.frozenCountdown = 2; _other.arr_status[status.frozen] = true}};
	arr_skill[normal.sneeze, skills.cost] = 0; arr_skill[normal.sneeze, skills.uses] = 5;
	arr_skill[normal.sneeze, skills.selfIndex] = 2;
	arr_skill[normal.sneeze, skills.otherIndex] = 1;
	arr_skill[normal.sneeze, skills.sound] = snd_heal;
	arr_skill[normal.sneeze, skills.text] = string(var_name) + " SNEEZES!";
	arr_skill[normal.sneeze, skills.shop] = 25;
	
	arr_skill[normal.sneeze, skills.recharge] = 3;
	
	//cookie_jar
	arr_skill[normal.cookie_jar, skills.name] = "cookie jar";
	arr_skill[normal.cookie_jar, skills.desc] = "grab a random cookie!";
	
	arr_skill[normal.cookie_jar, skills.text] = string(var_name) + " GRABS A COOKIE!";
	arr_skill[normal.cookie_jar, skills.func] = function(){
			var _cookie = irandom_range(normal.cookie_christmas, normal.ghost_cookie);
			skill(_cookie);
			arr_skill[normal.cookie_jar, skills.text] = string(var_name) + " EATS A " + string(arr_skill[_cookie, skills.name]);
		};
	arr_skill[normal.cookie_jar, skills.cost] = 0; arr_skill[normal.cookie_jar, skills.uses] = 5;
	arr_skill[normal.cookie_jar, skills.selfIndex] = 3;
	arr_skill[normal.cookie_jar, skills.otherIndex] = 0;
	arr_skill[normal.cookie_jar, skills.sound] = snd_error;
	arr_skill[normal.cookie_jar, skills.shop] = 25;
	
	arr_skill[normal.cookie_jar, skills.recharge] = 3;
	
	//christmas cookie
	arr_skill[normal.cookie_christmas, skills.name] = "christmas cookie";
	arr_skill[normal.cookie_christmas, skills.desc] = "HEALS SOME HP AND CURES FREEZE!";
	
	arr_skill[normal.cookie_christmas, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_christmas, skills.name];
	arr_skill[normal.cookie_christmas, skills.func] = function(){regen(_self, maxHp/3); _self.arr_status[status.frozen] = false};
	arr_skill[normal.cookie_christmas, skills.cost] = 0; arr_skill[normal.cookie_christmas, skills.uses] = 3;
	arr_skill[normal.cookie_christmas, skills.selfIndex] = 3;
	arr_skill[normal.cookie_christmas, skills.otherIndex] = 0;
	arr_skill[normal.cookie_christmas, skills.sound] = snd_heal;
	arr_skill[normal.cookie_christmas, skills.shop] = 25;
	
	arr_skill[normal.cookie_christmas, skills.recharge] = 3;
	
	//valentine cookie
	arr_skill[normal.cookie_valentine, skills.name] = "valentine cookie";
	arr_skill[normal.cookie_valentine, skills.desc] = "HEALS SOME HP AND GIVES YOU REGENERATION";
	
	arr_skill[normal.cookie_valentine, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_valentine, skills.name];
	arr_skill[normal.cookie_valentine, skills.func] = function(){regen(_self, maxHp/3); _self.arr_status[status.regeneration] = true; _self.regenCountdown = 3};
	arr_skill[normal.cookie_valentine, skills.cost] = 0; arr_skill[normal.cookie_valentine, skills.uses] = 3;
	arr_skill[normal.cookie_valentine, skills.selfIndex] = 3;
	arr_skill[normal.cookie_valentine, skills.otherIndex] = 0;
	arr_skill[normal.cookie_valentine, skills.sound] = snd_heal;
	arr_skill[normal.cookie_valentine, skills.shop] = 25;
	
	arr_skill[normal.cookie_valentine, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_spicy, skills.name] = "spicy cookie";
	arr_skill[normal.cookie_spicy, skills.desc] = "HEALS SOME HP, might make the enemy explode";
	
	arr_skill[normal.cookie_spicy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_spicy, skills.name];
	arr_skill[normal.cookie_spicy, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){with(_other){skill(normal.explode)}}};
	arr_skill[normal.cookie_spicy, skills.cost] = 0; arr_skill[normal.cookie_spicy, skills.uses] = 3;
	arr_skill[normal.cookie_spicy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_spicy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_spicy, skills.sound] = snd_heal;
	arr_skill[normal.cookie_spicy, skills.shop] = 25;
	
	arr_skill[normal.cookie_spicy, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_glass, skills.name] = "glass cookie";
	arr_skill[normal.cookie_glass, skills.desc] = "EVERYONE GETS HURT! +DMG FOR THE REST OF THE BATTLE";
	
	arr_skill[normal.cookie_glass, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_glass, skills.name];
	arr_skill[normal.cookie_glass, skills.func] = function(){_self.hp -= dmgCalc(_self, _self, 20); attack(20); };
	arr_skill[normal.cookie_glass, skills.cost] = 0; arr_skill[normal.cookie_glass, skills.uses] = 3;
	arr_skill[normal.cookie_glass, skills.selfIndex] = 3;
	arr_skill[normal.cookie_glass, skills.otherIndex] = 0;
	arr_skill[normal.cookie_glass, skills.sound] = snd_heal;
	arr_skill[normal.cookie_glass, skills.shop] = 25;
	
	arr_skill[normal.cookie_glass, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_skeleton, skills.name] = "skeleton cookie";
	arr_skill[normal.cookie_skeleton, skills.desc] = "HEALS SOME HP, WITH A CHANCE TO DISENGAGE!";
	
	arr_skill[normal.cookie_skeleton, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_skeleton, skills.name];
	arr_skill[normal.cookie_skeleton, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){_self.arr_status[status.disengaged] = true; _self.disengaged = 2}};
	arr_skill[normal.cookie_skeleton, skills.cost] = 0; arr_skill[normal.cookie_skeleton, skills.uses] = 3;
	arr_skill[normal.cookie_skeleton, skills.selfIndex] = 3;
	arr_skill[normal.cookie_skeleton, skills.otherIndex] = 0;
	arr_skill[normal.cookie_skeleton, skills.sound] = snd_heal;
	arr_skill[normal.cookie_skeleton, skills.shop] = 25;
	
	arr_skill[normal.cookie_skeleton, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie, skills.name] = "cookie";
	arr_skill[normal.cookie, skills.desc] = "HEALS SOME HP";
	
	arr_skill[normal.cookie, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie, skills.name];
	arr_skill[normal.cookie, skills.func] = function(){regen(_self, maxHp/3);};
	arr_skill[normal.cookie, skills.cost] = 0; arr_skill[normal.cookie, skills.uses] = 3;
	arr_skill[normal.cookie, skills.selfIndex] = 3;
	arr_skill[normal.cookie, skills.otherIndex] = 0;
	arr_skill[normal.cookie, skills.sound] = snd_heal;
	arr_skill[normal.cookie, skills.shop] = 25;
	
	arr_skill[normal.cookie, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_burger, skills.name] = "burger cookie";
	arr_skill[normal.cookie_burger, skills.desc] = "HEALS SOME HP, CHANCE TO BURGIFY THE ENEMY";
	
	arr_skill[normal.cookie_burger, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_burger, skills.name];
	arr_skill[normal.cookie_burger, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){skill(normal.burgify)}};
	arr_skill[normal.cookie_burger, skills.cost] = 0; arr_skill[normal.cookie_burger, skills.uses] = 3;
	arr_skill[normal.cookie_burger, skills.selfIndex] = 3;
	arr_skill[normal.cookie_burger, skills.otherIndex] = 0;
	arr_skill[normal.cookie_burger, skills.sound] = snd_heal;
	arr_skill[normal.cookie_burger, skills.shop] = 25;
	
	arr_skill[normal.cookie_burger, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_burnt, skills.name] = "BURNT cookie";
	arr_skill[normal.cookie_burnt, skills.desc] = "HEALS SOME HP, MAY BURN THE ENEMY!";
	
	arr_skill[normal.cookie_burnt, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_burnt, skills.name];
	arr_skill[normal.cookie_burnt, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){_other.arr_status[status.burnt] = true}};
	arr_skill[normal.cookie_burnt, skills.cost] = 0; arr_skill[normal.cookie_burnt, skills.uses] = 3;
	arr_skill[normal.cookie_burnt, skills.selfIndex] = 3;
	arr_skill[normal.cookie_burnt, skills.otherIndex] = 0;
	arr_skill[normal.cookie_burnt, skills.sound] = snd_heal;
	arr_skill[normal.cookie_burnt, skills.shop] = 25;
	
	arr_skill[normal.cookie_burnt, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_cheap, skills.name] = "CHEAP cookie";
	arr_skill[normal.cookie_cheap, skills.desc] = "HEALS SOME HP, CHANCE TO HEAL A BIT LESS INSTEAD";
	
	arr_skill[normal.cookie_cheap, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_cheap, skills.name];
	arr_skill[normal.cookie_cheap, skills.func] = function(){regen(_self, choose(maxHp/3, maxHp/5));};
	arr_skill[normal.cookie_cheap, skills.cost] = 0; arr_skill[normal.cookie_cheap, skills.uses] = 3;
	arr_skill[normal.cookie_cheap, skills.selfIndex] = 3;
	arr_skill[normal.cookie_cheap, skills.otherIndex] = 0;
	arr_skill[normal.cookie_cheap, skills.sound] = snd_heal;
	arr_skill[normal.cookie_cheap, skills.shop] = 25;
	
	arr_skill[normal.cookie_cheap, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_dog, skills.name] = "dog cookie";
	arr_skill[normal.cookie_dog, skills.desc] = "HEALS SOME HP... OR NOT!";
	
	arr_skill[normal.cookie_dog, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_dog, skills.name];
	arr_skill[normal.cookie_dog, skills.func] = function(){var ii = choose(1, 2); if(ii = 1){regen(_self, maxHp/3)}; else{ attack(10); _self.hp -= dmgCalc(_self, _self, 10)}};
	arr_skill[normal.cookie_dog, skills.cost] = 0; arr_skill[normal.cookie_dog, skills.uses] = 3;
	arr_skill[normal.cookie_dog, skills.selfIndex] = 3;
	arr_skill[normal.cookie_dog, skills.otherIndex] = 0;
	arr_skill[normal.cookie_dog, skills.sound] = snd_bark;
	arr_skill[normal.cookie_dog, skills.shop] = 25;
	
	arr_skill[normal.cookie_dog, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_electric, skills.name] = "electric cookie";
	arr_skill[normal.cookie_electric, skills.desc] = "HEALS SOME HP, chance to electrocute self ";
	
	arr_skill[normal.cookie_electric, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cookie_electric, skills.name];
	arr_skill[normal.cookie_electric, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){_self.arr_status[status.electrocuted] = true; _self.electrocuted = 3}};
	arr_skill[normal.cookie_electric, skills.cost] = 0; arr_skill[normal.cookie_electric, skills.uses] = 3;
	arr_skill[normal.cookie_electric, skills.selfIndex] = 3;
	arr_skill[normal.cookie_electric, skills.otherIndex] = 0;
	arr_skill[normal.cookie_electric, skills.sound] = snd_heal;
	arr_skill[normal.cookie_electric, skills.shop] = 25;
	
	arr_skill[normal.cookie_electric, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_frozen, skills.name] = "frozen cookie";
	arr_skill[normal.cookie_frozen, skills.desc] = "HEALS SOME HP, may freeze you";
	
	arr_skill[normal.cookie_frozen, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_frozen, skills.name];
	arr_skill[normal.cookie_frozen, skills.func] = function(){regen(_self, maxHp/3); var ii= choose(1, 2); if(ii = 1){_self.frozenCountdown = 2; _self.arr_status[status.frozen] = true}};
	arr_skill[normal.cookie_frozen, skills.cost] = 0; arr_skill[normal.cookie_frozen, skills.uses] = 3;
	arr_skill[normal.cookie_frozen, skills.selfIndex] = 3;
	arr_skill[normal.cookie_frozen, skills.otherIndex] = 0;
	arr_skill[normal.cookie_frozen, skills.sound] = snd_heal;
	arr_skill[normal.cookie_frozen, skills.shop] = 25;
	
	arr_skill[normal.cookie_frozen, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_bitter, skills.name] = "bitter cookie";
	arr_skill[normal.cookie_bitter, skills.desc] = "HEALS SOME HP, CHANCE TO MAKE YOU BITTER";
	
	arr_skill[normal.cookie_bitter, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_bitter, skills.name];
	arr_skill[normal.cookie_bitter, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){_self.arr_status[status.bitter] = true}};
	arr_skill[normal.cookie_bitter, skills.cost] = 0; arr_skill[normal.cookie_bitter, skills.uses] = 3;
	arr_skill[normal.cookie_bitter, skills.selfIndex] = 3;
	arr_skill[normal.cookie_bitter, skills.otherIndex] = 0;
	arr_skill[normal.cookie_bitter, skills.sound] = snd_heal;
	arr_skill[normal.cookie_bitter, skills.shop] = 25;
	
	arr_skill[normal.cookie_bitter, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_mossy, skills.name] = "mossy cookie";
	arr_skill[normal.cookie_mossy, skills.desc] = "HEALS SOME HP, chance to shroom you";
	
	arr_skill[normal.cookie_mossy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_mossy, skills.name];
	arr_skill[normal.cookie_mossy, skills.func] = function(){var ii = choose(1, 2); if(ii = 1){_self.arr_status[status.shroomed] = true}; regen(_self, maxHp/3)};
	arr_skill[normal.cookie_mossy, skills.cost] = 0; arr_skill[normal.cookie_mossy, skills.uses] = 3;
	arr_skill[normal.cookie_mossy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_mossy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_mossy, skills.sound] = snd_heal;
	arr_skill[normal.cookie_mossy, skills.shop] = 25;
	
	arr_skill[normal.cookie_mossy, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_phishy, skills.name] = "phishy cookie";
	arr_skill[normal.cookie_phishy, skills.desc] = "HEALS SOME HP, CHANCE TO STEAL YOUR MONEY";
	
	arr_skill[normal.cookie_phishy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_phishy, skills.name];
	arr_skill[normal.cookie_phishy, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2)if(ii = 1){global.money -=5}};
	arr_skill[normal.cookie_phishy, skills.cost] = 0; arr_skill[normal.cookie_phishy, skills.uses] = 3;
	arr_skill[normal.cookie_phishy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_phishy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_phishy, skills.sound] = snd_heal;
	arr_skill[normal.cookie_phishy, skills.shop] = 25;
	
	arr_skill[normal.cookie_phishy, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_thrashy, skills.name] = "trashy cookie";
	arr_skill[normal.cookie_thrashy, skills.desc] = "HEALS SOME HP, chance to rot";
	
	arr_skill[normal.cookie_thrashy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_thrashy, skills.name];
	arr_skill[normal.cookie_thrashy, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){_self.arr_status[status.rotten] = true}};
	arr_skill[normal.cookie_thrashy, skills.cost] = 0; arr_skill[normal.cookie_thrashy, skills.uses] = 3;
	arr_skill[normal.cookie_thrashy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_thrashy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_thrashy, skills.sound] = snd_heal;
	arr_skill[normal.cookie_thrashy, skills.shop] = 25;
	
	arr_skill[normal.cookie_thrashy, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_void, skills.name] = "void cookie";
	arr_skill[normal.cookie_void, skills.desc] = "HEALS SOME HP, AND MAYBE STATUS EFFECTS";
	
	arr_skill[normal.cookie_void, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_void, skills.name];
	arr_skill[normal.cookie_void, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){for(i=0; i <= 10; i++){_self.arr_status[i]= false}}};
	arr_skill[normal.cookie_void, skills.cost] = 0; arr_skill[normal.cookie_void, skills.uses] = 3;
	arr_skill[normal.cookie_void, skills.selfIndex] = 3;
	arr_skill[normal.cookie_void, skills.otherIndex] = 0;
	arr_skill[normal.cookie_void, skills.sound] = snd_heal;
	arr_skill[normal.cookie_void, skills.shop] = 25;
	
	arr_skill[normal.cookie_void, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_lucky, skills.name] = "lucky cookie";
	arr_skill[normal.cookie_lucky, skills.desc] = "HEALS SOME HP, MAYBE EVEN MORE!";
	
	arr_skill[normal.cookie_lucky, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_lucky, skills.name];
	arr_skill[normal.cookie_lucky, skills.func] = function(){regen(_self, choose(maxHp/3, maxHp*0.70))};
	arr_skill[normal.cookie_lucky, skills.cost] = 0; arr_skill[normal.cookie_lucky, skills.uses] = 3;
	arr_skill[normal.cookie_lucky, skills.selfIndex] = 3;
	arr_skill[normal.cookie_lucky, skills.otherIndex] = 0;
	arr_skill[normal.cookie_lucky, skills.sound] = snd_heal;
	arr_skill[normal.cookie_lucky, skills.shop] = 25;
	
	arr_skill[normal.cookie_lucky, skills.recharge] = 3;
	
	//cookie
	arr_skill[normal.cookie_easter, skills.name] = "easter cookie";
	arr_skill[normal.cookie_easter, skills.desc] = "HEALS SOME HP ( FESTIVELY )";
	
	arr_skill[normal.cookie_easter, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cookie_easter, skills.name];
	arr_skill[normal.cookie_easter, skills.func] = function(){regen(_self, maxHp/3)};
	arr_skill[normal.cookie_easter, skills.cost] = 0; arr_skill[normal.cookie_easter, skills.uses] = 3;
	arr_skill[normal.cookie_easter, skills.selfIndex] = 3;
	arr_skill[normal.cookie_easter, skills.otherIndex] = 0;
	arr_skill[normal.cookie_easter, skills.sound] = snd_heal;
	arr_skill[normal.cookie_easter, skills.shop] = 25;
	
	arr_skill[normal.cookie_easter, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_pocket, skills.name] = "pocket rat";
	arr_skill[normal.rat_pocket, skills.desc] = "steals an enemy skill that you can keep!";

	arr_skill[normal.rat_pocket, skills.text] = string(var_name) + " STEALS ";
	arr_skill[normal.rat_pocket, skills.func] = function(){
		var _hasSkill = false;
			
		for(i=0; i < 4; i++) //Check if the enemy has skills
		{
			if(_other.st_skills[i] != -1)
			{
				_hasSkill = true;
			};
		};
			
		if(_hasSkill) //If they do, steal it!
		{
			var _ski = choose(0, 1, 2, 3);
			
			while(_other.st_skills[_ski] = -1)
			{
				_ski = choose(0, 1, 2, 3)
			};
			
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rat_pocket)
				{
					st_skills[i] = _other.st_skills[_ski];
					st_skillUses[i] = arr_skill[_ski, skills.uses];
					break;
				};
				
				arr_skill[normal.rat_pocket, skills.text] = string(var_name) + " STEALS " + arr_skill[_other.st_skills[_ski], skills.name];
			};
		};
		else
		{
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rat_pocket)
				{
					var _ski = irandom_range(normal.rat_bomb, normal.rat_cookie);
					st_skills[i] = _ski;
					st_skillUses[i] = arr_skill[_ski, skills.uses];
					break;
				};
				
				arr_skill[normal.rat_pocket, skills.text] = "NO SKILLS TO STEAL! " + string(var_name) + " GETS A RAT INSTEAD!";
			};
		};	
	};
	arr_skill[normal.rat_pocket, skills.cost] = 0; arr_skill[normal.rat_pocket, skills.uses] = -1;
	arr_skill[normal.rat_pocket, skills.selfIndex] = 3;
	arr_skill[normal.rat_pocket, skills.otherIndex] = 0;
	arr_skill[normal.rat_pocket, skills.sound] = snd_heal;
	arr_skill[normal.rat_pocket, skills.shop] = 35;
	
	arr_skill[normal.rat_bomb, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_bomb, skills.name] = "rat bomb";
	arr_skill[normal.rat_bomb, skills.desc] = "x3 damage to the enemy";
	
	arr_skill[normal.rat_bomb, skills.text] = string(var_name) + " TOSSES A RAT BOMB!";
	arr_skill[normal.rat_bomb, skills.func] = function(){attack(st_damage*3)};
	arr_skill[normal.rat_bomb, skills.cost] = 0; arr_skill[normal.rat_bomb, skills.uses] = 2;
	arr_skill[normal.rat_bomb, skills.selfIndex] = 2;
	arr_skill[normal.rat_bomb, skills.otherIndex] = 1;
	arr_skill[normal.rat_bomb, skills.sound] = snd_explosion;
	arr_skill[normal.rat_bomb, skills.shop] = 50;
	
	arr_skill[normal.rat_bomb, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_spooky, skills.name] = "spooky rat";
	arr_skill[normal.rat_spooky, skills.desc] = "damages and spooks the enemy!";
	
	arr_skill[normal.rat_spooky, skills.text] = string(var_name) + " TOSSES A " + arr_skill[normal.rat_spooky, skills.name];
	arr_skill[normal.rat_spooky, skills.func] = function(){attack(st_damage); _other.arr_status[status.spooked]  = true};
	arr_skill[normal.rat_spooky, skills.cost] = 0; arr_skill[normal.rat_spooky, skills.uses] = 2;
	arr_skill[normal.rat_spooky, skills.selfIndex] = 2;
	arr_skill[normal.rat_spooky, skills.otherIndex] = 1;
	arr_skill[normal.rat_spooky, skills.sound] = snd_hit;
	arr_skill[normal.rat_spooky, skills.shop] = 25;
	
	arr_skill[normal.rat_spooky, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_bitter, skills.name] = "bitter rat";
	arr_skill[normal.rat_bitter, skills.desc] = "damages and bitters the enemy!";
	
	arr_skill[normal.rat_bitter, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_bitter, skills.name];
	arr_skill[normal.rat_bitter, skills.func] = function(){attack(st_damage); _other.arr_status[status.bitter]  = true};
	arr_skill[normal.rat_bitter, skills.cost] = 0; arr_skill[normal.rat_bitter, skills.uses] = 3;
	arr_skill[normal.rat_bitter, skills.selfIndex] = 2;
	arr_skill[normal.rat_bitter, skills.otherIndex] = 1;
	arr_skill[normal.rat_bitter, skills.sound] = snd_hit;
	arr_skill[normal.rat_bitter, skills.shop] = 25;
	
	arr_skill[normal.rat_bitter, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_electro, skills.name] = "electric rat";
	arr_skill[normal.rat_electro, skills.desc] = "damages and electrocutes the enemy!";
	
	arr_skill[normal.rat_electro, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_electro, skills.name];
	arr_skill[normal.rat_electro, skills.func] = function(){attack(st_damage); _other.arr_status[status.electrocuted] = true; _other.electrocuted = 3};
	arr_skill[normal.rat_electro, skills.cost] = 0; arr_skill[normal.rat_electro, skills.uses] = 2;
	arr_skill[normal.rat_electro, skills.selfIndex] = 2;
	arr_skill[normal.rat_electro, skills.otherIndex] = 1;
	arr_skill[normal.rat_electro, skills.sound] = snd_hit;
	arr_skill[normal.rat_electro, skills.shop] = 25;
	
	arr_skill[normal.rat_electro, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_e, skills.name] = "e-rat";
	arr_skill[normal.rat_e, skills.desc] = "damages and connects the enemy!";
	
	arr_skill[normal.rat_e, skills.text] = string(var_name) + " tosses an " + arr_skill[normal.rat_e, skills.name];
	arr_skill[normal.rat_e, skills.func] = function(){attack(st_damage); _other.arr_status[status.connected] = true; _other.connectedCountdown = 3};
	arr_skill[normal.rat_e, skills.cost] = 0; arr_skill[normal.rat_e, skills.uses] = 3;
	arr_skill[normal.rat_e, skills.selfIndex] = 2;
	arr_skill[normal.rat_e, skills.otherIndex] = 1;
	arr_skill[normal.rat_e, skills.sound] = snd_hit;
	arr_skill[normal.rat_e, skills.shop] = 25;
	
	arr_skill[normal.rat_e, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_mossy, skills.name] = "mossy rat";
	arr_skill[normal.rat_mossy, skills.desc] = "damages and shrooms the enemy!";
	
	arr_skill[normal.rat_mossy, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_mossy, skills.name];
	arr_skill[normal.rat_mossy, skills.func] = function(){attack(st_damage); _other.arr_status[status.shroomed] = true};
	arr_skill[normal.rat_mossy, skills.cost] = 0; arr_skill[normal.rat_mossy, skills.uses] = 3;
	arr_skill[normal.rat_mossy, skills.selfIndex] = 2;
	arr_skill[normal.rat_mossy, skills.otherIndex] = 1;
	arr_skill[normal.rat_mossy, skills.sound] = snd_hit;
	arr_skill[normal.rat_mossy, skills.shop] = 25;
	
	arr_skill[normal.rat_mossy, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_burnt, skills.name] = "burnt rat";
	arr_skill[normal.rat_burnt, skills.desc] = "damages and burns the enemy!";
	
	arr_skill[normal.rat_burnt, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_burnt, skills.name];
	arr_skill[normal.rat_burnt, skills.func] = function(){attack(st_damage); _other.arr_status[status.burnt] = true};
	arr_skill[normal.rat_burnt, skills.cost] = 0; arr_skill[normal.rat_burnt, skills.uses] = 3;
	arr_skill[normal.rat_burnt, skills.selfIndex] = 2;
	arr_skill[normal.rat_burnt, skills.otherIndex] = 1;
	arr_skill[normal.rat_burnt, skills.sound] = snd_hit;
	arr_skill[normal.rat_burnt, skills.shop] = 25;
	
	arr_skill[normal.rat_burnt, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_rabid, skills.name] = "rabid rat";
	arr_skill[normal.rat_rabid, skills.desc] = "damages and rots enemy";
	
	arr_skill[normal.rat_rabid, skills.text] = string(var_name) + " TOSSES A" + arr_skill[normal.rat_rabid, skills.name];
	arr_skill[normal.rat_rabid, skills.func] = function(){attack(st_damage); _other.arr_status[status.rotten] = true};
	arr_skill[normal.rat_rabid, skills.cost] = 0; arr_skill[normal.rat_rabid, skills.uses] = 3;
	arr_skill[normal.rat_rabid, skills.selfIndex] = 2;
	arr_skill[normal.rat_rabid, skills.otherIndex] = 1;
	arr_skill[normal.rat_rabid, skills.sound] = snd_hit;
	arr_skill[normal.rat_rabid, skills.shop] = 25;
	
	arr_skill[normal.rat_rabid, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_iced, skills.name] = "iced rat";
	arr_skill[normal.rat_iced, skills.desc] = "damages and freezes the enemy!";
	
	arr_skill[normal.rat_iced, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.rat_iced, skills.name];
	arr_skill[normal.rat_iced, skills.func] = function(){attack(st_damage); _other.frozenCountdown = 2; _other.arr_status[status.frozen] = true};
	arr_skill[normal.rat_iced, skills.cost] = 0; arr_skill[normal.rat_iced, skills.uses] = 3;
	arr_skill[normal.rat_iced, skills.selfIndex] = 3;
	arr_skill[normal.rat_iced, skills.otherIndex] = 0;
	arr_skill[normal.rat_iced, skills.sound] = snd_hit;
	arr_skill[normal.rat_iced, skills.shop] = 25;
	
	arr_skill[normal.rat_iced, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_nurse, skills.name] = "rat nurse";
	arr_skill[normal.rat_nurse, skills.desc] = "HEALS SOME HP, REMOVES STATUS EFFECTS!";
	
	arr_skill[normal.rat_nurse, skills.text] = string(var_name) + " RECIEVES MEDICAL AID"
	arr_skill[normal.rat_nurse, skills.func] = function(){regen(_self, maxHp/3)};
	arr_skill[normal.rat_nurse, skills.cost] = 0; arr_skill[normal.rat_nurse, skills.uses] = 3;
	arr_skill[normal.rat_nurse, skills.selfIndex] = 3;
	arr_skill[normal.rat_nurse, skills.otherIndex] = 0;
	arr_skill[normal.rat_nurse, skills.sound] = snd_heal;
	arr_skill[normal.rat_nurse, skills.shop] = 25;
	
	arr_skill[normal.rat_nurse, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_gym, skills.name] = "gym rat";
	arr_skill[normal.rat_gym, skills.desc] = "ENCOURAGES YOU TO RAISE YOUR DEFENSE!";
	
	arr_skill[normal.rat_gym, skills.text] = string(var_name) + "RAISES HIS DEFENSE!"
	arr_skill[normal.rat_gym, skills.func] = function(){_self.tempDef += 20};
	arr_skill[normal.rat_gym, skills.cost] = 0; arr_skill[normal.rat_gym, skills.uses] = 3;
	arr_skill[normal.rat_gym, skills.selfIndex] = 3;
	arr_skill[normal.rat_gym, skills.otherIndex] = 0;
	arr_skill[normal.rat_gym, skills.sound] = snd_defenseUp;
	arr_skill[normal.rat_gym, skills.shop] = 25;
	
	arr_skill[normal.rat_gym, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_angry, skills.name] = "violent rat";
	arr_skill[normal.rat_angry, skills.desc] = "ENCOURAGES YOU TO RAISE YOUR DAMAGE!";
	
	arr_skill[normal.rat_angry, skills.text] = string(var_name) + " RAISES HIS DAMAGE!"
	arr_skill[normal.rat_angry, skills.func] = function(){_self.tempDmg += 5};
	arr_skill[normal.rat_angry, skills.cost] = 0; arr_skill[normal.rat_angry, skills.uses] = 3;
	arr_skill[normal.rat_angry, skills.selfIndex] = 2;
	arr_skill[normal.rat_angry, skills.otherIndex] = 1;
	arr_skill[normal.rat_angry, skills.sound] = snd_defenseUp;
	arr_skill[normal.rat_angry, skills.shop] = 25;
	
	arr_skill[normal.rat_angry, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_jester, skills.name] = "jester rat";
	arr_skill[normal.rat_jester, skills.desc] = "ENTERTAINS THE ENEMY, LOWERING THEIR DEFENSE!";
	
	arr_skill[normal.rat_jester, skills.text] = string(var_name) + " ENTERTAINS THE ENEMY!"
	arr_skill[normal.rat_jester, skills.func] = function(){_other.tempDef -= 30};
	arr_skill[normal.rat_jester, skills.cost] = 0; arr_skill[normal.rat_jester, skills.uses] = 3;
	arr_skill[normal.rat_jester, skills.selfIndex] = 0;
	arr_skill[normal.rat_jester, skills.otherIndex] = 3;
	arr_skill[normal.rat_jester, skills.sound] = snd_defenseDown;
	arr_skill[normal.rat_jester, skills.shop] = 25;
	
	arr_skill[normal.rat_jester, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_bad, skills.name] = "bad rat";
	arr_skill[normal.rat_bad, skills.desc] = "THREATENS THE ENEMY TO LOWER THEIR DAMAGE!";
	
	arr_skill[normal.rat_bad, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_bad, skills.name];
	arr_skill[normal.rat_bad, skills.func] = function(){_other.tempDmg -= 5};
	arr_skill[normal.rat_bad, skills.cost] = 0; arr_skill[normal.rat_bad, skills.uses] = 3;
	arr_skill[normal.rat_bad, skills.selfIndex] = 3;
	arr_skill[normal.rat_bad, skills.otherIndex] = 0;
	arr_skill[normal.rat_bad, skills.sound] = snd_defenseDown;
	arr_skill[normal.rat_bad, skills.shop] = 25;
	
	arr_skill[normal.rat_bad, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_kamikaze, skills.name] = "kamikaze rat";
	arr_skill[normal.rat_kamikaze, skills.desc] = "makes the enemy explode!";
	
	arr_skill[normal.rat_kamikaze, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_kamikaze, skills.name];
	arr_skill[normal.rat_kamikaze, skills.func] = function(){with(_other){skill(normal.explode)}};
	arr_skill[normal.rat_kamikaze, skills.cost] = 0; arr_skill[normal.rat_kamikaze, skills.uses] = 1;
	arr_skill[normal.rat_kamikaze, skills.selfIndex] = 2;
	arr_skill[normal.rat_kamikaze, skills.otherIndex] = 1;
	arr_skill[normal.rat_kamikaze, skills.sound] = snd_hit;
	arr_skill[normal.rat_kamikaze, skills.shop] = 50;
	
	arr_skill[normal.rat_kamikaze, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_miniKing, skills.name] = "mini king";
	arr_skill[normal.rat_miniKing, skills.desc] = "REPLACES ALL YOUR SKILLS WITH RAT RELATED ONES";
	
	arr_skill[normal.rat_miniKing, skills.text] = string(var_name) + " GETS AN UPGRADED SKILLSET!"
	arr_skill[normal.rat_miniKing, skills.func] = function(){for(i=0; i<4; i++){st_skills[i]= irandom_range(normal.rat_pocket, normal.rat_ratuary)}};
	arr_skill[normal.rat_miniKing, skills.cost] = 0; arr_skill[normal.rat_miniKing, skills.uses] = -1;
	arr_skill[normal.rat_miniKing, skills.selfIndex] = 3;
	arr_skill[normal.rat_miniKing, skills.otherIndex] = 0;
	arr_skill[normal.rat_miniKing, skills.sound] = snd_heal;
	arr_skill[normal.rat_miniKing, skills.shop] = 50;
	
	arr_skill[normal.rat_miniKing, skills.recharge] = 7;
	
	//rat
	arr_skill[normal.rat_cookie, skills.name] = "cookie rat";
	arr_skill[normal.rat_cookie, skills.desc] = "BRINGS A COOKIE!";
	
	arr_skill[normal.rat_cookie, skills.text] = string(var_name) + " RECIEVES A COOKIE!"
	arr_skill[normal.rat_cookie, skills.func] = function(){for(i=0; i<4; i++){if(st_skills[i] = normal.rat_cookie){var _cookie = irandom_range(normal.cookie_christmas, normal.ghost_cookie); st_skills[i] = _cookie; st_skillUses[i] = arr_skill[_cookie, skills.uses]}}};
	arr_skill[normal.rat_cookie, skills.cost] = 0; arr_skill[normal.rat_cookie, skills.uses] = -1;
	arr_skill[normal.rat_cookie, skills.selfIndex] = 3;
	arr_skill[normal.rat_cookie, skills.otherIndex] = 0;
	arr_skill[normal.rat_cookie, skills.sound] = snd_heal;
	arr_skill[normal.rat_cookie, skills.shop] = 25;
	
	arr_skill[normal.rat_cookie, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_horn, skills.name] = "RAT HORN";
	arr_skill[normal.rat_horn, skills.desc] = "HONK HONK ( CHEESY )";
	
	arr_skill[normal.rat_horn, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.rat_horn, skills.name];
	arr_skill[normal.rat_horn, skills.func] = function(){};
	arr_skill[normal.rat_horn, skills.cost] = 0; arr_skill[normal.rat_horn, skills.uses] = -1;
	arr_skill[normal.rat_horn, skills.selfIndex] = 3;
	arr_skill[normal.rat_horn, skills.otherIndex] = 3;
	arr_skill[normal.rat_horn, skills.sound] = snd_honk;
	arr_skill[normal.rat_horn, skills.shop] = 25;
	
	arr_skill[normal.rat_horn, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_ratify, skills.name] = "ratify";
	arr_skill[normal.rat_ratify, skills.desc] = "TURNS THE ENEMY INTO A LOVELY RAT";
	
	arr_skill[normal.rat_ratify, skills.text] = string(var_name) + " TURNS THE ENEMY INTO A RAT!"
	arr_skill[normal.rat_ratify, skills.func] = function(){with(_other){initializeEnemy(enemy.rat)}};
	arr_skill[normal.rat_ratify, skills.cost] = 0; arr_skill[normal.rat_ratify, skills.uses] = 1;
	arr_skill[normal.rat_ratify, skills.selfIndex] = 0;
	arr_skill[normal.rat_ratify, skills.otherIndex] = 1;
	arr_skill[normal.rat_ratify, skills.sound] = snd_heal;
	arr_skill[normal.rat_ratify, skills.shop] = 50;
	
	arr_skill[normal.rat_ratify, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.rat_ratuary, skills.name] = "ratuary";
	arr_skill[normal.rat_ratuary, skills.desc] = "use a random rat skill!";
	
	arr_skill[normal.rat_ratuary, skills.text] = string(var_name) + " uses the RATUARY"
	arr_skill[normal.rat_ratuary, skills.func] = function(){
		var _ski = irandom_range(normal.rat_pocket, normal.rat_horn)
		skill(_ski)
		
		arr_skill[normal.rat_ratuary, skills.text] = "THE RATUARY ACTIVATED " + arr_skill[_ski, skills.name]
	};
	arr_skill[normal.rat_ratuary, skills.cost] = 0; arr_skill[normal.rat_ratuary, skills.uses] = 5;
	arr_skill[normal.rat_ratuary, skills.selfIndex] = 3;
	arr_skill[normal.rat_ratuary, skills.otherIndex] = 0;
	arr_skill[normal.rat_ratuary, skills.sound] = snd_heal;
	arr_skill[normal.rat_ratuary, skills.shop] = 50;
	
	arr_skill[normal.rat_ratuary, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.cheese_expensive, skills.name] = "EXPENSIVE CHEESE";
	arr_skill[normal.cheese_expensive, skills.desc] = "HEALS ALL HP!";
	
	arr_skill[normal.cheese_expensive, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cheese_expensive, skills.name];
	arr_skill[normal.cheese_expensive, skills.func] = function(){regen(_self, maxHp)};
	arr_skill[normal.cheese_expensive, skills.cost] = 1; arr_skill[normal.cheese_expensive, skills.uses] = 1;
	arr_skill[normal.cheese_expensive, skills.selfIndex] = 3;
	arr_skill[normal.cheese_expensive, skills.otherIndex] = 0;
	arr_skill[normal.cheese_expensive, skills.sound] = snd_heal;
	arr_skill[normal.cheese_expensive, skills.shop] = 25;
	
	arr_skill[normal.cheese_expensive, skills.recharge] = 3;
	
	//rat
	arr_skill[normal.cheese_liquid, skills.name] = "liquid cheese";
	arr_skill[normal.cheese_liquid, skills.desc] = "HEALS SOME HP, MAKES YOU TIPSY!";
	
	arr_skill[normal.cheese_liquid, skills.text] = string(var_name) + " DRINKS SOME " + arr_skill[normal.cheese_liquid, skills.name];
	arr_skill[normal.cheese_liquid, skills.func] = function(){regen(_self, maxHp *.70); _self.arr_status[status.tipsy] = true};
	arr_skill[normal.cheese_liquid, skills.cost] = 0; arr_skill[normal.cheese_liquid, skills.uses] = 3;
	arr_skill[normal.cheese_liquid, skills.selfIndex] = 3;
	arr_skill[normal.cheese_liquid, skills.otherIndex] = 0;
	arr_skill[normal.cheese_liquid, skills.sound] = snd_heal;
	arr_skill[normal.cheese_liquid, skills.shop] = 25;
	
	arr_skill[normal.cheese_liquid, skills.recharge] = 3;
	
	//os
	arr_skill[normal.os, skills.name] = "OS";
	arr_skill[normal.os, skills.desc] = "WORKS POORLY!";
	
	arr_skill[normal.os, skills.text] = string(var_name) + " HACKS THE OS!"
	arr_skill[normal.os, skills.func] = function(){
			if(global.michaelMode < 2){global.michaelMode++}
			else{global.michaelMode = -1};
		};
	arr_skill[normal.os, skills.cost] = 0; arr_skill[normal.os, skills.uses] = -1;
	arr_skill[normal.os, skills.selfIndex] = 3;
	arr_skill[normal.os, skills.otherIndex] = 1;
	arr_skill[normal.os, skills.sound] = snd_heal;
	arr_skill[normal.os, skills.shop] = 25;
	
	arr_skill[normal.os, skills.recharge] = 1;
	
	//GLITCH
	arr_skill[normal.glitch, skills.name] = " ";
	arr_skill[normal.glitch, skills.desc] = "? A A11QWE JKFJLQ NO";
	
	arr_skill[normal.glitch, skills.text] = string(var_name) + " PULLED A ";
	arr_skill[normal.glitch, skills.func] = function(){
			var _choice = irandom_range(normal.nap, normal.os)
			while((_choice = normal.swap) or (_choice = normal.explode))
			{
				_choice = irandom_range(normal.nap, normal.os)
			};
			skill(_choice)
			
			arr_skill[normal.glitch, skills.text] = string(var_name) + " SELECTED " + string(arr_skill[_choice, skills.name]);
		};	
	arr_skill[normal.glitch, skills.cost] = 0; arr_skill[normal.glitch, skills.uses] = -1;
	arr_skill[normal.glitch, skills.selfIndex] = 3;
	arr_skill[normal.glitch, skills.otherIndex] = 1;
	arr_skill[normal.glitch, skills.sound] = snd_select;
	arr_skill[normal.glitch, skills.shop] = 25;
	
	arr_skill[normal.glitch, skills.recharge] = 5;
};
	
function phishPrices()
{
	arr_price[normal.nap] = 5;
	arr_price[normal.napLong] = 10;
	arr_price[normal.drain] = 15;
	arr_price[normal.distract] = 5;
	arr_price[normal.confuse] = 10;
	arr_price[normal.resist] = 5;
	arr_price[normal.armor] = 10;
	arr_price[normal.punch] = 15;
	arr_price[normal.bite] = 20;
	arr_price[normal.cheese] = 15;
	arr_price[normal.explode] = 5;
	arr_price[normal.wait] = 10;
	arr_price[normal.heal] = 5;
	arr_price[normal.shoot] = 5;
	arr_price[normal.triangle] = 5;
	arr_price[normal.honk] = 5;
	arr_price[normal.steal] = 15;
	arr_price[normal.bark] = 5;
	arr_price[normal.bitter] = 10;
	arr_price[normal.lemonade] = 10;
	arr_price[normal.shroom] = 10;
	arr_price[normal.scare] = 10;
	arr_price[normal.lemon_toss] = 10;
	arr_price[normal.fireball] = 10;
	arr_price[normal.dissipate] = 15;
	arr_price[normal.disengage] = 15;
	arr_price[normal.rat_flute] = 5;
	arr_price[normal.lick] = 15;
	arr_price[normal.smile] = 5;
	arr_price[normal.pretend] = 15;
	arr_price[normal.honk2] = 5;
	arr_price[normal.juggle] = 10;
	arr_price[normal.rush] = 10;
	arr_price[normal.jewel_toss] = 10;
	arr_price[normal.lemonade_seedy] = 10;
	arr_price[normal.lemonade_plus] = 10;
	arr_price[normal.lemonade_rotten] = 15;
	arr_price[normal.lemonade_bitter] = 15;
	arr_price[normal.crown] = 20;
	arr_price[normal.swap] = 5;
	arr_price[normal.connect] = 10;
	arr_price[normal.phish] = 15;
	arr_price[normal.download] = 10;
	arr_price[normal.warn] = 5;
	arr_price[normal.electric] = 10;
	arr_price[normal.soul_munch] = 10;
	arr_price[normal.soul_steal] = 5;
	arr_price[normal.soul_block] = 10;
	arr_price[normal.lily_juice] = 5;
	arr_price[normal.burgify] = 20;
	arr_price[normal.rot] = 10;
	arr_price[normal.freeze] = 10;
	arr_price[normal.lifehack] = 10;
	arr_price[normal.rubbish] = 15;
	arr_price[normal.bug] = 10;
	arr_price[normal.cheese_old] = 5;
	arr_price[normal.can] = 15;
	arr_price[normal.lifeswap] = 20;
	arr_price[normal.grilled_cheese] = 30;
	arr_price[normal.milk] = 10;
	arr_price[normal.melk] = 5;
	arr_price[normal.muah] = 10;
	arr_price[normal.plunger] = 10;
	arr_price[normal.frown] = 20;
	arr_price[normal.book_red] = 10;
	arr_price[normal.book_blue] = 10;
	arr_price[normal.book_green] = 10;
	arr_price[normal.book_white] = 5;
	arr_price[normal.grape_soda] = 5;
	arr_price[normal.cigar] = 5;
	arr_price[normal.change] = 0;
	arr_price[normal.rubber_glove] = 5;
	arr_price[normal.sneeze] = 5;
	arr_price[normal.cookie_jar] = 10;
	arr_price[normal.cookie_christmas] = 3;
	arr_price[normal.cookie_valentine] = 3;
	arr_price[normal.cookie_spicy] = 3;
	arr_price[normal.cookie_glass] = 3;
	arr_price[normal.cookie_skeleton] = 3;
	arr_price[normal.cookie] = 3;
	arr_price[normal.cookie_burger] = 3;
	arr_price[normal.cookie_burnt] = 3;
	arr_price[normal.cookie_cheap] = 3;
	arr_price[normal.cookie_dog] = 3;
	arr_price[normal.cookie_electric] = 3;
	arr_price[normal.cookie_frozen] = 3;
	arr_price[normal.cookie_bitter] = 3;
	arr_price[normal.cookie_mossy] = 3;
	arr_price[normal.cookie_phishy] = 3;
	arr_price[normal.cookie_thrashy] = 3;
	arr_price[normal.cookie_void] = 3;
	arr_price[normal.cookie_lucky] = 7;
	arr_price[normal.cookie_easter] = 3;
	arr_price[normal.ghost_cookie] = 3;
	arr_price[normal.rat_pocket] = 15;
	arr_price[normal.rat_bomb] = 15;
	arr_price[normal.rat_spooky] = 15;
	arr_price[normal.rat_bitter] = 15;
	arr_price[normal.rat_electro] = 15;
	arr_price[normal.rat_e] = 15;
	arr_price[normal.rat_mossy] = 15;
	arr_price[normal.rat_burnt] = 15;
	arr_price[normal.rat_rabid] = 15;
	arr_price[normal.rat_iced] = 15;
	arr_price[normal.rat_nurse] = 10;
	arr_price[normal.rat_gym] = 10;
	arr_price[normal.rat_angry] = 10;
	arr_price[normal.rat_jester] = 10;
	arr_price[normal.rat_bad] = 10;
	arr_price[normal.rat_kamikaze] = 5;
	arr_price[normal.rat_miniKing] = 10;
	arr_price[normal.rat_cookie] = 5;
	arr_price[normal.rat_horn] = 5;
	arr_price[normal.rat_ratify] = 20;
	arr_price[normal.cheese_expensive] = 10;
	arr_price[normal.cheese_liquid] = 5;
	arr_price[normal.rat_ratuary] = 5;
	arr_price[normal.os] = 5;
	arr_price[normal.glitch] = 5;
};