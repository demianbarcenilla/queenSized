// @func initializeSkills(self, other)
function initializeSkills(_self, _other)
{ 

	//Nap - Heals 40HP
	arr_skill[normal.nap, skills.name] = "NAP";
	arr_skill[normal.nap, skills.desc] = "TAKE A QUICK NAP TO RECOVER HALF HP!";
	arr_skill[normal.nap, skills.anim] = ani_nap;
	
	arr_skill[normal.nap, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.nap, skills.cost] = 0; arr_skill[normal.nap, skills.uses] = 3;	
	arr_skill[normal.nap, skills.selfIndex] = 3;
	arr_skill[normal.nap, skills.otherIndex] = 0;
	arr_skill[normal.nap, skills.sound] = snd_heal;
	arr_skill[normal.nap, skills.text] = string(var_name) + " TOOK A NAP!";
	arr_skill[normal.nap, skills.shop] = 25;
	
	arr_skill[normal.nap, skills.recharge] = 5;
	arr_skill[normal.nap, skills.weight] = 0;
	
	arr_skill[normal.nap, skills.descPlus] = "RECOVER 1/4HP, BUT APPLIES REGENERATION";
	arr_skill[normal.nap, skills.funcPlus] = function(){regen(_self, maxHp/4); _self.arr_status[status.regeneration] = true; regenCountdown = 3};
	arr_skill[normal.nap, skills.costPlus] = 0; arr_skill[normal.nap, skills.usesPlus] = 3;
	
	//Long Nap - Heals 120HP
	arr_skill[normal.napLong, skills.name] = "LONG NAP";
	arr_skill[normal.napLong, skills.desc] = "FILL UP YOUR HP!";
	arr_skill[normal.napLong, skills.anim] = ani_napLong;
	
	arr_skill[normal.napLong, skills.func] = function(){regen(_self, maxHp)};
	arr_skill[normal.napLong, skills.cost] = 0; arr_skill[normal.napLong, skills.uses] = 1;	
	arr_skill[normal.napLong, skills.selfIndex] = 3;
	arr_skill[normal.napLong, skills.otherIndex] = 0;
	arr_skill[normal.napLong, skills.sound] = snd_heal;
	arr_skill[normal.napLong, skills.text] = string(var_name) + " TOOK A LONG NAP!";
	arr_skill[normal.napLong, skills.shop] = 50;
	
	arr_skill[normal.napLong, skills.recharge] = 8;
	arr_skill[normal.napLong, skills.weight] = 1;
	
	arr_skill[normal.napLong, skills.descPlus] = "REFILLS ALL HP, +20 TEMPDEF";
	arr_skill[normal.napLong, skills.funcPlus] = function(){_self.tempDef +=20; regen(_self, maxHp)};
	arr_skill[normal.napLong, skills.costPlus] = 0; arr_skill[normal.napLong, skills.usesPlus] = 1;
	
	//Drain - Drains the enemy
	arr_skill[normal.drain, skills.name] = "DRAIN";
	arr_skill[normal.drain, skills.desc] = "STEAL YOUR ENEMY'S HP";
	arr_skill[normal.drain, skills.anim] = ani_drain;
	
	arr_skill[normal.drain, skills.func] = function(){attack(st_damage); regen(_self, st_damage)};
	arr_skill[normal.drain, skills.cost] = 0; arr_skill[normal.drain, skills.uses] = 3;	
	arr_skill[normal.drain, skills.selfIndex] = 3;
	arr_skill[normal.drain, skills.otherIndex] = 0;
	arr_skill[normal.drain, skills.sound] = snd_drain;
	arr_skill[normal.drain, skills.text] = string(var_name) + " DRAINS THEIR ENEMY!"
	arr_skill[normal.drain, skills.shop] = 50;
	
	arr_skill[normal.drain, skills.recharge] = 15;
	arr_skill[normal.drain, skills.weight] = 1;
	
	arr_skill[normal.drain, skills.descPlus] = "STEAL HALF OF YOUR ENEMY HP!";
	arr_skill[normal.drain, skills.funcPlus] = function(){_other.hp -= _other.maxHp/2; regen(_self, _other.maxHp/2)};
	arr_skill[normal.drain, skills.costPlus] = 0; arr_skill[normal.drain, skills.usesPlus] = 1;
	
	//Distract - Lowers Enemy Defense
	arr_skill[normal.distract, skills.name] = "DISTRACT";
	arr_skill[normal.distract, skills.desc] = "LOWERS ENEMY DEFENSE";
	arr_skill[normal.distract, skills.anim] = ani_distract;
	
	arr_skill[normal.distract, skills.func] = function(){_other.tempDef -= 10};
	arr_skill[normal.distract, skills.cost] = 0; arr_skill[normal.distract, skills.uses] = -1;	
	arr_skill[normal.distract, skills.selfIndex] = 3;
	arr_skill[normal.distract, skills.otherIndex] = 0;
	arr_skill[normal.distract, skills.sound] = snd_defenseDown;
	arr_skill[normal.distract, skills.text] = string(var_name) + " DID SOMETHING DISTRACTING!"
	arr_skill[normal.distract, skills.shop] = 25;
	
	arr_skill[normal.distract, skills.recharge] = 3;
	arr_skill[normal.distract, skills.weight] = 0;
	
	arr_skill[normal.distract, skills.descPlus] = "LOWERS ENEMY DEFENSE EVEN MORE!";
	arr_skill[normal.distract, skills.funcPlus] = function(){_other.tempDef -= 15};
	arr_skill[normal.distract, skills.costPlus] = 1; arr_skill[normal.distract, skills.usesPlus] = -1;
	
	//Confuse! - REALLY Lowers Enemy Defense
	arr_skill[normal.confuse, skills.name] = "CONFUSE";
	arr_skill[normal.confuse, skills.desc] = "LOWER ENEMY DEFENSE A LOT!";
	arr_skill[normal.confuse, skills.anim] = ani_confuse;
	
	arr_skill[normal.confuse, skills.func] = function(){_other.tempDef -= 25};
	arr_skill[normal.confuse, skills.cost] = 1; arr_skill[normal.confuse, skills.uses] = -1;	
	arr_skill[normal.confuse, skills.selfIndex] = 3;
	arr_skill[normal.confuse, skills.otherIndex] = 0;
	arr_skill[normal.confuse, skills.sound] = snd_defenseDown;
	arr_skill[normal.confuse, skills.text] = string(var_name) + " DID SOMETHING CONFUSING!"
	arr_skill[normal.confuse, skills.shop] = 50;
	
	arr_skill[normal.confuse, skills.recharge] = 8;
	arr_skill[normal.confuse, skills.weight] = 0;
	
	arr_skill[normal.confuse, skills.descPlus] = "DECREASES DEFENSE AS MUCH AS POSIBLE";
	arr_skill[normal.confuse, skills.funcPlus] = function(){_other.tempDef -= 999};
	arr_skill[normal.confuse, skills.costPlus] = 1; arr_skill[normal.confuse, skills.usesPlus] = -1;
	//RESIST - +DEF!
	arr_skill[normal.resist, skills.name] = "RESIST";
	arr_skill[normal.resist, skills.desc] = "TEMPORARILY INCREASES YOUR DEFENSE";
	arr_skill[normal.resist, skills.anim] = ani_resist;
	
	arr_skill[normal.resist, skills.func] = function(){_self.tempDef += 10};
	arr_skill[normal.resist, skills.cost] = 0; arr_skill[normal.resist, skills.uses] = -1;	
	arr_skill[normal.resist, skills.selfIndex] = 3;
	arr_skill[normal.resist, skills.otherIndex] = 0;
	arr_skill[normal.resist, skills.sound] = snd_defenseUp;
	arr_skill[normal.resist, skills.text] = string(var_name) + " HAS MORE RESISTANCE!";
	arr_skill[normal.resist, skills.shop] = 25;
	
	arr_skill[normal.resist, skills.recharge] = 3;
	arr_skill[normal.resist, skills.weight] = 0;
	
	arr_skill[normal.resist, skills.descPlus] = "INCREASES YOUR DEFENSE EVEN MORE!";
	arr_skill[normal.resist, skills.funcPlus] = function(){_self.tempDef += 15};
	arr_skill[normal.resist, skills.costPlus] = 1; arr_skill[normal.resist, skills.usesPlus] = -1;
	
	//ARMOR - +LOT OF DEF!
	arr_skill[normal.armor, skills.name] = "ARMOR";
	arr_skill[normal.armor, skills.desc] = "TEMPORARILY INCREASES YOUR DEFENSE A LOT!";
	arr_skill[normal.armor, skills.anim] = ani_armor;
	
	arr_skill[normal.armor, skills.func] = function(){_self.tempDef += 25};
	arr_skill[normal.armor, skills.cost] = 1;  arr_skill[normal.armor, skills.uses] = -1;	
	arr_skill[normal.armor, skills.selfIndex] = 3;
	arr_skill[normal.armor, skills.otherIndex] = 0;
	arr_skill[normal.armor, skills.sound] = snd_defenseUp;
	arr_skill[normal.armor, skills.text] = string(var_name) + " GOT SOME ARMOR!";
	arr_skill[normal.armor, skills.shop] = 50;
	
	arr_skill[normal.armor, skills.recharge] = 8;
	arr_skill[normal.armor, skills.weight] = 0;

	arr_skill[normal.armor, skills.descPlus] = "INCREASES YOUR DEFENSE AS MUCH AS POSIBLE";
	arr_skill[normal.armor, skills.funcPlus] = function(){_self.tempDef += 999};
	arr_skill[normal.armor, skills.costPlus] = 1; arr_skill[normal.armor, skills.usesPlus] = -1;
	
	//PUNCH
	arr_skill[normal.punch, skills.name] = "PUNCH";
	arr_skill[normal.punch, skills.desc] = "MAKE DOUBLE THE DAMAGE!";
	arr_skill[normal.punch, skills.anim] = ani_punch;
	
	arr_skill[normal.punch, skills.func] = function(){attack(st_damage*2)};
	arr_skill[normal.punch, skills.cost] = 1; arr_skill[normal.punch, skills.uses] = -1;	
	arr_skill[normal.punch, skills.selfIndex] = 2; 
	arr_skill[normal.punch, skills.otherIndex] = 1;
	arr_skill[normal.punch, skills.sound] = snd_punch;
	arr_skill[normal.punch, skills.text] = string(var_name) + " PUNCHES VERY HARD!";
	arr_skill[normal.punch, skills.shop] = 50;
	
	arr_skill[normal.punch, skills.recharge] = 5;
	arr_skill[normal.punch, skills.weight] = 0;
	
	arr_skill[normal.punch, skills.descPlus] = "X2.2 DAMAGE";
	arr_skill[normal.punch, skills.funcPlus] = function(){attack(st_damage*2.2)};
	arr_skill[normal.punch, skills.costPlus] = 1; arr_skill[normal.punch, skills.usesPlus] = -1;
	
	//BITE
	arr_skill[normal.bite, skills.name] = "BITE";
	arr_skill[normal.bite, skills.desc] = "MAKES TRIPLE THE DAMAGE!";
	arr_skill[normal.bite, skills.anim] = ani_bite;
	
	arr_skill[normal.bite, skills.func] = function(){attack(st_damage*3)};
	arr_skill[normal.bite, skills.cost] = 2; arr_skill[normal.bite, skills.uses] = -1;	
	arr_skill[normal.bite, skills.selfIndex] = 2;
	arr_skill[normal.bite, skills.otherIndex] = 1;
	arr_skill[normal.bite, skills.sound] = snd_bite;
	arr_skill[normal.bite, skills.text] = string(var_name) + " BITES HARD!";
	arr_skill[normal.bite, skills.shop] = 75;
	
	arr_skill[normal.bite, skills.recharge] = 15;
	arr_skill[normal.bite, skills.weight] = 2;
	
	arr_skill[normal.bite, skills.descPlus] = "INSTAKILL, ONE USE!";
	arr_skill[normal.bite, skills.funcPlus] = function(){attack(st_damage*11122022)};
	arr_skill[normal.bite, skills.costPlus] = 0; arr_skill[normal.bite, skills.usesPlus] = 1;
	
	//Cheese
	arr_skill[normal.cheese, skills.name] = "CHEESE";
	arr_skill[normal.cheese, skills.desc] = "RATS LOVE EATING THIS!";
	arr_skill[normal.cheese, skills.anim] = ani_cheese;
	
	arr_skill[normal.cheese, skills.func] = function(){regen(_self, maxHp/3)};
	arr_skill[normal.cheese, skills.cost] = 0; arr_skill[normal.cheese, skills.uses] = 2;	
	arr_skill[normal.cheese, skills.selfIndex] = 3;
	arr_skill[normal.cheese, skills.otherIndex] = 0;
	arr_skill[normal.cheese, skills.sound] = snd_cheese;
	arr_skill[normal.cheese, skills.text] = string(var_name) + " ATE A PIECE OF CHEESE!";
	arr_skill[normal.cheese, skills.shop] = 15;
	
	arr_skill[normal.cheese, skills.recharge] = 3;
	arr_skill[normal.cheese, skills.weight] = 0;
	
	arr_skill[normal.cheese, skills.descPlus] = "HEALS 1/2HP, GIVES SMALL DEFENSE BOOST!";
	arr_skill[normal.cheese, skills.funcPlus] = function(){regen(_self, maxHp/2); _self.tempDef += 5};
	arr_skill[normal.cheese, skills.costPlus] = 0; arr_skill[normal.cheese, skills.usesPlus] = 3;
	
	//WAIT
	arr_skill[normal.wait, skills.name] = "YAY!";
	arr_skill[normal.wait, skills.desc] = "RAISES THE ID OF YOUR FIRST SKILL BY ONE!";
	arr_skill[normal.wait, skills.anim] = ani_attack;
	
	arr_skill[normal.wait, skills.func] = function(){
			st_skills[0] ++; 
			global.turn = 1; 
			setSkillRecharge(0);
			st_skillUses[0] = arr_skill[st_skills[0], skills.uses];
		
			setSkillRecharge(0);
		};
	arr_skill[normal.wait, skills.cost] = 0; arr_skill[normal.wait, skills.uses] = -1;	
	arr_skill[normal.wait, skills.selfIndex] = 3;
	arr_skill[normal.wait, skills.otherIndex] = 1;
	arr_skill[normal.wait, skills.sound] = snd_heal;
	arr_skill[normal.wait, skills.text] = string(var_name) + " CHANGES THE ID OF A SKILL! YAY!";
	arr_skill[normal.wait, skills.shop] = 50;
	
	arr_skill[normal.wait, skills.recharge] = 6;
	arr_skill[normal.wait, skills.weight] = 0;
	
	arr_skill[normal.wait, skills.descPlus] = "RAISES THE ID OF THE FIRST SKILL BY ONE!! YAYAAA!!";
	arr_skill[normal.wait, skills.funcPlus] = arr_skill[normal.wait, skills.func];
	arr_skill[normal.wait, skills.costPlus] = 0; arr_skill[normal.wait, skills.usesPlus] = 3;
	
	//EXPLODE
	arr_skill[normal.explode, skills.name] = "EXPLODE";
	arr_skill[normal.explode, skills.desc] = "THE BEST WAY TO GO!";
	arr_skill[normal.explode, skills.anim] = ani_explode;
	
	arr_skill[normal.explode, skills.cost] = 1; arr_skill[normal.explode, skills.uses] = -1;	
	arr_skill[normal.explode, skills.sound] = snd_error;
	arr_skill[normal.explode, skills.text] = string(var_name) + " IS PREPARING FOR SOMETHING!";
	arr_skill[normal.explode, skills.func] = function(){
		if(explodeTimer = -1)
		{
			explodeTimer = arr_skill[normal.explode, skills.cost];
			var_turnWait = explodeTimer;
			arr_skill[normal.explode, skills.sound] = snd_error;
			arr_skill[normal.explode, skills.text] = string(var_name) + " IS PREPARING FOR SOMETHING!";
			arr_skill[normal.explode, skills.anim] = ani_blank;
		}
		else
		{
			arr_skill[normal.explode, skills.sound] = snd_explosion;
			arr_skill[normal.explode, skills.text] = string(var_name) + " GOES OUT WITH A BANG!";
			arr_skill[normal.explode, skills.anim] = ani_explode;
			
			//Trigger Death
			attack(st_damage*4); 
			_self.hp = 0;
		};
	};
	arr_skill[normal.explode, skills.selfIndex] = 3;
	arr_skill[normal.explode, skills.otherIndex] = 1;
	
	arr_skill[normal.explode, skills.shop] = 75;
	arr_skill[normal.explode, skills.weight] = 3;
	
	arr_skill[normal.explode, skills.recharge] = 1;
	
	arr_skill[normal.explode, skills.descPlus] = "YEAH! THE BEST WAY TO GO!";
	arr_skill[normal.explode, skills.funcPlus] = arr_skill[normal.explode, skills.func];
	arr_skill[normal.explode, skills.costPlus] = 1; arr_skill[normal.explode, skills.usesPlus] = -1;
	
	//HEAL
	arr_skill[normal.heal, skills.name] = "HEAL";
	arr_skill[normal.heal, skills.desc] = "RECOVERS 1/2HP!";
	arr_skill[normal.heal, skills.anim] = ani_heal;
	
	arr_skill[normal.heal, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.heal, skills.cost] = 0; arr_skill[normal.heal, skills.uses] = 3;	
	arr_skill[normal.heal, skills.selfIndex] = 3;
	arr_skill[normal.heal, skills.otherIndex] = 0;
	arr_skill[normal.heal, skills.sound] = snd_heal;
	arr_skill[normal.heal, skills.text] = string(var_name) + " HEALED!";
	arr_skill[normal.heal, skills.shop] = 25;
	
	arr_skill[normal.heal, skills.recharge] = 5;
	arr_skill[normal.heal, skills.weight] = 0;
	
	arr_skill[normal.heal, skills.descPlus] = "RECOVER 1/4HP, BUT APPLIES REGENERATION";
	arr_skill[normal.heal, skills.funcPlus] = function(){regen(_self, maxHp/4); _self.arr_status[status.regeneration] = true; regenCountdown = 3};
	arr_skill[normal.heal, skills.costPlus] = 0; arr_skill[normal.nap, skills.usesPlus] = 3;
	
	//SHOOT
	arr_skill[normal.shoot, skills.name] = "SHOOT";
	arr_skill[normal.shoot, skills.desc] = "MAKES A BIT MORE DAMAGE THAN USUAL!";
	arr_skill[normal.shoot, skills.anim] = ani_shoot;
	
	arr_skill[normal.shoot, skills.func] = function(){attack(st_damage+5)};
	arr_skill[normal.shoot, skills.cost] = 0; arr_skill[normal.shoot, skills.uses] = 5;	
	arr_skill[normal.shoot, skills.selfIndex] = 2;
	arr_skill[normal.shoot, skills.otherIndex] = 1;
	arr_skill[normal.shoot, skills.sound] = snd_shoot;
	arr_skill[normal.shoot, skills.text] = string(var_name) + " SHOOTS!";
	arr_skill[normal.shoot, skills.shop] = 15;
	
	arr_skill[normal.shoot, skills.recharge] = 3;
	arr_skill[normal.shoot, skills.weight] = 0;
	
	arr_skill[normal.shoot, skills.descPlus] = "MAKE DAMAGE MULTIPLE TIMES IN A TURN!";
	arr_skill[normal.shoot, skills.funcPlus] = function(){attack(st_damage+5); global.turn = 1};
	arr_skill[normal.shoot, skills.costPlus] = 0; arr_skill[normal.shoot, skills.usesPlus] = 5;
	
	//Triangulate
	arr_skill[normal.triangle, skills.name] = "Triangulate";
	arr_skill[normal.triangle, skills.desc] = "Heals 20hp!";
	arr_skill[normal.triangle, skills.anim] = ani_triangulate;
	
	arr_skill[normal.triangle, skills.func] = function(){regen(_self, 20)};
	arr_skill[normal.triangle, skills.cost] = 0; arr_skill[normal.triangle, skills.uses] = 5;	
	arr_skill[normal.triangle, skills.selfIndex] = 3;
	arr_skill[normal.triangle, skills.otherIndex] = 0;
	arr_skill[normal.triangle, skills.sound] = snd_heal;
	arr_skill[normal.triangle, skills.text] = string(var_name) + " TRIANGULATES!";
	arr_skill[normal.triangle, skills.shop] = 15;
	
	arr_skill[normal.triangle, skills.recharge] = 5;
	arr_skill[normal.triangle, skills.weight] = 0;
	
	arr_skill[normal.triangle, skills.descPlus] = "HEAL 20HP MULTIPLE TIMES IN A TURN!";
	arr_skill[normal.triangle, skills.funcPlus] = function(){regen(_self, 20); global.turn = 1};
	arr_skill[normal.triangle, skills.costPlus] = 0; arr_skill[normal.triangle, skills.usesPlus] = 5;
	
	//HONK
	arr_skill[normal.honk, skills.name] = "HONK";
	arr_skill[normal.honk, skills.desc] = "HONK HONK";
	arr_skill[normal.honk, skills.anim] = ani_honk;
	
	arr_skill[normal.honk, skills.func] = function(){screenshake(5, 2, .5); _self.tempDef += 5};
	arr_skill[normal.honk, skills.cost] = 0; arr_skill[normal.honk, skills.uses] = -1;	
	arr_skill[normal.honk, skills.selfIndex] = 3;
	arr_skill[normal.honk, skills.otherIndex] = 3;
	arr_skill[normal.honk, skills.sound] = snd_honk;
	arr_skill[normal.honk, skills.text] = "HONK HONK";
	arr_skill[normal.honk, skills.shop] = 25;
	
	arr_skill[normal.honk, skills.recharge] = 2;
	arr_skill[normal.honk, skills.weight] = 0;
	
	arr_skill[normal.honk, skills.descPlus] = "HONK HONK! (in blue)";
	arr_skill[normal.honk, skills.funcPlus] = function(){screenshake(5, 2, .5); _self.tempDef += 5};
	arr_skill[normal.honk, skills.costPlus] = 0; arr_skill[normal.honk, skills.usesPlus] = -1;
	
	//STEAL
	arr_skill[normal.steal, skills.name] = "STEAL";
	arr_skill[normal.steal, skills.desc] = "USE A SKILL FROM YOUR ENEMY!";
	arr_skill[normal.steal, skills.anim] = ani_blank;
	
	arr_skill[normal.steal, skills.cost] = 1; arr_skill[normal.steal, skills.uses] = 3;	
	arr_skill[normal.steal, skills.text] = string(var_name) + " USES A STOLEN SKILL!";
	
	arr_skill[normal.steal, skills.func] = function(){
			//if(global.player = enemy.rat_king){regen(_self, maxHp/4)};
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
				}
				else if(_other.st_skills[_ski]  = normal.swap)
				{
					_skillChange = normal.rat_ratuary;
				};
				
				//TRIGGER
				if(_skillChange != -1)
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_skillChange, skills.cost];
					skill(_skillChange, false);
				}
				else
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_other.st_skills[_ski], skills.cost];
					skill(_other.st_skills[_ski], false);
				};
				
				//TEXT
				arr_skill[normal.steal, skills.text] = string(var_name) + " USES A STOLEN SKILL! ( "+ string(arr_skill[_other.st_skills[_ski], skills.name]) +" )";
			}
			else
			{
				arr_skill[normal.steal, skills.cost] = 0;
				arr_skill[normal.steal, skills.text] = "NO SKILLS TO STEAL! " + string(var_name) + " STOLE CHEESE INSTEAD!";
				skill(normal.cheese, false);
			};	
		};
	arr_skill[normal.steal, skills.selfIndex] = 3;
	arr_skill[normal.steal, skills.otherIndex] = 1;
	arr_skill[normal.steal, skills.sound] = snd_steal;
	arr_skill[normal.steal, skills.shop] = 15;
	
	arr_skill[normal.steal, skills.recharge] = 3;
	arr_skill[normal.steal, skills.weight] = 2;
	
	arr_skill[normal.steal, skills.descPlus] = "USE AN ENHANCED SKILL FROM YOUR ENEMY!";
	arr_skill[normal.steal, skills.funcPlus] = function(){
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
				}
				else if(_other.st_skills[_ski]  = normal.swap)
				{
					_skillChange = normal.rat_ratuary;
				};
				
				//TRIGGER
				if(_skillChange != -1)
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_skillChange, skills.cost];
					skill(_skillChange, true);
				}
				else
				{
					arr_skill[normal.steal, skills.cost] = arr_skill[_other.st_skills[_ski], skills.cost];
					skill(_other.st_skills[_ski], true);
				};
				
				//TEXT
				arr_skill[normal.steal, skills.text] = string(var_name) + " USES A STOLEN SKILL! ( "+ string(arr_skill[_other.st_skills[_ski], skills.name]) +" )";
			}
			else
			{
				arr_skill[normal.steal, skills.cost] = 0;
				arr_skill[normal.steal, skills.text] = "NO SKILLS TO STEAL! " + string(var_name) + " STOLE CHEESE INSTEAD!";
				skill(normal.cheese, false);
			};	
		};
	arr_skill[normal.steal, skills.costPlus] = 0; arr_skill[normal.steal, skills.usesPlus] = -1;
	
	//BARK
	arr_skill[normal.bark, skills.name] = "BARK";
	arr_skill[normal.bark, skills.desc] = "LOWERS ENEMY DEFENSE";
	arr_skill[normal.bark, skills.anim] = ani_bark;
	
	arr_skill[normal.bark, skills.func] = function(){_other.tempDef -= 5};
	arr_skill[normal.bark, skills.cost] = 0; arr_skill[normal.bark, skills.uses] = -1;	
	arr_skill[normal.bark, skills.selfIndex] = 3;
	arr_skill[normal.bark, skills.otherIndex] = 0;
	arr_skill[normal.bark, skills.sound] = snd_bark;
	arr_skill[normal.bark, skills.text] = string(var_name) + " BARKS, LOWERING ENEMY DEFENSE!"
	arr_skill[normal.bark, skills.shop] = 25;
	
	arr_skill[normal.bark, skills.recharge] = 3;
	arr_skill[normal.bark, skills.weight] = 0;
	
	arr_skill[normal.bark, skills.descPlus] = "LOWER ENEMY DEFENSE MULTIPLE TIMES IN A TURN!";
	arr_skill[normal.bark, skills.funcPlus] = function(){_other.tempDef -= 5; global.turn = 1};
	arr_skill[normal.bark, skills.costPlus] = 0; arr_skill[normal.bark, skills.usesPlus] = -1;
	
	//Bitter
	arr_skill[normal.bitter, skills.name] = "Bitter";
	arr_skill[normal.bitter, skills.desc] = "ENEMY'S REGENERATION IS HALF AS EFFECTIVE!";
	arr_skill[normal.bitter, skills.anim] = ani_bitter;
	
	arr_skill[normal.bitter, skills.func] = function(){_other.arr_status[status.bitter] = true};
	arr_skill[normal.bitter, skills.cost] = 1; arr_skill[normal.bitter, skills.uses] = -1;
	arr_skill[normal.bitter, skills.selfIndex] = 3;
	arr_skill[normal.bitter, skills.otherIndex] = 1;
	arr_skill[normal.bitter, skills.sound] = snd_bitter;
	arr_skill[normal.bitter, skills.text] = string(var_name) + " MAKES THE ENEMY BITTER!";
	arr_skill[normal.bitter, skills.shop] = 25;
	
	arr_skill[normal.bitter, skills.recharge] = 5;
	arr_skill[normal.bitter, skills.weight] = 0;
	
	arr_skill[normal.bitter, skills.descPlus] = "USE THE EFFECT WITHOUT WASTING YOUR TURN!";
	arr_skill[normal.bitter, skills.funcPlus] = function(){_other.arr_status[status.bitter] = true; global.turn = 1};
	arr_skill[normal.bitter, skills.costPlus] = 0; arr_skill[normal.bitter, skills.usesPlus] = 5;
	
	//LEMONADE!
	arr_skill[normal.lemonade, skills.name] = "LEMONADE";
	arr_skill[normal.lemonade, skills.desc] = "REFILLS! ignores BITTER";
	arr_skill[normal.lemonade, skills.anim] = ani_lemonade;
	
	arr_skill[normal.lemonade, skills.func] = function(){_self.hp += maxHp/3};
	arr_skill[normal.lemonade, skills.cost] = 1; arr_skill[normal.lemonade, skills.uses] = -1;	
	arr_skill[normal.lemonade, skills.selfIndex] = 3;
	arr_skill[normal.lemonade, skills.otherIndex] = 0;
	arr_skill[normal.lemonade, skills.sound] = snd_heal;
	arr_skill[normal.lemonade, skills.text] = string(var_name) + " DRANK SOME LEMONADE!";
	arr_skill[normal.lemonade, skills.shop] = 25;
	
	arr_skill[normal.lemonade, skills.recharge] = 8;
	arr_skill[normal.lemonade, skills.weight] = 1;
	
	arr_skill[normal.lemonade, skills.descPlus] = "DEFENSE + HEAL BOOST IF THE ENEMY IS BITTER";
	arr_skill[normal.lemonade, skills.funcPlus] = function(){
		if(_other.arr_status[status.bitter])
		{
			_self.hp += maxHp;
			st_defense += 5;
		}
		else
		{
			_self.hp += maxHp/2;
		};
	};
	arr_skill[normal.lemonade, skills.costPlus] = 1; arr_skill[normal.lemonade, skills.usesPlus] = -1;
	
	//Shroom
	arr_skill[normal.shroom, skills.name] = "Shroom";
	arr_skill[normal.shroom, skills.desc] = "Drain some enemy hp every turn!";
	arr_skill[normal.shroom, skills.anim] = ani_shroom;
	
	arr_skill[normal.shroom, skills.func] = function(){_other.arr_status[status.shroomed] = true};
	arr_skill[normal.shroom, skills.cost] = 0; arr_skill[normal.shroom, skills.uses] = 3;
	arr_skill[normal.shroom, skills.selfIndex] = 3;
	arr_skill[normal.shroom, skills.otherIndex] = 1;
	arr_skill[normal.shroom, skills.sound] = snd_shroom;
	arr_skill[normal.shroom, skills.text] = string(var_name) + " TOSSED SOME SHROOMS!";
	arr_skill[normal.shroom, skills.shop] = 50;
	
	arr_skill[normal.shroom, skills.recharge] = 7;
	arr_skill[normal.shroom, skills.weight] = 1;
	
	arr_skill[normal.shroom, skills.descPlus] = "SHROOM THE ENEMY, KEEP YOUR TURN!";
	arr_skill[normal.shroom, skills.funcPlus] = function(){_other.arr_status[status.shroomed] = true; global.turn = 1};
	arr_skill[normal.shroom, skills.costPlus] = 0; arr_skill[normal.shroom, skills.usesPlus] = 3;
	//Scare
	arr_skill[normal.scare, skills.name] = "Scare";
	arr_skill[normal.scare, skills.desc] = "BOO!";
	arr_skill[normal.scare, skills.anim] = ani_scare;
	
	arr_skill[normal.scare, skills.func] = function(){_other.arr_status[status.spooked]  = true};
	arr_skill[normal.scare, skills.cost] = 0; arr_skill[normal.scare, skills.uses] = 3;
	arr_skill[normal.scare, skills.selfIndex] = 2;
	arr_skill[normal.scare, skills.otherIndex] = 1;
	arr_skill[normal.scare, skills.sound] = snd_scare;
	arr_skill[normal.scare, skills.text] = string(var_name) + " IS BEING SCARY!";
	arr_skill[normal.scare, skills.shop] = 25;
	
	arr_skill[normal.scare, skills.recharge] = 5;
	arr_skill[normal.scare, skills.weight] = 0;
	
	arr_skill[normal.scare, skills.descPlus] = "BOO! Costs no turns";
	arr_skill[normal.scare, skills.funcPlus] = function(){_other.arr_status[status.spooked] = true; global.turn = 1};
	arr_skill[normal.scare, skills.costPlus] = 0; arr_skill[normal.scare, skills.usesPlus] = 3;
	
	//rot
	arr_skill[normal.rot, skills.name] = "ROT";
	arr_skill[normal.rot, skills.desc] = "ROTS THE ENEMY";
	arr_skill[normal.rot, skills.anim] = ani_rot;
	
	arr_skill[normal.rot, skills.func] = function(){_other.arr_status[status.rotten] = true};
	arr_skill[normal.rot, skills.cost] = 0; arr_skill[normal.rot, skills.uses] = 5;	
	arr_skill[normal.rot, skills.selfIndex] = 3;
	arr_skill[normal.rot, skills.otherIndex] = 1;
	arr_skill[normal.rot, skills.sound] = snd_rot;
	arr_skill[normal.rot, skills.text] = string(var_name) + " ROTS THE ENEMY"
	arr_skill[normal.rot, skills.shop] = 50;
	
	arr_skill[normal.rot, skills.recharge] = 5;
	arr_skill[normal.rot, skills.weight] = 0;
	
	arr_skill[normal.rot, skills.descPlus] = "ROTS THE ENEMY, COSTS NO TURNS";
	arr_skill[normal.rot, skills.funcPlus] = function(){_other.arr_status[status.rotten] = true; global.turn = 1};
	arr_skill[normal.rot, skills.costPlus] = 0; arr_skill[normal.rot, skills.usesPlus] = 5;
	
	//Fireball
	arr_skill[normal.fireball, skills.name] = "Fireball";
	arr_skill[normal.fireball, skills.desc] = "Throw a Fireball that will burn the enemy!";
	arr_skill[normal.fireball, skills.anim] = ani_fireball;
	
	arr_skill[normal.fireball, skills.func] = function(){attack(st_damage); _other.arr_status[status.burnt] = true};
	arr_skill[normal.fireball, skills.cost] = 0; arr_skill[normal.fireball, skills.uses] = 2;
	arr_skill[normal.fireball, skills.selfIndex] = 2;
	arr_skill[normal.fireball, skills.otherIndex] = 1;
	arr_skill[normal.fireball, skills.sound] = snd_fire;
	arr_skill[normal.fireball, skills.text] = string(var_name) + " THREW A FIREBALL!";
	arr_skill[normal.fireball, skills.shop] = 50;
	
	arr_skill[normal.fireball, skills.recharge] = 5;
	arr_skill[normal.fireball, skills.weight] = 0;
	
	arr_skill[normal.fireball, skills.descPlus] = "DAMAGE AND BURN WITHOUT WASTING TURNS";
	arr_skill[normal.fireball, skills.funcPlus] = function(){attack(st_damage *1.2); _other.arr_status[status.burnt] = true; global.turn = 1};
	arr_skill[normal.fireball, skills.costPlus] = 0; arr_skill[normal.fireball, skills.usesPlus] = 2;
	
	//Dissipate
	arr_skill[normal.dissipate, skills.name] = "Dissipate";
	arr_skill[normal.dissipate, skills.desc] = "HUGE DEFENSE UP!";
	arr_skill[normal.dissipate, skills.anim] = ani_dissipate;
	
	arr_skill[normal.dissipate, skills.func] = function(){_self.tempDef = 30};
	arr_skill[normal.dissipate, skills.cost] = 1; arr_skill[normal.dissipate, skills.uses] = -1;
	arr_skill[normal.dissipate, skills.selfIndex] = 2;
	arr_skill[normal.dissipate, skills.otherIndex] = 1;
	arr_skill[normal.dissipate, skills.sound] = snd_defenseUp;
	arr_skill[normal.dissipate, skills.text] = string(var_name) + " DISSIPATES!";
	arr_skill[normal.dissipate, skills.shop] = 25;
	
	arr_skill[normal.dissipate, skills.recharge] = 5;
	
	arr_skill[normal.dissipate, skills.descPlus] = "HUGE DEFENSE UP, GIVES SOME DAMAGE!";
	arr_skill[normal.dissipate, skills.funcPlus] = function(){_self.tempDef = 30; _self.tempDmg += 5};
	arr_skill[normal.dissipate, skills.costPlus] = 0; arr_skill[normal.dissipate, skills.usesPlus] = 5;
	
	//Disengage
	arr_skill[normal.disengage, skills.name] = "Disengage";
	arr_skill[normal.disengage, skills.desc] = "Damage immunity!";
	arr_skill[normal.disengage, skills.anim] = ani_disengage;
	
	arr_skill[normal.disengage, skills.func] = function(){_self.arr_status[status.disengaged] = true};
	arr_skill[normal.disengage, skills.cost] = 0; arr_skill[normal.disengage, skills.uses] = 3;
	arr_skill[normal.disengage, skills.selfIndex] = 3;
	arr_skill[normal.disengage, skills.otherIndex] = 0;
	arr_skill[normal.disengage, skills.sound] = snd_defenseUp;
	arr_skill[normal.disengage, skills.text] = string(var_name) + " DISENGAGES!";
	arr_skill[normal.disengage, skills.shop] = 75;
	
	arr_skill[normal.disengage, skills.recharge] = 3;
	arr_skill[normal.disengage, skills.weight] = 1;
	
	arr_skill[normal.disengage, skills.descPlus] = "DAMAGE IMMUNITY! COSTS NO TURNS";
	arr_skill[normal.disengage, skills.funcPlus] = function(){_self.arr_status[status.disengaged] = true; global.turn = 1};
	arr_skill[normal.disengage, skills.costPlus] = 0; arr_skill[normal.disengage, skills.usesPlus] = 3;
	
	//Rat Flute
	arr_skill[normal.rat_flute, skills.name] = "Rat Flute";
	arr_skill[normal.rat_flute, skills.desc] = "Plays a beautiful rat song!";
	arr_skill[normal.rat_flute, skills.anim] = ani_ratflute;
	
	arr_skill[normal.rat_flute, skills.func] = function(){ 
		ini_open("unlocks.ini")
		if(ini_read_real("unlocks", "9", false)) //If you unlocked the better rat flute
		{
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rat_flute)
				{
					var _choice = irandom_range(normal.rat_pocket, normal.cheese_liquid);
					st_skills[i] = _choice
					
					if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
					setSkillRecharge(i)
					break;
				};
			};	
		}
		else //If you DIDN'T
		{
			_self.tempDef += 5
		}
		ini_close()
	};
	arr_skill[normal.rat_flute, skills.cost] = 0; arr_skill[normal.rat_flute, skills.uses] = -1;
	arr_skill[normal.rat_flute, skills.selfIndex] = 3;
	arr_skill[normal.rat_flute, skills.otherIndex] = 0;
	arr_skill[normal.rat_flute, skills.sound] = snd_ratFlute;
	arr_skill[normal.rat_flute, skills.text] = string(var_name) + " PLAYS A SONG!";
	arr_skill[normal.rat_flute, skills.shop] = 25;
	
	arr_skill[normal.rat_flute, skills.recharge] = 3;
	arr_skill[normal.rat_flute, skills.weight] = 0;
	
	arr_skill[normal.rat_flute, skills.descPlus] = "PLAYS A BEAUTIFUL RAT SONG!";
	arr_skill[normal.rat_flute, skills.funcPlus] = function(){
		ini_open("unlocks.ini")
			if(ini_read_real("unlocks", "9", false)) //If you unlocked the better rat flute
			{
				for(i=0; i < 4; i++)
				{
					if(_self.st_skills[i] = normal.rat_flute)
					{
						var _choice = choose(normal.rat_ratuary, normal.rat_miniKing, normal.rat_pocket);
						st_skills[i] = _choice
					
						if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
						setSkillRecharge(i)
						break;
					};
				};	
			}
			else //If you DIDN'T
			{
				_self.tempDef += 10
			};
		ini_close();
	};
	arr_skill[normal.rat_flute, skills.costPlus] = 0; arr_skill[normal.rat_flute, skills.usesPlus] = -1;
	
	//Lick
	arr_skill[normal.lick, skills.name] = "LICK";
	arr_skill[normal.lick, skills.desc] = "LICK YOUR ENEMY'S SOUL";
	arr_skill[normal.lick, skills.anim] = ani_lick;
	
	arr_skill[normal.lick, skills.func] = function(){attack(st_damage*1.5); regen(_self, st_damage*1.5)};
	arr_skill[normal.lick, skills.cost] = 1; arr_skill[normal.lick, skills.uses] = 2;
	arr_skill[normal.lick, skills.selfIndex] = 3;
	arr_skill[normal.lick, skills.otherIndex] = 1;
	arr_skill[normal.lick, skills.sound] = snd_drain;
	arr_skill[normal.lick, skills.text] = string(var_name) + " LICKS THEIR ENEMY!"
	arr_skill[normal.lick, skills.shop] = 75;
	
	arr_skill[normal.lick, skills.recharge] = 8;
	arr_skill[normal.lick, skills.weight] = 0;
	
	arr_skill[normal.lick, skills.descPlus] = "FILL UP WITH BLOOD!";
	arr_skill[normal.lick, skills.funcPlus] = function(){attack(st_damage*2); regen(_self, st_damage*2)};
	arr_skill[normal.lick, skills.costPlus] = 0; arr_skill[normal.lick, skills.usesPlus] = -1;
	
	//Smile
	arr_skill[normal.smile, skills.name] = "SMILE";
	arr_skill[normal.smile, skills.desc] = "REGENS HEALTH AND INCREASES DEFENSE!";
	arr_skill[normal.smile, skills.anim] = ani_smile;
	
	arr_skill[normal.smile, skills.func] = function(){regen(_self, maxHp/4); _self.tempDef += 2};
	arr_skill[normal.smile, skills.cost] = 0; arr_skill[normal.smile, skills.uses] = 1;	
	arr_skill[normal.smile, skills.selfIndex] = 3;
	arr_skill[normal.smile, skills.otherIndex] = 1;
	arr_skill[normal.smile, skills.sound] = snd_smile;
	arr_skill[normal.smile, skills.text] = string(var_name) + " SHOWS A BIG SMILE!"
	arr_skill[normal.smile, skills.shop] = 50;
	
	arr_skill[normal.smile, skills.recharge] = 3;
	arr_skill[normal.smile, skills.weight] = 1;
	
	arr_skill[normal.smile, skills.descPlus] = "REGENS HEALTH AND INCREASES DAMAGE!";
	arr_skill[normal.smile, skills.funcPlus] = function(){regen(_self, maxHp/4); _self.tempDmg += 5};
	arr_skill[normal.smile, skills.costPlus] = 0; arr_skill[normal.smile, skills.usesPlus] = 1;
	
	//RUSH
	arr_skill[normal.rush, skills.name] = "RUSH";
	arr_skill[normal.rush, skills.desc] = "DEALS 1.2 DAMAGE!";
	arr_skill[normal.rush, skills.anim] = ani_rush;
	
	arr_skill[normal.rush, skills.func] = function(){attack(st_damage*1.2)};
	arr_skill[normal.rush, skills.cost] = 0; arr_skill[normal.rush, skills.uses] = 3;	
	arr_skill[normal.rush, skills.selfIndex] = 3;
	arr_skill[normal.rush, skills.otherIndex] = 1;
	arr_skill[normal.rush, skills.sound] = snd_rush;
	arr_skill[normal.rush, skills.text] = string(var_name) + " RUSHES INTO THEMY!"
	arr_skill[normal.rush, skills.shop] = 50;
	
	arr_skill[normal.rush, skills.recharge] = 4;
	arr_skill[normal.rush, skills.weight] = 0;
	
	arr_skill[normal.rush, skills.descPlus] = "DEALS X1.5 DAMAGE!";
	arr_skill[normal.rush, skills.funcPlus] = function(){attack(st_damage*1.5)};
	arr_skill[normal.rush, skills.costPlus] = 0; arr_skill[normal.rush, skills.usesPlus] = 5;
	
	//CROWN
	arr_skill[normal.crown, skills.name] = "CROWN";
	arr_skill[normal.crown, skills.desc] = "LOOK AT YOUR GORGEOUS CROWN, BOOST YOUR EGO!";
	arr_skill[normal.crown, skills.anim] = ani_crown;
	
	arr_skill[normal.crown, skills.func] = function(){_self.arr_status[status.regeneration] = true;  regenCountdown = (_other = obj_enemy ? 10 : 3)};
	arr_skill[normal.crown, skills.cost] = 1; arr_skill[normal.crown, skills.uses] = 1;	
	arr_skill[normal.crown, skills.selfIndex] = 3;
	arr_skill[normal.crown, skills.otherIndex] = 0;
	arr_skill[normal.crown, skills.sound] = snd_heal;
	arr_skill[normal.crown, skills.text] = string(var_name) + " CHECKS OUT THEIR CROWN!";
	arr_skill[normal.crown, skills.shop] = 50;
	
	arr_skill[normal.crown, skills.recharge] = 8;
	arr_skill[normal.crown, skills.weight] = 2;
	
	arr_skill[normal.crown, skills.descPlus] = "BOOST YOUR EGO A LOT!";
	arr_skill[normal.crown, skills.funcPlus] = function(){_self.arr_status[status.regeneration] = true;  regenCountdown = 15};
	arr_skill[normal.crown, skills.costPlus] = 0; arr_skill[normal.crown, skills.usesPlus] = 3;
	
	//Rubbish
	arr_skill[normal.rubbish, skills.name] = "RUBBISH";
	arr_skill[normal.rubbish, skills.desc] = "SEARCH THE RUBBISH AND SEE WHAT YOU FIND";
	arr_skill[normal.rubbish, skills.anim] = ani_rubbish;
	
	arr_skill[normal.rubbish, skills.func] = function(){
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rubbish)
				{
					var _choice = choose(normal.bug, normal.can, normal.cheese_old);
					st_skills[i] = _choice
					
					if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
					setSkillRecharge(i)
					break;
				};
			};	
		};	
	arr_skill[normal.rubbish, skills.cost] = 0; arr_skill[normal.rubbish, skills.uses] = -1;
	arr_skill[normal.rubbish, skills.selfIndex] = 3;
	arr_skill[normal.rubbish, skills.otherIndex] = 0;
	arr_skill[normal.rubbish, skills.sound] = snd_steal;
	arr_skill[normal.rubbish, skills.text] = string(var_name) + " LOOKS IN THE RUBBISH!";
	arr_skill[normal.rubbish, skills.shop] = 15;
	
	arr_skill[normal.rubbish, skills.recharge] = 1;
	arr_skill[normal.rubbish, skills.weight] = 0;
	
	arr_skill[normal.rubbish, skills.descPlus] = "GIVES YOU AN EXTRA SKILL IF YOU HAVE THE SPACE!";
	arr_skill[normal.rubbish, skills.funcPlus] = function(){
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
			
			//EXTRA SKILL
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = -1)
				{
					var _choice = choose(normal.bug, normal.can, normal.cheese_old);
					st_skills[i] = _choice
					
					if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
					break;
				};
			};	
		};	
	arr_skill[normal.rubbish, skills.costPlus] = 0; arr_skill[normal.rubbish, skills.usesPlus] = 3;
	
	//BUG
	arr_skill[normal.bug, skills.name] = "BUG";
	arr_skill[normal.bug, skills.desc] = "A SCARY BUG!";
	arr_skill[normal.bug, skills.anim] = ani_bug;
	
	arr_skill[normal.bug, skills.func] = function(){_other.arr_status[status.spooked] = true};	
	arr_skill[normal.bug, skills.cost] = 0; arr_skill[normal.bug, skills.uses] = 1;
	arr_skill[normal.bug, skills.selfIndex] = 2;
	arr_skill[normal.bug, skills.otherIndex] = 1;
	arr_skill[normal.bug, skills.sound] = snd_scare;
	arr_skill[normal.bug, skills.text] = string(var_name) + " SHOWS THE ENEMY A VERY SCARY BUG!";
	arr_skill[normal.bug, skills.shop] = 0;
	
	arr_skill[normal.bug, skills.recharge] = 7;
	arr_skill[normal.bug, skills.weight] = 0;
	
	arr_skill[normal.bug, skills.descPlus] = "A COUPLE OF SCARY BUGS!";
	arr_skill[normal.bug, skills.funcPlus] = arr_skill[normal.bug, skills.func];
	arr_skill[normal.bug, skills.costPlus] = 0; arr_skill[normal.bug, skills.usesPlus] = 3;
	
	//OLD CHEESE
	arr_skill[normal.cheese_old, skills.name] = "OLD CHEESE";
	arr_skill[normal.cheese_old, skills.desc] = "ROTTEN CHEESE";
	arr_skill[normal.cheese_old, skills.anim] = ani_oldcheese;
	
	arr_skill[normal.cheese_old, skills.func] = function(){regen(_self, maxHp/2); _self.arr_status[status.rotten] = true};	
	arr_skill[normal.cheese_old, skills.cost] = 0; arr_skill[normal.cheese_old, skills.uses] = 2;
	arr_skill[normal.cheese_old, skills.selfIndex] = 3;
	arr_skill[normal.cheese_old, skills.otherIndex] = 1;
	arr_skill[normal.cheese_old, skills.sound] = snd_oldCheese;
	arr_skill[normal.cheese_old, skills.text] = string(var_name) + " EATS A NASTY CHEESE...";
	arr_skill[normal.cheese_old, skills.shop] = 0;
	
	arr_skill[normal.cheese_old, skills.recharge] = 5;
	arr_skill[normal.cheese_old, skills.weight] = 0;

	arr_skill[normal.cheese_old, skills.descPlus] = "ROTTEN CHEESE THAT FILLS YOUR SPIRIT";
	arr_skill[normal.cheese_old, skills.funcPlus] = function(){regen(_self, maxHp); _self.arr_status[status.rotten] = true};
	arr_skill[normal.cheese_old, skills.costPlus] = 0; arr_skill[normal.cheese_old, skills.usesPlus] = 1;
	
	//CAN
	arr_skill[normal.can, skills.name] = "A CAN";
	arr_skill[normal.can, skills.desc] = "A RUSTY CAN";
	arr_skill[normal.can, skills.anim] = ani_can;
	
	arr_skill[normal.can, skills.func] = function(){attack(st_damage*2.5)};	
	arr_skill[normal.can, skills.cost] = 0; arr_skill[normal.can, skills.uses] = 1;
	arr_skill[normal.can, skills.selfIndex] = 2;
	arr_skill[normal.can, skills.otherIndex] = 1;
	arr_skill[normal.can, skills.sound] = snd_punch;
	arr_skill[normal.can, skills.text] = string(var_name) + " TOSSES A CAN!";
	arr_skill[normal.can, skills.shop] = 0;
	
	arr_skill[normal.can, skills.recharge] = 7;
	arr_skill[normal.can, skills.weight] = 0;
	
	arr_skill[normal.can, skills.descPlus] = "A COUPLE OF RUSTY CANS!";
	arr_skill[normal.can, skills.funcPlus] = function(){attack(st_damage*2.5)};
	arr_skill[normal.can, skills.costPlus] = 0; arr_skill[normal.can, skills.usesPlus] = 2;
	
	//GRILLED CHEESE
	arr_skill[normal.grilled_cheese, skills.name] = "GRILLED CHEESE";
	arr_skill[normal.grilled_cheese, skills.desc] = "FILLS HP, DAMAGE UP";
	arr_skill[normal.grilled_cheese, skills.anim] = ani_grilledcheese;
	
	arr_skill[normal.grilled_cheese, skills.func] = function(){regen(_self, maxHp); _self.st_damage += 5};	
	arr_skill[normal.grilled_cheese, skills.cost] = 0; arr_skill[normal.grilled_cheese, skills.uses] = 1;
	arr_skill[normal.grilled_cheese, skills.selfIndex] = 3;
	arr_skill[normal.grilled_cheese, skills.otherIndex] = 0;
	arr_skill[normal.grilled_cheese, skills.sound] = snd_grilledCheese;
	arr_skill[normal.grilled_cheese, skills.text] = string(var_name) + " EATS SOME GRILLED CHEESE!";
	arr_skill[normal.grilled_cheese, skills.shop] = 75;
	
	arr_skill[normal.grilled_cheese, skills.recharge] = 15;
	arr_skill[normal.grilled_cheese, skills.weight] = 3;
	
	arr_skill[normal.grilled_cheese, skills.descPlus] = "FILLS HP, EVEN MORE DAMAGE UP!";
	arr_skill[normal.grilled_cheese, skills.funcPlus] = function(){regen(_self, maxHp); _self.st_damage += 10};
	arr_skill[normal.grilled_cheese, skills.costPlus] = 0; arr_skill[normal.grilled_cheese, skills.usesPlus] = 1;
	
	//PLUNGER
	arr_skill[normal.plunger, skills.name] = "PLUNGER";
	arr_skill[normal.plunger, skills.desc] = "DAMAGES ENEMIES, MAY ROT THEM TOO!";
	arr_skill[normal.plunger, skills.anim] = ani_plunger;
	
	arr_skill[normal.plunger, skills.func] = function(){attack(st_damage*.8) var ii = choose(1, 2); if(ii = 1){_other.arr_status[status.rotten] = true}};
	arr_skill[normal.plunger, skills.cost] = 0; arr_skill[normal.plunger, skills.uses] = -1;
	arr_skill[normal.plunger, skills.selfIndex] = 2;
	arr_skill[normal.plunger, skills.otherIndex] = 1;
	arr_skill[normal.plunger, skills.sound] = snd_plunger;
	arr_skill[normal.plunger, skills.text] = string(var_name) + " USES THE PLUNGER!";
	arr_skill[normal.plunger, skills.shop] = 0;
	
	arr_skill[normal.plunger, skills.recharge] = 3;
	arr_skill[normal.plunger, skills.weight] = 1;
	
	arr_skill[normal.plunger, skills.descPlus] = "DAMAGES ENEMIES, WILL ROT THEM TOO!";
	arr_skill[normal.plunger, skills.funcPlus] = function(){attack(st_damage); _other.arr_status[status.rotten] = true};
	arr_skill[normal.plunger, skills.costPlus] = 0; arr_skill[normal.plunger, skills.usesPlus] = 1;
	
	//MILK
	arr_skill[normal.milk, skills.name] = "MILK";
	arr_skill[normal.milk, skills.desc] = "REMOVES ALL STATUS EFFECTS";
	arr_skill[normal.milk, skills.anim] = ani_milk;
	
	arr_skill[normal.milk, skills.target] = _self;
	arr_skill[normal.milk, skills.func] = function(){for(i=0; i <= 10; i++){_self.arr_status[i]= false}};
	arr_skill[normal.milk, skills.cost] = 0; arr_skill[normal.milk, skills.uses] = 5;
	arr_skill[normal.milk, skills.selfIndex] = 3;
	arr_skill[normal.milk, skills.otherIndex] = 0;
	arr_skill[normal.milk, skills.sound] = snd_milk;
	arr_skill[normal.milk, skills.text] = string(var_name) + " DRANK SOME HEALTHY MILK!";
	arr_skill[normal.milk, skills.shop] = 0;
	
	arr_skill[normal.milk, skills.recharge] = 3;
	arr_skill[normal.milk, skills.weight] = 0;
	
	arr_skill[normal.milk, skills.descPlus] = "REMOVES ALL STATUS EFFECTS! HEALS A BIT TOO";
	arr_skill[normal.milk, skills.funcPlus] = function(){for(i=0; i <= 10; i++){_self.arr_status[i]= false}; regen(_self, _self.maxHp /4)};
	arr_skill[normal.milk, skills.costPlus] = 0; arr_skill[normal.milk, skills.usesPlus] = 1;
	
	//cigar
	arr_skill[normal.cigar, skills.name] = "cigar";
	arr_skill[normal.cigar, skills.desc] = "DAMAGES YOU, BUT RAISES YOUR DEFENSE!";
	arr_skill[normal.cigar, skills.anim] = ani_cigar;
	
	arr_skill[normal.cigar, skills.func] = function(){_self.hp -= 15; _self.tempDef += 20};
	arr_skill[normal.cigar, skills.cost] = 0; arr_skill[normal.cigar, skills.uses] = -1;
	arr_skill[normal.cigar, skills.selfIndex] = 3;
	arr_skill[normal.cigar, skills.otherIndex] = 0;
	arr_skill[normal.cigar, skills.sound] = snd_defenseDown;
	arr_skill[normal.cigar, skills.text] = string(var_name) + " SMOKES!";
	arr_skill[normal.cigar, skills.shop] = 25;
	
	arr_skill[normal.cigar, skills.recharge] = 3;
	arr_skill[normal.cigar, skills.weight] = 0;
	
	arr_skill[normal.cigar, skills.descPlus] = "DAMAGES YOU, BUT RAISES YOUR DEFENSE!";
	arr_skill[normal.cigar, skills.funcPlus] = function(){_self.hp -= 20; _self.tempDef += 50};
	arr_skill[normal.cigar, skills.costPlus] = 0; arr_skill[normal.cigar, skills.usesPlus] = -1;
	
	//sneeze
	arr_skill[normal.sneeze, skills.name] = "SNEEZE";
	arr_skill[normal.sneeze, skills.desc] = "half your damage with a chance to freeze!";
	arr_skill[normal.sneeze, skills.anim] = ani_sneeze;
	
	arr_skill[normal.sneeze, skills.func] = function(){attack(st_damage/2); var ii= choose(1, 2); if(ii = 1){_other.frozenCountdown = 1; _other.arr_status[status.frozen] = true}};
	arr_skill[normal.sneeze, skills.cost] = 0; arr_skill[normal.sneeze, skills.uses] = -1;
	arr_skill[normal.sneeze, skills.selfIndex] = 2;
	arr_skill[normal.sneeze, skills.otherIndex] = 1;
	arr_skill[normal.sneeze, skills.sound] = snd_sneeze;
	arr_skill[normal.sneeze, skills.text] = string(var_name) + " SNEEZES!";
	arr_skill[normal.sneeze, skills.shop] = 25;
	
	arr_skill[normal.sneeze, skills.recharge] = 3;
	arr_skill[normal.sneeze, skills.weight] = 0;
	
	arr_skill[normal.sneeze, skills.descPlus] = "REGULAR DAMAGE WITH A CHANCE TO FREEZE!";
	arr_skill[normal.sneeze, skills.funcPlus] = function(){attack(st_damage); var ii= choose(1, 2); if(ii = 1){_other.frozenCountdown = 2; _other.arr_status[status.frozen] = true}};
	arr_skill[normal.sneeze, skills.costPlus] = 0; arr_skill[normal.sneeze, skills.usesPlus] = -1;
	
	//Freeze
	arr_skill[normal.freeze, skills.name] = "FREEZE";
	arr_skill[normal.freeze, skills.desc] = "FREEZE THE ENEMY!";
	arr_skill[normal.freeze, skills.anim] = ani_freeze;
	
	arr_skill[normal.freeze, skills.func] = function(){_other.frozenCountdown = 2; _other.arr_status[status.frozen] = true; if(_other = obj_player){_other.frozenCountdown = 2} else{_other.frozenCountdown = 3}};
	arr_skill[normal.freeze, skills.cost] = 0; arr_skill[normal.freeze, skills.uses] = 3;
	arr_skill[normal.freeze, skills.selfIndex] = 3;
	arr_skill[normal.freeze, skills.otherIndex] = 1;
	arr_skill[normal.freeze, skills.sound] = snd_freeze;
	arr_skill[normal.freeze, skills.text] = string(var_name) + " FREEZES THE ENEMY!";
	arr_skill[normal.freeze, skills.shop] = 25;
	
	arr_skill[normal.freeze, skills.recharge] = 5;
	arr_skill[normal.freeze, skills.weight] = 1;
	
	arr_skill[normal.freeze, skills.descPlus] = "FREEZE! FOR LONGER!";
	arr_skill[normal.freeze, skills.funcPlus] = function(){_other.frozenCountdown = 2; _other.arr_status[status.frozen] = true; if(_other = obj_player){_other.frozenCountdown = 4} else{_other.frozenCountdown = 5}};
	arr_skill[normal.freeze, skills.costPlus] = 0; arr_skill[normal.sneeze, skills.usesPlus] = -1;
	
	//Freeze
	
	var_snowballDmg = 1;
	arr_skill[normal.snowball, skills.name] = "SNOWBALL!";
	arr_skill[normal.snowball, skills.desc] = "SNOWBALLING DAMAGE! CURRENTLY ADDS +" + string(var_snowballDmg);
	arr_skill[normal.snowball, skills.anim] = ani_snowball;
	arr_skill[normal.snowball, skills.func] = function(){
			tempDmg += var_snowballDmg;
			
			if(var_snowballDmg >= 5)
			{
				var_snowballDmg = 0;
			};
			
			var_snowballDmg += 1;
			arr_skill[normal.snowball, skills.desc] = "SNOWBALLING DAMAGE! CURRENTLY ADDS +" + string(var_snowballDmg);
		};
	arr_skill[normal.snowball, skills.cost] = 0; arr_skill[normal.snowball, skills.uses] = -1;
	arr_skill[normal.snowball, skills.selfIndex] = 3;
	arr_skill[normal.snowball, skills.otherIndex] = 1;
	arr_skill[normal.snowball, skills.sound] = snd_freeze;
	arr_skill[normal.snowball, skills.text] = string(var_name) + "IS BUILDING UP SOME DAMAGE!";
	arr_skill[normal.snowball, skills.shop] = 25;
	
	arr_skill[normal.snowball, skills.recharge] = 3;
	arr_skill[normal.snowball, skills.weight] = 1;
	
	arr_skill[normal.snowball, skills.descPlus] = "SNOWBALL QUICK DAMAGE!";
	arr_skill[normal.snowball, skills.funcPlus] = function(){
			tempDmg += var_snowballDmg;
			
			if(var_snowballDmg >= 10)
			{
				var_snowballDmg = 0;
			};
			
			var_snowballDmg += 2;
			arr_skill[normal.snowball, skills.descPlus] = "SNOWBALL QUICK DAMAGE! CURRENTLY ADDS +" + string(var_snowballDmg);
		};
	arr_skill[normal.snowball, skills.costPlus] = 0; arr_skill[normal.snowball, skills.usesPlus] = -1;
	
	//rat
	arr_skill[normal.rat_pocket, skills.name] = "pocket rat";
	arr_skill[normal.rat_pocket, skills.desc] = "steals an enemy skill that you can keep!";
	arr_skill[normal.rat_pocket, skills.anim] = ani_pocket;
	
	arr_skill[normal.rat_pocket, skills.text] = string(var_name) + " STEALS A SKILL!";
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
					st_skillUses[i] = arr_skill[_other.st_skills[_ski], skills.uses];
					setSkillRecharge(i)
					break;
				};
				
				arr_skill[normal.rat_pocket, skills.text] = string(var_name) + " STEALS " + arr_skill[_other.st_skills[_ski], skills.name];
			};
		}
		else
		{
			for(i=0; i < 4; i++)
			{
				if(_self.st_skills[i] = normal.rat_pocket)
				{
					var _ski = irandom_range(normal.rat_bomb, normal.rat_cookie);
					st_skills[i] = _ski;
					st_skillUses[i] = arr_skill[_ski, skills.uses];
					setSkillRecharge(i);
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
	
	arr_skill[normal.rat_pocket, skills.recharge] = 3;
	arr_skill[normal.rat_pocket, skills.weight] = 1;
	
	arr_skill[normal.rat_pocket, skills.descPlus] = "KEEP AN ENHANCED ENEMY SKILL!";
	arr_skill[normal.rat_pocket, skills.funcPlus] = arr_skill[normal.rat_pocket, skills.func];
	arr_skill[normal.rat_pocket, skills.costPlus] = 0; arr_skill[normal.rat_pocket, skills.usesPlus] = -1;
	//rat
	arr_skill[normal.rat_bomb, skills.name] = "rat bomb";
	arr_skill[normal.rat_bomb, skills.desc] = "x3 damage to the enemy";
	arr_skill[normal.rat_bomb, skills.anim] = ani_attack;
	
	arr_skill[normal.rat_bomb, skills.text] = string(var_name) + " TOSSES A RAT BOMB!";
	arr_skill[normal.rat_bomb, skills.func] = function(){attack(st_damage*3)};
	arr_skill[normal.rat_bomb, skills.cost] = 0; arr_skill[normal.rat_bomb, skills.uses] = 3;
	arr_skill[normal.rat_bomb, skills.selfIndex] = 2;
	arr_skill[normal.rat_bomb, skills.otherIndex] = 1;
	arr_skill[normal.rat_bomb, skills.sound] = snd_explosion;
	arr_skill[normal.rat_bomb, skills.shop] = 50;
	
	arr_skill[normal.rat_bomb, skills.recharge] = 3;
	arr_skill[normal.rat_bomb, skills.weight] = 2;
	
	arr_skill[normal.rat_bomb, skills.descPlus] = "x4 DAMAGE TO THE ENEMY! ";
	arr_skill[normal.rat_bomb, skills.funcPlus] = function(){attack(st_damage*4)};
	arr_skill[normal.rat_bomb, skills.costPlus] = 0; arr_skill[normal.rat_bomb, skills.usesPlus] = 2;
	
	//rat
	arr_skill[normal.rat_spooky, skills.name] = "spooky rat";
	arr_skill[normal.rat_spooky, skills.desc] = "damages and spooks the enemy!";
	arr_skill[normal.rat_spooky, skills.anim] = ani_scare;
	
	arr_skill[normal.rat_spooky, skills.text] = string(var_name) + " TOSSES A " + arr_skill[normal.rat_spooky, skills.name];
	arr_skill[normal.rat_spooky, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.spooked]  = true};
	arr_skill[normal.rat_spooky, skills.cost] = 0; arr_skill[normal.rat_spooky, skills.uses] = 2;
	arr_skill[normal.rat_spooky, skills.selfIndex] = 2;
	arr_skill[normal.rat_spooky, skills.otherIndex] = 1;
	arr_skill[normal.rat_spooky, skills.sound] = snd_scare;
	arr_skill[normal.rat_spooky, skills.shop] = 25;
	
	arr_skill[normal.rat_spooky, skills.recharge] = 3;
	arr_skill[normal.rat_spooky, skills.weight] = 1;
	
	arr_skill[normal.rat_spooky, skills.descPlus] = "DAMAGES AND SPOOKS THE ENEMY! COSTS NO TURNS";
	arr_skill[normal.rat_spooky, skills.funcPlus] = function(){attack(st_damage*2); _other.arr_status[status.spooked] = true; global.turn = 1};
	arr_skill[normal.rat_spooky, skills.costPlus] = 0; arr_skill[normal.rat_spooky, skills.usesPlus] = 2;
	
	//rat
	arr_skill[normal.rat_bitter, skills.name] = "bitter rat";
	arr_skill[normal.rat_bitter, skills.desc] = "damages and bitters the enemy!";
	arr_skill[normal.rat_bitter, skills.anim] = ani_bitter;
	
	arr_skill[normal.rat_bitter, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_bitter, skills.name];
	arr_skill[normal.rat_bitter, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.bitter]  = true};
	arr_skill[normal.rat_bitter, skills.cost] = 0; arr_skill[normal.rat_bitter, skills.uses] = 3;
	arr_skill[normal.rat_bitter, skills.selfIndex] = 2;
	arr_skill[normal.rat_bitter, skills.otherIndex] = 1;
	arr_skill[normal.rat_bitter, skills.sound] = snd_bitter;
	arr_skill[normal.rat_bitter, skills.shop] = 25;
	
	arr_skill[normal.rat_bitter, skills.recharge] = 3;
	arr_skill[normal.rat_bitter, skills.weight] = 0;
	
	arr_skill[normal.rat_bitter, skills.descPlus] = "DAMAGES AND BITTERS THE ENEMY! COSTS NO TURNS";
	arr_skill[normal.rat_bitter, skills.funcPlus] = function(){attack(st_damage*2); _other.arr_status[status.bitter] = true; global.turn = 1};
	arr_skill[normal.rat_bitter, skills.costPlus] = 0; arr_skill[normal.rat_bitter, skills.usesPlus] = 2;
	
	//rat
	arr_skill[normal.rat_mossy, skills.name] = "mossy rat";
	arr_skill[normal.rat_mossy, skills.desc] = "damages and shrooms the enemy!";
	arr_skill[normal.rat_mossy, skills.anim] = ani_shroom;
	
	arr_skill[normal.rat_mossy, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_mossy, skills.name];
	arr_skill[normal.rat_mossy, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.shroomed] = true};
	arr_skill[normal.rat_mossy, skills.cost] = 0; arr_skill[normal.rat_mossy, skills.uses] = 3;
	arr_skill[normal.rat_mossy, skills.selfIndex] = 2;
	arr_skill[normal.rat_mossy, skills.otherIndex] = 1;
	arr_skill[normal.rat_mossy, skills.sound] = snd_shroom;
	arr_skill[normal.rat_mossy, skills.shop] = 25;
	
	arr_skill[normal.rat_mossy, skills.recharge] = 3;
	arr_skill[normal.rat_mossy, skills.weight] = 1;
	
	arr_skill[normal.rat_mossy, skills.descPlus] = "DAMAGES AND SHROOMS THE ENEMY! COSTS NO TURNS";
	arr_skill[normal.rat_mossy, skills.funcPlus] = function(){attack(st_damage*2); _other.arr_status[status.shroomed] = true; global.turn = 1};
	arr_skill[normal.rat_mossy, skills.costPlus] = 0; arr_skill[normal.rat_mossy, skills.usesPlus] = 2;
	
	//rat
	arr_skill[normal.rat_burnt, skills.name] = "burnt rat";
	arr_skill[normal.rat_burnt, skills.desc] = "damages and burns the enemy!";
	arr_skill[normal.rat_burnt, skills.anim] = ani_fireball;
	
	arr_skill[normal.rat_burnt, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_burnt, skills.name];
	arr_skill[normal.rat_burnt, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.burnt] = true};
	arr_skill[normal.rat_burnt, skills.cost] = 0; arr_skill[normal.rat_burnt, skills.uses] = 3;
	arr_skill[normal.rat_burnt, skills.selfIndex] = 2;
	arr_skill[normal.rat_burnt, skills.otherIndex] = 1;
	arr_skill[normal.rat_burnt, skills.sound] = snd_fire;
	arr_skill[normal.rat_burnt, skills.shop] = 25;
	
	arr_skill[normal.rat_burnt, skills.recharge] = 3;
	arr_skill[normal.rat_burnt, skills.weight] = 1;
	
	arr_skill[normal.rat_burnt, skills.descPlus] = "DAMAGES AND BURNS THE ENEMY! COSTS NO TURNS";
	arr_skill[normal.rat_burnt, skills.funcPlus] = function(){attack(st_damage*2); _other.arr_status[status.burnt] = true; global.turn = 1};
	arr_skill[normal.rat_burnt, skills.costPlus] = 0; arr_skill[normal.rat_burnt, skills.usesPlus] = 2;
	//rat
	arr_skill[normal.rat_rabid, skills.name] = "rabid rat";
	arr_skill[normal.rat_rabid, skills.desc] = "damages and rots enemy";
	arr_skill[normal.rat_rabid, skills.anim] = ani_rot;
	
	arr_skill[normal.rat_rabid, skills.text] = string(var_name) + " TOSSES A" + arr_skill[normal.rat_rabid, skills.name];
	arr_skill[normal.rat_rabid, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.rotten] = true};
	arr_skill[normal.rat_rabid, skills.cost] = 0; arr_skill[normal.rat_rabid, skills.uses] = 3;
	arr_skill[normal.rat_rabid, skills.selfIndex] = 2;
	arr_skill[normal.rat_rabid, skills.otherIndex] = 1;
	arr_skill[normal.rat_rabid, skills.sound] = snd_rot;
	arr_skill[normal.rat_rabid, skills.shop] = 25;
	
	arr_skill[normal.rat_rabid, skills.recharge] = 3;
	arr_skill[normal.rat_rabid, skills.weight] = 0;
	
	arr_skill[normal.rat_rabid, skills.descPlus] = "DAMAGES AND ROTS THE ENEMY! COSTS NO TURNS";
	arr_skill[normal.rat_rabid, skills.funcPlus] = function(){attack(st_damage*2); _other.arr_status[status.rotten] = true; global.turn = 1};
	arr_skill[normal.rat_rabid, skills.costPlus] = 0; arr_skill[normal.rat_rabid, skills.usesPlus] = 2;
	
	//rat
	arr_skill[normal.rat_nurse, skills.name] = "rat nurse";
	arr_skill[normal.rat_nurse, skills.desc] = "HEALS SOME HP, REMOVES STATUS EFFECTS!";
	arr_skill[normal.rat_nurse, skills.anim] = ani_heal;
	
	arr_skill[normal.rat_nurse, skills.text] = string(var_name) + " RECIEVES MEDICAL AID"
	arr_skill[normal.rat_nurse, skills.func] = function(){regen(_self, maxHp/1.5); for(i=0; i <= 10; i++){_self.arr_status[i]= false}};
	arr_skill[normal.rat_nurse, skills.cost] = 0; arr_skill[normal.rat_nurse, skills.uses] = 3;
	arr_skill[normal.rat_nurse, skills.selfIndex] = 3;
	arr_skill[normal.rat_nurse, skills.otherIndex] = 0;
	arr_skill[normal.rat_nurse, skills.sound] = snd_heal;
	arr_skill[normal.rat_nurse, skills.shop] = 25;
	
	arr_skill[normal.rat_nurse, skills.recharge] = 3;
	arr_skill[normal.rat_nurse, skills.weight] = 0;
	
	arr_skill[normal.rat_nurse, skills.descPlus] = "HEALS 1/2HP, REMOVES STATUS EFFECTS!";
	arr_skill[normal.rat_nurse, skills.funcPlus] = function(){regen(_self, maxHp/2); for(i=0; i <= 10; i++){_self.arr_status[i]= false}};
	arr_skill[normal.rat_nurse, skills.costPlus] = 0; arr_skill[normal.rat_nurse, skills.usesPlus] = 5;
	//rat
	arr_skill[normal.rat_gym, skills.name] = "gym rat";
	arr_skill[normal.rat_gym, skills.desc] = "ENCOURAGES YOU TO RAISE YOUR DEFENSE!";
	arr_skill[normal.rat_gym, skills.anim] = ani_resist;
	
	arr_skill[normal.rat_gym, skills.text] = string(var_name) + "'S DEFENSE GOES UP!"
	arr_skill[normal.rat_gym, skills.func] = function(){_self.tempDef += 30};
	arr_skill[normal.rat_gym, skills.cost] = 0; arr_skill[normal.rat_gym, skills.uses] = 3;
	arr_skill[normal.rat_gym, skills.selfIndex] = 3;
	arr_skill[normal.rat_gym, skills.otherIndex] = 0;
	arr_skill[normal.rat_gym, skills.sound] = snd_defenseUp;
	arr_skill[normal.rat_gym, skills.shop] = 25;
	
	arr_skill[normal.rat_gym, skills.recharge] = 3;
	arr_skill[normal.rat_gym, skills.weight] = 0;
	
	arr_skill[normal.rat_gym, skills.descPlus] = "RAISE YOUR DEFENSE AND DAMAGE THE ENEMY!";
	arr_skill[normal.rat_gym, skills.funcPlus] = function(){attack(st_damage); _self.tempDef += 40};
	arr_skill[normal.rat_gym, skills.costPlus] = 0; arr_skill[normal.rat_gym, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_angry, skills.name] = "angry rat";
	arr_skill[normal.rat_angry, skills.desc] = "ENCOURAGES YOU TO RAISE YOUR DAMAGE!";
	arr_skill[normal.rat_angry, skills.anim] = ani_angry;
	
	arr_skill[normal.rat_angry, skills.text] = string(var_name) + "'S DAMAGE GOES UP!"
	arr_skill[normal.rat_angry, skills.func] = function(){_self.tempDmg += 5};
	arr_skill[normal.rat_angry, skills.cost] = 0; arr_skill[normal.rat_angry, skills.uses] = 3;
	arr_skill[normal.rat_angry, skills.selfIndex] = 2;
	arr_skill[normal.rat_angry, skills.otherIndex] = 1;
	arr_skill[normal.rat_angry, skills.sound] = snd_defenseUp;
	arr_skill[normal.rat_angry, skills.shop] = 25;
	
	arr_skill[normal.rat_angry, skills.recharge] = 3;
	arr_skill[normal.rat_angry, skills.weight] = 0;
	
	arr_skill[normal.rat_angry, skills.descPlus] = "RAISE YOUR DAMAGE AND DEAL SOME TO THE ENEMY!";
	arr_skill[normal.rat_angry, skills.funcPlus] = function(){_self.tempDmg += 10; attack(st_damage)};
	arr_skill[normal.rat_angry, skills.costPlus] = 0; arr_skill[normal.rat_angry, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_jester, skills.name] = "jester rat";
	arr_skill[normal.rat_jester, skills.desc] = "ENTERTAINS THE ENEMY, LOWERING THEIR DEFENSE!";
	arr_skill[normal.rat_jester, skills.anim] = ani_distract;
	
	arr_skill[normal.rat_jester, skills.text] = string(var_name) + " ENTERTAINS THE ENEMY!"
	arr_skill[normal.rat_jester, skills.func] = function(){_other.tempDef -= 30};
	arr_skill[normal.rat_jester, skills.cost] = 0; arr_skill[normal.rat_jester, skills.uses] = 3;
	arr_skill[normal.rat_jester, skills.selfIndex] = 0;
	arr_skill[normal.rat_jester, skills.otherIndex] = 3;
	arr_skill[normal.rat_jester, skills.sound] = snd_defenseDown;
	arr_skill[normal.rat_jester, skills.shop] = 25;
	
	arr_skill[normal.rat_jester, skills.recharge] = 3;
	arr_skill[normal.rat_jester, skills.weight] = 0;
	
	arr_skill[normal.rat_jester, skills.descPlus] = "LOWER ENEMY DEFENSE AND DAMAGE THEM!";
	arr_skill[normal.rat_jester, skills.funcPlus] = function(){_other.tempDef -= 40; attack(st_damage)};
	arr_skill[normal.rat_jester, skills.costPlus] = 0; arr_skill[normal.rat_jester, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_bad, skills.name] = "bad rat";
	arr_skill[normal.rat_bad, skills.desc] = "THREATENS THE ENEMY TO LOWER THEIR DAMAGE!";
	arr_skill[normal.rat_bad, skills.anim] = ani_angry;
	
	arr_skill[normal.rat_bad, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_bad, skills.name];
	arr_skill[normal.rat_bad, skills.func] = function(){_other.tempDmg = round(-_other.st_damage/2)};
	arr_skill[normal.rat_bad, skills.cost] = 0; arr_skill[normal.rat_bad, skills.uses] = 3;
	arr_skill[normal.rat_bad, skills.selfIndex] = 3;
	arr_skill[normal.rat_bad, skills.otherIndex] = 0;
	arr_skill[normal.rat_bad, skills.sound] = snd_defenseDown;
	arr_skill[normal.rat_bad, skills.shop] = 25;
	
	arr_skill[normal.rat_bad, skills.recharge] = 3;
	arr_skill[normal.rat_bad, skills.weight] = 0;
	
	arr_skill[normal.rat_bad, skills.descPlus] = "LOWER ENEMY DAMAGE AND HURT THEM!";
	arr_skill[normal.rat_bad, skills.funcPlus] = function(){_other.tempDmg -= 5; attack(st_damage)};
	arr_skill[normal.rat_bad, skills.costPlus] = 0; arr_skill[normal.rat_bad, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_kamikaze, skills.name] = "kamikaze rat";
	arr_skill[normal.rat_kamikaze, skills.desc] = "makes the enemy explode!";
	arr_skill[normal.rat_kamikaze, skills.anim] = ani_kamikaze;
	
	arr_skill[normal.rat_kamikaze, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_kamikaze, skills.name];
	arr_skill[normal.rat_kamikaze, skills.func] = function(){with(_other){skill(normal.explode, false)}};
	arr_skill[normal.rat_kamikaze, skills.cost] = 0; arr_skill[normal.rat_kamikaze, skills.uses] = 1;
	arr_skill[normal.rat_kamikaze, skills.selfIndex] = 2;
	arr_skill[normal.rat_kamikaze, skills.otherIndex] = 1;
	arr_skill[normal.rat_kamikaze, skills.sound] = snd_punch;
	arr_skill[normal.rat_kamikaze, skills.shop] = 50;
	
	arr_skill[normal.rat_kamikaze, skills.recharge] = 3;
	arr_skill[normal.rat_kamikaze, skills.weight] = 2;
	
	arr_skill[normal.rat_kamikaze, skills.descPlus] = "MAKES THE ENEMY EXPLODE! DISENGAGE AS WELL";
	arr_skill[normal.rat_kamikaze, skills.funcPlus] = function(){_self.arr_status[status.disengaged] = true;with(_other){skill(normal.explode, false)}};
	arr_skill[normal.rat_kamikaze, skills.costPlus] = 0; arr_skill[normal.rat_kamikaze, skills.usesPlus] = 1;
	//rat
	arr_skill[normal.rat_miniKing, skills.name] = "mini king";
	arr_skill[normal.rat_miniKing, skills.desc] = "REPLACES ALL YOUR SKILLS WITH RAT RELATED ONES";
	arr_skill[normal.rat_miniKing, skills.anim] = ani_crown;
	
	arr_skill[normal.rat_miniKing, skills.text] = string(var_name) + " GETS AN UPGRADED SKILLSET!"
	arr_skill[normal.rat_miniKing, skills.func] = function(){
		for(i=0; i<4; i++)
		{
			var _skill = irandom_range(normal.rat_pocket, normal.rat_ratuary); 
			st_skills[i] = _skill;
			st_skillUses[i] = arr_skill[_skill, skills.uses];
			setSkillRecharge(i);
		};
	};
	arr_skill[normal.rat_miniKing, skills.cost] = 0; arr_skill[normal.rat_miniKing, skills.uses] = -1;
	arr_skill[normal.rat_miniKing, skills.selfIndex] = 3;
	arr_skill[normal.rat_miniKing, skills.otherIndex] = 0;
	arr_skill[normal.rat_miniKing, skills.sound] = snd_heal;
	arr_skill[normal.rat_miniKing, skills.shop] = 50;
	
	arr_skill[normal.rat_miniKing, skills.recharge] = 7;
	arr_skill[normal.rat_miniKing, skills.weight] = 2;
	
	arr_skill[normal.rat_miniKing, skills.descPlus] = "REPLACES ALL YOUR SKILLS WITH RAT RELATED ONES";
	arr_skill[normal.rat_miniKing, skills.funcPlus] = arr_skill[normal.rat_miniKing, skills.func]
	arr_skill[normal.rat_miniKing, skills.costPlus] = 0; arr_skill[normal.rat_miniKing, skills.usesPlus] = 1;
	
	//rat
	arr_skill[normal.rat_horn, skills.name] = "RAT HORN";
	arr_skill[normal.rat_horn, skills.desc] = "HONK HONK ( CHEESY )";
	arr_skill[normal.rat_horn, skills.anim] = ani_horn;
	
	arr_skill[normal.rat_horn, skills.text] = string(var_name) + " BLOWS THE " + arr_skill[normal.rat_horn, skills.name];
	arr_skill[normal.rat_horn, skills.func] = function(){};
	arr_skill[normal.rat_horn, skills.cost] = 0; arr_skill[normal.rat_horn, skills.uses] = -1;
	arr_skill[normal.rat_horn, skills.selfIndex] = 3;
	arr_skill[normal.rat_horn, skills.otherIndex] = 3;
	arr_skill[normal.rat_horn, skills.sound] = snd_honkCheese;
	arr_skill[normal.rat_horn, skills.shop] = 25;
	
	arr_skill[normal.rat_horn, skills.recharge] = 3;
	arr_skill[normal.rat_horn, skills.weight] = 0;
	
	arr_skill[normal.rat_horn, skills.descPlus] = "HONK HONK! ( VERY CHEESY )";
	arr_skill[normal.rat_horn, skills.funcPlus] = arr_skill[normal.rat_horn, skills.func]
	arr_skill[normal.rat_horn, skills.costPlus] = 0; arr_skill[normal.rat_horn, skills.usesPlus] = -1;
	
	//rat
	arr_skill[normal.rat_ratuary, skills.name] = "ratuary";
	arr_skill[normal.rat_ratuary, skills.desc] = "use a random rat skill!";
	arr_skill[normal.rat_ratuary, skills.anim] = ani_blank;
	
	arr_skill[normal.rat_ratuary, skills.text] = string(var_name) + " uses the RATUARY"
	arr_skill[normal.rat_ratuary, skills.func] = function(){
		var _ski = irandom_range(normal.rat_pocket, normal.cheese_liquid)
		skill(_ski, false)
		
		arr_skill[normal.rat_ratuary, skills.text] = "THE RATUARY ACTIVATED " + arr_skill[_ski, skills.name]
	};
	arr_skill[normal.rat_ratuary, skills.cost] = 1; arr_skill[normal.rat_ratuary, skills.uses] = -1;
	arr_skill[normal.rat_ratuary, skills.selfIndex] = 3;
	arr_skill[normal.rat_ratuary, skills.otherIndex] = 0;
	arr_skill[normal.rat_ratuary, skills.sound] = snd_steal;
	arr_skill[normal.rat_ratuary, skills.shop] = 50;
	
	arr_skill[normal.rat_ratuary, skills.recharge] = 5;
	arr_skill[normal.rat_ratuary, skills.weight] = 2;
	
	arr_skill[normal.rat_ratuary, skills.descPlus] = "use a random rat skill!";
	arr_skill[normal.rat_ratuary, skills.funcPlus] = arr_skill[normal.rat_ratuary, skills.func]
	arr_skill[normal.rat_ratuary, skills.costPlus] = 0; arr_skill[normal.rat_ratuary, skills.usesPlus] = 1;
	
	//rat
	arr_skill[normal.cheese_expensive, skills.name] = "EXPENSIVE CHEESE";
	arr_skill[normal.cheese_expensive, skills.desc] = "HEALS ALL HP!";
	arr_skill[normal.cheese_expensive, skills.anim] = ani_cheese;
	
	arr_skill[normal.cheese_expensive, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cheese_expensive, skills.name];
	arr_skill[normal.cheese_expensive, skills.func] = function(){regen(_self, maxHp)};
	arr_skill[normal.cheese_expensive, skills.cost] = 1; arr_skill[normal.cheese_expensive, skills.uses] = 3;
	arr_skill[normal.cheese_expensive, skills.selfIndex] = 3;
	arr_skill[normal.cheese_expensive, skills.otherIndex] = 0;
	arr_skill[normal.cheese_expensive, skills.sound] = snd_grilledCheese;
	arr_skill[normal.cheese_expensive, skills.shop] = 25;
	
	arr_skill[normal.cheese_expensive, skills.recharge] = 0;
	arr_skill[normal.cheese_expensive, skills.weight] = 1;
	
	arr_skill[normal.cheese_expensive, skills.descPlus] = "HEALS ALL HP! COSTS NO TURNS";
	arr_skill[normal.cheese_expensive, skills.funcPlus] = function(){regen(_self, maxHp); global.turn = 1};
	arr_skill[normal.cheese_expensive, skills.costPlus] = 0; arr_skill[normal.cheese_expensive, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.cheese_liquid, skills.name] = "liquid cheese";
	arr_skill[normal.cheese_liquid, skills.desc] = "HEALS SOME HP, MAKES YOU TIPSY!";
	arr_skill[normal.cheese_liquid, skills.anim] = ani_tipsy;
	
	arr_skill[normal.cheese_liquid, skills.text] = string(var_name) + " DRINKS SOME " + arr_skill[normal.cheese_liquid, skills.name];
	arr_skill[normal.cheese_liquid, skills.func] = function(){regen(_self, maxHp *.70); _self.arr_status[status.tipsy] = true};
	arr_skill[normal.cheese_liquid, skills.cost] = 0; arr_skill[normal.cheese_liquid, skills.uses] = 3;
	arr_skill[normal.cheese_liquid, skills.selfIndex] = 3;
	arr_skill[normal.cheese_liquid, skills.otherIndex] = 0;
	arr_skill[normal.cheese_liquid, skills.sound] = snd_heal;
	arr_skill[normal.cheese_liquid, skills.shop] = 25;
	
	arr_skill[normal.cheese_liquid, skills.recharge] = 3;
	arr_skill[normal.cheese_liquid, skills.weight] = 0;
	
	arr_skill[normal.cheese_liquid, skills.descPlus] = "HEALS SOME HP! CHANCE TO MAKE YOU TIPSY";
	arr_skill[normal.cheese_liquid, skills.funcPlus] = function(){regen(_self, maxHp *.70); var ii = choose(1, 2, 3, 4); if(ii = 1){_self.arr_status[status.tipsy] = true}};
	arr_skill[normal.cheese_liquid, skills.costPlus] = 0; arr_skill[normal.cheese_liquid, skills.usesPlus] = 1;
	
	//rat
	arr_skill[normal.rat_iced, skills.name] = "iced rat";
	arr_skill[normal.rat_iced, skills.desc] = "damages and freezes the enemy!";
	arr_skill[normal.rat_iced, skills.anim] = ani_attack;
	
	arr_skill[normal.rat_iced, skills.text] = string(var_name) + " TOSSES AN " + arr_skill[normal.rat_iced, skills.name];
	arr_skill[normal.rat_iced, skills.func] = function(){attack(st_damage*1.5); _other.frozenCountdown = 2; _other.arr_status[status.frozen] = true};
	arr_skill[normal.rat_iced, skills.cost] = 0; arr_skill[normal.rat_iced, skills.uses] = 3;
	arr_skill[normal.rat_iced, skills.selfIndex] = 3;
	arr_skill[normal.rat_iced, skills.otherIndex] = 0;
	arr_skill[normal.rat_iced, skills.sound] = snd_hit;
	arr_skill[normal.rat_iced, skills.shop] = 25;
	
	arr_skill[normal.rat_iced, skills.recharge] = 3;
	arr_skill[normal.rat_iced, skills.weight] = 1;
	
	arr_skill[normal.rat_iced, skills.descPlus] = "damages and freezes the enemy! COSTS NO TURNS";
	arr_skill[normal.rat_iced, skills.funcPlus] = function(){attack(st_damage*1.5); _other.frozenCountdown = 2; _other.arr_status[status.frozen] = true; global.turn = 1};
	arr_skill[normal.rat_iced, skills.costPlus] = 0; arr_skill[normal.rat_iced, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_electro, skills.name] = "electric rat";
	arr_skill[normal.rat_electro, skills.desc] = "damages and electrocutes the enemy!";
	arr_skill[normal.rat_electro, skills.anim] = ani_attack;
	
	arr_skill[normal.rat_electro, skills.text] = string(var_name) + " tosses a " + arr_skill[normal.rat_electro, skills.name];
	arr_skill[normal.rat_electro, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.electrocuted] = true; _other.electrocuted = 3};
	arr_skill[normal.rat_electro, skills.cost] = 0; arr_skill[normal.rat_electro, skills.uses] = 2;
	arr_skill[normal.rat_electro, skills.selfIndex] = 2;
	arr_skill[normal.rat_electro, skills.otherIndex] = 1;
	arr_skill[normal.rat_electro, skills.sound] = snd_hit;
	arr_skill[normal.rat_electro, skills.shop] = 25;
	
	arr_skill[normal.rat_electro, skills.recharge] = 3;
	arr_skill[normal.rat_electro, skills.weight] = 1;
	
	arr_skill[normal.rat_electro, skills.descPlus] = "damages and electrocutes the enemy! COSTS NO TURNS";
	arr_skill[normal.rat_electro, skills.funcPlus] = function(){attack(st_damage*1.5);  _other.arr_status[status.electrocuted] = true; _other.electrocuted = 3; global.turn = 1};
	arr_skill[normal.rat_electro, skills.costPlus] = 0; arr_skill[normal.rat_electro, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_e, skills.name] = "e-rat";
	arr_skill[normal.rat_e, skills.desc] = "damages and connects the enemy!";
	arr_skill[normal.rat_e, skills.anim] = ani_attack;
	
	arr_skill[normal.rat_e, skills.text] = string(var_name) + " tosses an " + arr_skill[normal.rat_e, skills.name];
	arr_skill[normal.rat_e, skills.func] = function(){attack(st_damage*1.5); _other.arr_status[status.connected] = true; _other.connectedCountdown = 3};
	arr_skill[normal.rat_e, skills.cost] = 0; arr_skill[normal.rat_e, skills.uses] = 3;
	arr_skill[normal.rat_e, skills.selfIndex] = 2;
	arr_skill[normal.rat_e, skills.otherIndex] = 1;
	arr_skill[normal.rat_e, skills.sound] = snd_hit;
	arr_skill[normal.rat_e, skills.shop] = 25;
	
	arr_skill[normal.rat_e, skills.recharge] = 3;
	arr_skill[normal.rat_e, skills.weight] = 1;
	
	arr_skill[normal.rat_e, skills.descPlus] = "damages and connects the enemy! COSTS NO TURNS";
	arr_skill[normal.rat_e, skills.funcPlus] = function(){attack(st_damage*1.5);  _other.arr_status[status.connected] = true; _other.connectedCountdown = 3; global.turn = 1};
	arr_skill[normal.rat_e, skills.costPlus] = 0; arr_skill[normal.rat_e, skills.usesPlus] = 3;
	
	//rat
	arr_skill[normal.rat_cookie, skills.name] = "cookie rat";
	arr_skill[normal.rat_cookie, skills.desc] = "BRINGS A COOKIE!";
	arr_skill[normal.rat_cookie, skills.anim] = ani_cookie;
	
	arr_skill[normal.rat_cookie, skills.text] = string(var_name) + " RECIEVES A COOKIE!"
	arr_skill[normal.rat_cookie, skills.func] = function(){for(i=0; i<4; i++){if(st_skills[i] = normal.rat_cookie){var _cookie = irandom_range(normal.cookie, normal.cookie_lucky); st_skills[i] = _cookie; st_skillUses[i] = arr_skill[_cookie, skills.uses]}}};
	arr_skill[normal.rat_cookie, skills.cost] = 0; arr_skill[normal.rat_cookie, skills.uses] = -1;
	arr_skill[normal.rat_cookie, skills.selfIndex] = 3;
	arr_skill[normal.rat_cookie, skills.otherIndex] = 0;
	arr_skill[normal.rat_cookie, skills.sound] = snd_cookie;
	arr_skill[normal.rat_cookie, skills.shop] = 25;
	
	arr_skill[normal.rat_cookie, skills.recharge] = 3;
	arr_skill[normal.rat_cookie, skills.weight] = 1;
	
	arr_skill[normal.rat_cookie, skills.descPlus] = "BRINGS AN ENHANCED COOKIE!";
	arr_skill[normal.rat_cookie, skills.funcPlus] = arr_skill[normal.rat_cookie, skills.func]
	arr_skill[normal.rat_cookie, skills.costPlus] = 0; arr_skill[normal.rat_cookie, skills.usesPlus] = -1;
	
	//COOKIE JAR
	arr_skill[normal.cookie_jar, skills.name] = "cookie jar";
	arr_skill[normal.cookie_jar, skills.desc] = "grab a random cookie!";
	arr_skill[normal.cookie_jar, skills.anim] = ani_blank;
	
	arr_skill[normal.cookie_jar, skills.text] = string(var_name) + " EATS A COOKIE!";
	arr_skill[normal.cookie_jar, skills.func] = function(){
			var _cookie = irandom_range(normal.cookie, normal.cookie_lucky);
			skill(_cookie, false);
			arr_skill[normal.cookie_jar, skills.text] = string(var_name) + " EATS A " + string(arr_skill[_cookie, skills.name]);
		};
	arr_skill[normal.cookie_jar, skills.cost] = 0; arr_skill[normal.cookie_jar, skills.uses] = 5;
	arr_skill[normal.cookie_jar, skills.selfIndex] = 3;
	arr_skill[normal.cookie_jar, skills.otherIndex] = 0;
	arr_skill[normal.cookie_jar, skills.sound] = snd_steal;
	arr_skill[normal.cookie_jar, skills.shop] = 25;
	
	arr_skill[normal.cookie_jar, skills.recharge] = 3;
	arr_skill[normal.cookie_jar, skills.weight] = 1;
	
	arr_skill[normal.cookie_jar, skills.descPlus] = "grab a random cookie!";
	arr_skill[normal.cookie_jar, skills.funcPlus] = arr_skill[normal.cookie_jar, skills.func]
	arr_skill[normal.cookie_jar, skills.costPlus] = 0; arr_skill[normal.cookie_jar, skills.usesPlus] = 5;
	
	//COOKIE
	arr_skill[normal.cookie, skills.name] = "cookie";
	arr_skill[normal.cookie, skills.desc] = "HEALS SOME HP";
	arr_skill[normal.cookie, skills.anim] = ani_cookie;
	
	arr_skill[normal.cookie, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie, skills.name];
	arr_skill[normal.cookie, skills.func] = function(){regen(_self, maxHp/3);};
	arr_skill[normal.cookie, skills.cost] = 0; arr_skill[normal.cookie, skills.uses] = 3;
	arr_skill[normal.cookie, skills.selfIndex] = 3;
	arr_skill[normal.cookie, skills.otherIndex] = 0;
	arr_skill[normal.cookie, skills.sound] = snd_cookie;
	arr_skill[normal.cookie, skills.shop] = 25;
	
	arr_skill[normal.cookie, skills.recharge] = 3;
	arr_skill[normal.cookie, skills.weight] = 1;
	
	arr_skill[normal.cookie, skills.descPlus] = "HEALS 1/2HP";
	arr_skill[normal.cookie, skills.funcPlus] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.cookie, skills.costPlus] = 0; arr_skill[normal.cookie, skills.usesPlus] = 3;
	
	//CHRISTMAS
	arr_skill[normal.cookie_christmas, skills.name] = "christmas cookie";
	arr_skill[normal.cookie_christmas, skills.desc] = "HEALS SOME HP! ( WITH THE POWER OF CHRISTMAS)";
	arr_skill[normal.cookie_christmas, skills.anim] = ani_cookieChristmas;
	
	arr_skill[normal.cookie_christmas, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_christmas, skills.name];
	arr_skill[normal.cookie_christmas, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.cookie_christmas, skills.cost] = 0; arr_skill[normal.cookie_christmas, skills.uses] = 3;
	arr_skill[normal.cookie_christmas, skills.selfIndex] = 3;
	arr_skill[normal.cookie_christmas, skills.otherIndex] = 0;
	arr_skill[normal.cookie_christmas, skills.sound] = snd_cookieChristmas;
	arr_skill[normal.cookie_christmas, skills.shop] = 25;
	
	arr_skill[normal.cookie_christmas, skills.recharge] = 3;
	arr_skill[normal.cookie_christmas, skills.weight] = 1;
	
	arr_skill[normal.cookie_christmas, skills.descPlus] = "HEALS ALL HP";
	arr_skill[normal.cookie_christmas, skills.funcPlus] = function(){regen(_self, maxHp)};
	arr_skill[normal.cookie_christmas, skills.costPlus] = 0; arr_skill[normal.cookie_christmas, skills.usesPlus] = 3;
	
	//VALENTINES
	arr_skill[normal.cookie_valentine, skills.name] = "valentine cookie";
	arr_skill[normal.cookie_valentine, skills.desc] = "HEALS SOME HP AND GIVES YOU REGENERATION";
	arr_skill[normal.cookie_valentine, skills.anim] = ani_cookieValentine;
	
	arr_skill[normal.cookie_valentine, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_valentine, skills.name];
	arr_skill[normal.cookie_valentine, skills.func] = function(){regen(_self, maxHp/3); _self.arr_status[status.regeneration] = true; _self.regenCountdown = 3};
	arr_skill[normal.cookie_valentine, skills.cost] = 0; arr_skill[normal.cookie_valentine, skills.uses] = 3;
	arr_skill[normal.cookie_valentine, skills.selfIndex] = 3;
	arr_skill[normal.cookie_valentine, skills.otherIndex] = 0;
	arr_skill[normal.cookie_valentine, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_valentine, skills.shop] = 25;
	
	arr_skill[normal.cookie_valentine, skills.recharge] = 3;
	arr_skill[normal.cookie_valentine, skills.weight] = 1;
	
	arr_skill[normal.cookie_valentine, skills.descPlus] = "HEALS 1/2HP AND GIVES YOU REGENERATION";
	arr_skill[normal.cookie_valentine, skills.funcPlus] = function(){regen(_self, maxHp/2); _self.arr_status[status.regeneration] = true; _self.regenCountdown = 3};
	arr_skill[normal.cookie_valentine, skills.costPlus] = 0; arr_skill[normal.cookie_valentine, skills.usesPlus] = 3;
	
	//EASTER
	arr_skill[normal.cookie_easter, skills.name] = "easter cookie";
	arr_skill[normal.cookie_easter, skills.desc] = "HEALS SOME HP ( FESTIVELY )";
	arr_skill[normal.cookie_easter, skills.anim] = ani_cookieEaster;
	
	arr_skill[normal.cookie_easter, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cookie_easter, skills.name];
	arr_skill[normal.cookie_easter, skills.func] = function(){regen(_self, maxHp/2)};
	arr_skill[normal.cookie_easter, skills.cost] = 0; arr_skill[normal.cookie_easter, skills.uses] = 3;
	arr_skill[normal.cookie_easter, skills.selfIndex] = 3;
	arr_skill[normal.cookie_easter, skills.otherIndex] = 0;
	arr_skill[normal.cookie_easter, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_easter, skills.shop] = 25;
	
	arr_skill[normal.cookie_easter, skills.recharge] = 3;
	arr_skill[normal.cookie_easter, skills.weight] = 0;
	
	arr_skill[normal.cookie_easter, skills.descPlus] = "HEALS ALL HP! ( FESTIVELY )";
	arr_skill[normal.cookie_easter, skills.funcPlus] = function(){regen(_self, maxHp)};
	arr_skill[normal.cookie_easter, skills.costPlus] = 0; arr_skill[normal.cookie_easter, skills.usesPlus] = 3;
	
	//SPICY
	arr_skill[normal.cookie_spicy, skills.name] = "spicy cookie";
	arr_skill[normal.cookie_spicy, skills.desc] = "HEALS SOME HP, might make the enemy explode";
	arr_skill[normal.cookie_spicy, skills.anim] = ani_cookieSpicy;
	
	arr_skill[normal.cookie_spicy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_spicy, skills.name];
	arr_skill[normal.cookie_spicy, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var ii = choose(1, 2); 
		if(ii = 1)
		{
			with(_other)
			{
				skill(normal.explode, false)
			};
		};
	};
	arr_skill[normal.cookie_spicy, skills.cost] = 0; arr_skill[normal.cookie_spicy, skills.uses] = 3;
	arr_skill[normal.cookie_spicy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_spicy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_spicy, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_spicy, skills.shop] = 25;
	
	arr_skill[normal.cookie_spicy, skills.recharge] = 3;
	arr_skill[normal.cookie_spicy, skills.weight] = 1;
	
	arr_skill[normal.cookie_spicy, skills.descPlus] = "HEALS HP, MAYBE INSTAKILL THE ENEMY!";
	arr_skill[normal.cookie_spicy, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var ii = choose(1, 2); 
		if(ii = 1)
		{
			with(_other)
			{
				skill(normal.explode, true)
				_self.arr_status[status.disengaged] = true;
			};
		};
	};
	arr_skill[normal.cookie_spicy, skills.costPlus] = 0; arr_skill[normal.cookie_spicy, skills.usesPlus] = 3;
	
	//GLASS
	arr_skill[normal.cookie_glass, skills.name] = "glass cookie";
	arr_skill[normal.cookie_glass, skills.desc] = "EVERYONE GETS HURT! RAISES DAMAGE";
	arr_skill[normal.cookie_glass, skills.anim] = ani_cookieGlass;
	
	arr_skill[normal.cookie_glass, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_glass, skills.name];
	arr_skill[normal.cookie_glass, skills.func] = function()
	{
		_self.tempDmg += 10;
		_self.hp -= dmgCalc(_self, _self, 10); 
		attack(20);
	};
	arr_skill[normal.cookie_glass, skills.cost] = 0; arr_skill[normal.cookie_glass, skills.uses] = 3;
	arr_skill[normal.cookie_glass, skills.selfIndex] = 3;
	arr_skill[normal.cookie_glass, skills.otherIndex] = 0;
	arr_skill[normal.cookie_glass, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_glass, skills.shop] = 25;
	
	arr_skill[normal.cookie_glass, skills.recharge] = 3;
	arr_skill[normal.cookie_glass, skills.weight] = 0;
	
	arr_skill[normal.cookie_glass, skills.descPlus] = "EVERYONE GETS HURT! RAISES DAMAGE";
	arr_skill[normal.cookie_glass, skills.funcPlus] = function()
	{
		_self.tempDmg += 15;
		_self.hp -= dmgCalc(_self, _self, 10); 
		attack(20);
	};
	arr_skill[normal.cookie_glass, skills.costPlus] = 0; arr_skill[normal.cookie_glass, skills.usesPlus] = 3;
	
	//SKELETON COOKIE
	arr_skill[normal.cookie_skeleton, skills.name] = "skeleton cookie";
	arr_skill[normal.cookie_skeleton, skills.desc] = "HEALS SOME HP, SOMEONE DISENGAGES!";
	arr_skill[normal.cookie_skeleton, skills.anim] = ani_cookieSkeleton;
	
	arr_skill[normal.cookie_skeleton, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_skeleton, skills.name];
	arr_skill[normal.cookie_skeleton, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.disengaged] = true; _target.disengaged = 2
	};
	arr_skill[normal.cookie_skeleton, skills.cost] = 0; arr_skill[normal.cookie_skeleton, skills.uses] = 3;
	arr_skill[normal.cookie_skeleton, skills.selfIndex] = 3;
	arr_skill[normal.cookie_skeleton, skills.otherIndex] = 0;
	arr_skill[normal.cookie_skeleton, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_skeleton, skills.shop] = 25;
	
	arr_skill[normal.cookie_skeleton, skills.recharge] = 3;
	arr_skill[normal.cookie_skeleton, skills.weight] = 1;
	
	arr_skill[normal.cookie_skeleton, skills.descPlus] = "HEALS 1/2HP, SOMEONE DISENGAGES!";
	arr_skill[normal.cookie_skeleton, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.disengaged] = true; _target.disengaged = 2
	};
	arr_skill[normal.cookie_skeleton, skills.costPlus] = 0; arr_skill[normal.cookie_skeleton, skills.usesPlus] = 3;
	
	//THRASHY
	arr_skill[normal.cookie_thrashy, skills.name] = "thrashy cookie";
	arr_skill[normal.cookie_thrashy, skills.desc] = "HEALS SOME HP, SOMEONE ROTS";
	arr_skill[normal.cookie_thrashy, skills.anim] = ani_cookieThrashy;
	
	arr_skill[normal.cookie_thrashy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_thrashy, skills.name];
	arr_skill[normal.cookie_thrashy, skills.func] = function()
	{
		regen(_self, maxHp/3);  
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.rotten] = true
	};
	arr_skill[normal.cookie_thrashy, skills.cost] = 0; arr_skill[normal.cookie_thrashy, skills.uses] = 3;
	arr_skill[normal.cookie_thrashy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_thrashy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_thrashy, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_thrashy, skills.shop] = 25;
	
	arr_skill[normal.cookie_thrashy, skills.recharge] = 3;
	arr_skill[normal.cookie_thrashy, skills.weight] = 0;
	
	arr_skill[normal.cookie_thrashy, skills.descPlus] = "HEALS 1/2 HP, SOMEONE ROTS";
	arr_skill[normal.cookie_thrashy, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2);  
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.rotten] = true
	};
	arr_skill[normal.cookie_thrashy, skills.costPlus] = 0; arr_skill[normal.cookie_thrashy, skills.usesPlus] = 3;
	
	//SPOOKY
	arr_skill[normal.cookie_ghost, skills.name] = "SPOOKIE COOKIE";
	arr_skill[normal.cookie_ghost, skills.desc] = "HEALS SOME HP, SPOOK SOMEONE!";
	arr_skill[normal.cookie_ghost, skills.anim] = ani_cookieGhost;
	
	arr_skill[normal.cookie_ghost, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.spooked] = true
	};	
	arr_skill[normal.cookie_ghost, skills.cost] = 0; arr_skill[normal.cookie_ghost, skills.uses] = 3;
	arr_skill[normal.cookie_ghost, skills.selfIndex] = 3;
	arr_skill[normal.cookie_ghost, skills.otherIndex] = 0;
	arr_skill[normal.cookie_ghost, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_ghost, skills.text] = string(var_name) + " EATS A SPOOKIE COOKIE!";
	arr_skill[normal.cookie_ghost, skills.shop] = 0;
	
	arr_skill[normal.cookie_ghost, skills.recharge] = 3;
	arr_skill[normal.cookie_ghost, skills.weight] = 0;
	
	arr_skill[normal.cookie_ghost, skills.descPlus] = "HEALS 1/2HP, SPOOK SOMEONE!";
	arr_skill[normal.cookie_ghost, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.spooked] = true
	};	
	arr_skill[normal.cookie_ghost, skills.costPlus] = 1; arr_skill[normal.cookie_ghost, skills.usesPlus] = 3;
	
	//BURNT
	arr_skill[normal.cookie_burnt, skills.name] = "BURNT cookie";
	arr_skill[normal.cookie_burnt, skills.desc] = "HEALS SOME HP, BURN SOMEONE!";
	arr_skill[normal.cookie_burnt, skills.anim] = ani_cookieBurnt;
	
	arr_skill[normal.cookie_burnt, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_burnt, skills.name];
	arr_skill[normal.cookie_burnt, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.burnt] = true
	};
	arr_skill[normal.cookie_burnt, skills.cost] = 0; arr_skill[normal.cookie_burnt, skills.uses] = 3;
	arr_skill[normal.cookie_burnt, skills.selfIndex] = 3;
	arr_skill[normal.cookie_burnt, skills.otherIndex] = 0;
	arr_skill[normal.cookie_burnt, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_burnt, skills.shop] = 25;
	
	arr_skill[normal.cookie_burnt, skills.recharge] = 3;
	arr_skill[normal.cookie_burnt, skills.weight] = 1;
	
	arr_skill[normal.cookie_burnt, skills.descPlus] = "HEALS 1/2, BURN SOMEONE!";
	arr_skill[normal.cookie_burnt, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.burnt] = true
	};
	arr_skill[normal.cookie_burnt, skills.costPlus] = 0; arr_skill[normal.cookie_burnt, skills.usesPlus] = 3;
	
	//CHEAP
	arr_skill[normal.cookie_cheap, skills.name] = "CHEAP cookie";
	arr_skill[normal.cookie_cheap, skills.desc] = "HEALS LITTLE HP";
	arr_skill[normal.cookie_cheap, skills.anim] = ani_cookieCheap;
	
	arr_skill[normal.cookie_cheap, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_cheap, skills.name];
	arr_skill[normal.cookie_cheap, skills.func] = function(){regen(_self, maxHp/5)};
	arr_skill[normal.cookie_cheap, skills.cost] = 0; arr_skill[normal.cookie_cheap, skills.uses] = 3;
	arr_skill[normal.cookie_cheap, skills.selfIndex] = 3;
	arr_skill[normal.cookie_cheap, skills.otherIndex] = 0;
	arr_skill[normal.cookie_cheap, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_cheap, skills.shop] = 15;
	
	arr_skill[normal.cookie_cheap, skills.recharge] = 3;
	arr_skill[normal.cookie_cheap, skills.weight] = 0;
	
	arr_skill[normal.cookie_cheap, skills.descPlus] = "HEALS SOME HP!";
	arr_skill[normal.cookie_cheap, skills.funcPlus] = function(){regen(_self, maxHp/3)};
	arr_skill[normal.cookie_cheap, skills.costPlus] = 0; arr_skill[normal.cookie_cheap, skills.usesPlus] = 3;
	
	//DOG
	arr_skill[normal.cookie_dog, skills.name] = "dog cookie";
	arr_skill[normal.cookie_dog, skills.desc] = "HEALS SOME HP... OR DECREASES YOUR DEFENSE!";
	arr_skill[normal.cookie_dog, skills.anim] = ani_cookieDog;
	
	arr_skill[normal.cookie_dog, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_dog, skills.name];
	arr_skill[normal.cookie_dog, skills.func] = function()
	{
		var ii = choose(1, 2); if(ii = 1)
		{
			regen(_self, maxHp/3)
			arr_skill[normal.cookie_dog, skills.sound] = snd_cookie;
		}
		else
		{ 
			tempDef -= 5;
			arr_skill[normal.cookie_dog, skills.sound] = snd_bark;
		};
	};
	arr_skill[normal.cookie_dog, skills.cost] = 0; arr_skill[normal.cookie_dog, skills.uses] = 3;
	arr_skill[normal.cookie_dog, skills.selfIndex] = 3;
	arr_skill[normal.cookie_dog, skills.otherIndex] = 0;
	arr_skill[normal.cookie_dog, skills.sound] = snd_bark;
	arr_skill[normal.cookie_dog, skills.shop] = 25;
	
	arr_skill[normal.cookie_dog, skills.recharge] = 3;
	arr_skill[normal.cookie_dog, skills.weight] = 0;
	
	arr_skill[normal.cookie_dog, skills.descPlus] = "HEALS 1/2 HP... OR INCREASES YOUR DEFENSE!";
	arr_skill[normal.cookie_dog, skills.funcPlus] = function()
	{
		var ii = choose(1, 2); 
		if(ii = 1){regen(_self, maxHp/2)}
		else
		{ 
			tempDef += 5;
		};
	};
	arr_skill[normal.cookie_dog, skills.costPlus] = 0; arr_skill[normal.cookie_dog, skills.usesPlus] = 3;
	
	//FROZEN
	arr_skill[normal.cookie_frozen, skills.name] = "frozen cookie";
	arr_skill[normal.cookie_frozen, skills.desc] = "HEALS SOME HP, FREEZE SOMEONE!";
	arr_skill[normal.cookie_frozen, skills.anim] = ani_cookieFrozen;
	
	arr_skill[normal.cookie_frozen, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_frozen, skills.name];
	arr_skill[normal.cookie_frozen, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.frozenCountdown = 2; _target.arr_status[status.frozen] = true
	};
	arr_skill[normal.cookie_frozen, skills.cost] = 0; arr_skill[normal.cookie_frozen, skills.uses] = 3;
	arr_skill[normal.cookie_frozen, skills.selfIndex] = 3;
	arr_skill[normal.cookie_frozen, skills.otherIndex] = 0;
	arr_skill[normal.cookie_frozen, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_frozen, skills.shop] = 25;
	
	arr_skill[normal.cookie_frozen, skills.recharge] = 3;
	arr_skill[normal.cookie_frozen, skills.weight] = 1;
	
	arr_skill[normal.cookie_frozen, skills.descPlus] = "HEALS 1/2 HP, FREEZE SOMEONE!";
	arr_skill[normal.cookie_frozen, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.frozenCountdown = 2; _target.arr_status[status.frozen] = true
	};
	arr_skill[normal.cookie_frozen, skills.costPlus] = 0; arr_skill[normal.cookie_frozen, skills.usesPlus] = 3;
	
	//BITTER
	arr_skill[normal.cookie_bitter, skills.name] = "bitter cookie";
	arr_skill[normal.cookie_bitter, skills.desc] = "HEALS SOME HP, MAKE SOMEONE BITTER";
	arr_skill[normal.cookie_bitter, skills.anim] = ani_cookieBitter;
	
	arr_skill[normal.cookie_bitter, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_bitter, skills.name];
	arr_skill[normal.cookie_bitter, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.bitter] = true
	};
	arr_skill[normal.cookie_bitter, skills.cost] = 0; arr_skill[normal.cookie_bitter, skills.uses] = 3;
	arr_skill[normal.cookie_bitter, skills.selfIndex] = 3;
	arr_skill[normal.cookie_bitter, skills.otherIndex] = 0;
	arr_skill[normal.cookie_bitter, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_bitter, skills.shop] = 25;
	
	arr_skill[normal.cookie_bitter, skills.recharge] = 3;
	arr_skill[normal.cookie_bitter, skills.weight] = 1;
	
	arr_skill[normal.cookie_bitter, skills.descPlus] = "HEALS 1/2 HP, MAKE SOMEONE BITTER";
	arr_skill[normal.cookie_bitter, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.bitter] = true
	};
	arr_skill[normal.cookie_bitter, skills.costPlus] = 0; arr_skill[normal.cookie_bitter, skills.usesPlus] = 3;
	
	//MOSSY
	arr_skill[normal.cookie_mossy, skills.name] = "mossy cookie";
	arr_skill[normal.cookie_mossy, skills.desc] = "HEALS SOME HP, shroom SOMEONE";
	arr_skill[normal.cookie_mossy, skills.anim] = ani_cookieMossy;
	
	arr_skill[normal.cookie_mossy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_mossy, skills.name];
	arr_skill[normal.cookie_mossy, skills.func] = function()
	{
		regen(_self, maxHp/3)
		
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.shroomed] = true;
	};
	arr_skill[normal.cookie_mossy, skills.cost] = 0; arr_skill[normal.cookie_mossy, skills.uses] = 3;
	arr_skill[normal.cookie_mossy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_mossy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_mossy, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_mossy, skills.shop] = 25;
	
	arr_skill[normal.cookie_mossy, skills.recharge] = 3;
	arr_skill[normal.cookie_mossy, skills.weight] = 1;
	
	arr_skill[normal.cookie_mossy, skills.descPlus] = "HEALS 1/2 HP, shroom SOMEONE";
	arr_skill[normal.cookie_mossy, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2)
		
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.shroomed] = true;
	};
	arr_skill[normal.cookie_mossy, skills.costPlus] = 0; arr_skill[normal.cookie_mossy, skills.usesPlus] = 3;
	
	//VOID
	arr_skill[normal.cookie_void, skills.name] = "void cookie";
	arr_skill[normal.cookie_void, skills.desc] = "HEALS SOME HP, AND MAYBE STATUS EFFECTS";
	arr_skill[normal.cookie_void, skills.anim] = ani_cookieVoid;
	
	arr_skill[normal.cookie_void, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_void, skills.name];
	arr_skill[normal.cookie_void, skills.func] = function(){regen(_self, maxHp/3); var ii = choose(1, 2); if(ii = 1){for(i=0; i <= 10; i++){_self.arr_status[i]= false}}};
	arr_skill[normal.cookie_void, skills.cost] = 0; arr_skill[normal.cookie_void, skills.uses] = 3;
	arr_skill[normal.cookie_void, skills.selfIndex] = 3;
	arr_skill[normal.cookie_void, skills.otherIndex] = 0;
	arr_skill[normal.cookie_void, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_void, skills.shop] = 25;
	
	arr_skill[normal.cookie_void, skills.recharge] = 3;
	arr_skill[normal.cookie_void, skills.weight] = 1;
	
	arr_skill[normal.cookie_void, skills.descPlus] = "HEALS 1/2HP AND ERASES STATUS EFFECTS";
	arr_skill[normal.cookie_void, skills.funcPlus] = function(){regen(_self, maxHp/2); for(i=0; i <= 10; i++){_self.arr_status[i]= false}};
	arr_skill[normal.cookie_void, skills.costPlus] = 0; arr_skill[normal.cookie_void, skills.usesPlus] = 3;
	
	//LUCKY
	arr_skill[normal.cookie_lucky, skills.name] = "lucky cookie";
	arr_skill[normal.cookie_lucky, skills.desc] = "HEALS SOME HP, MAYBE EVEN MORE!";
	arr_skill[normal.cookie_lucky, skills.anim] = ani_cookieLucky;
	
	arr_skill[normal.cookie_lucky, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_lucky, skills.name];
	arr_skill[normal.cookie_lucky, skills.func] = function(){regen(_self, choose(maxHp/3, maxHp*0.70))};
	arr_skill[normal.cookie_lucky, skills.cost] = 0; arr_skill[normal.cookie_lucky, skills.uses] = 3;
	arr_skill[normal.cookie_lucky, skills.selfIndex] = 3;
	arr_skill[normal.cookie_lucky, skills.otherIndex] = 0;
	arr_skill[normal.cookie_lucky, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_lucky, skills.shop] = 25;
	
	arr_skill[normal.cookie_lucky, skills.recharge] = 3;
	arr_skill[normal.cookie_lucky, skills.weight] = 1;
	
	arr_skill[normal.cookie_lucky, skills.descPlus] = "HEALS ALL HP, MAYBE INCREASES DAMAGE!";
	arr_skill[normal.cookie_lucky, skills.funcPlus] = function()
	{
		regen(_self, maxHp)
		var ii = choose(1, 2); if(ii = 1){tempDmg += 10}; 
	};
	arr_skill[normal.cookie_lucky, skills.costPlus] = 0; arr_skill[normal.cookie_lucky, skills.usesPlus] = 3;
	
	//PHISHY
	arr_skill[normal.cookie_phishy, skills.name] = "phishy cookie";
	arr_skill[normal.cookie_phishy, skills.desc] = "HEALS HP, GIVES OR TAKES MONEY!";
	arr_skill[normal.cookie_phishy, skills.anim] = ani_cookiePhishy;
	
	arr_skill[normal.cookie_phishy, skills.text] = string(var_name) + " EATS A " + arr_skill[normal.cookie_phishy, skills.name];
	arr_skill[normal.cookie_phishy, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var ii = choose(1, 2)
		if(ii = 1)
		{
			global.money -=5; 
			if(global.money <= 0){global.money = 0}
			repeat(5){instance_create_depth(_self.x, _self.y, depth-1, obj_money)}
		}
		else
		{
			global.money += 10
			repeat(10){instance_create_depth(_other.x, _other.y, depth-1, obj_money)}
		}
	};
	arr_skill[normal.cookie_phishy, skills.cost] = 0; arr_skill[normal.cookie_phishy, skills.uses] = 3;
	arr_skill[normal.cookie_phishy, skills.selfIndex] = 3;
	arr_skill[normal.cookie_phishy, skills.otherIndex] = 0;
	arr_skill[normal.cookie_phishy, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_phishy, skills.shop] = 25;
	
	arr_skill[normal.cookie_phishy, skills.recharge] = 3;
	arr_skill[normal.cookie_phishy, skills.weight] = 1;
	
	arr_skill[normal.cookie_phishy, skills.descPlus] = "HEALS 1/2HP, GIVES YOU MONEY!";
	arr_skill[normal.cookie_phishy, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		global.money += 20
	};
	arr_skill[normal.cookie_phishy, skills.costPlus] = 0; arr_skill[normal.cookie_phishy, skills.usesPlus] = 3;
	
	//ELECTRIC
	arr_skill[normal.cookie_electric, skills.name] = "electric cookie";
	arr_skill[normal.cookie_electric, skills.desc] = "HEALS SOME HP, electrocute SOMEONE";
	arr_skill[normal.cookie_electric, skills.anim] = ani_cookieElectric;
	
	arr_skill[normal.cookie_electric, skills.text] = string(var_name) + " EATS AN " + arr_skill[normal.cookie_electric, skills.name];
	arr_skill[normal.cookie_electric, skills.func] = function()
	{
		regen(_self, maxHp/3); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.electrocuted] = true; _target.electrocuted = 3
	};
	arr_skill[normal.cookie_electric, skills.cost] = 0; arr_skill[normal.cookie_electric, skills.uses] = 3;
	arr_skill[normal.cookie_electric, skills.selfIndex] = 3;
	arr_skill[normal.cookie_electric, skills.otherIndex] = 0;
	arr_skill[normal.cookie_electric, skills.sound] = snd_cookie;
	arr_skill[normal.cookie_electric, skills.shop] = 25;
	
	arr_skill[normal.cookie_electric, skills.recharge] = 3;
	arr_skill[normal.cookie_electric, skills.weight] = 1;
	
	arr_skill[normal.cookie_electric, skills.descPlus] = "HEALS 1/2HP, electrocute SOMEONE";
	arr_skill[normal.cookie_electric, skills.funcPlus] = function()
	{
		regen(_self, maxHp/2); 
		var iii = choose(1, 2), _target = _self;
		_target = iii = 1 ? _self : _other;
		_target.arr_status[status.electrocuted] = true; _target.electrocuted = 3
	};
	arr_skill[normal.cookie_electric, skills.costPlus] = 0; arr_skill[normal.cookie_electric, skills.usesPlus] = 3;
	
	//CONNECT
	arr_skill[normal.connect, skills.name] = "CONNECT";
	arr_skill[normal.connect, skills.desc] = "CONNECT YOURSELF WITH THE ENEMY!";
	arr_skill[normal.connect, skills.anim] = ani_connect;
	
	arr_skill[normal.connect, skills.func] = function(){_other.arr_status[status.connected] = true; _other.connectedCountdown = 3};
	arr_skill[normal.connect, skills.cost] = 0; arr_skill[normal.connect, skills.uses] = 3;	
	arr_skill[normal.connect, skills.selfIndex] = 3;
	arr_skill[normal.connect, skills.otherIndex] = 1;
	arr_skill[normal.connect, skills.sound] = snd_defenseDown;
	arr_skill[normal.connect, skills.text] = string(var_name) + " CONNECTS WITH THE ENEMY"
	arr_skill[normal.connect, skills.shop] = 50;
	
	arr_skill[normal.connect, skills.recharge] = 7;
	arr_skill[normal.connect, skills.weight] = 1;
	
	arr_skill[normal.connect, skills.descPlus] = "CONNECT YOURSELF WITH THE ENEMY! FOR A LONG TIME!";
	arr_skill[normal.connect, skills.funcPlus] = function(){_other.arr_status[status.connected] = true; _other.connectedCountdown = 5};
	arr_skill[normal.connect, skills.costPlus] = 0; arr_skill[normal.connect, skills.usesPlus] = 5;
	
	//PHISH
	arr_skill[normal.phish, skills.name] = "PHISH";
	arr_skill[normal.phish, skills.desc] = "STEAL SOME MONEY AWAY!";
	arr_skill[normal.phish, skills.anim] = ani_phish;
	
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
		
		if(_other = obj_player){global.money -= 5}
		else{global.money += 10 + (global.mult * 2)};
		repeat(5){instance_create_depth(_other.x, _other.y, depth-1, obj_money)}
	};
	arr_skill[normal.phish, skills.cost] = 0; arr_skill[normal.phish, skills.uses] = -1;	
	arr_skill[normal.phish, skills.selfIndex] = 3;
	arr_skill[normal.phish, skills.otherIndex] = 1;
	arr_skill[normal.phish, skills.sound] = snd_defenseDown;
	arr_skill[normal.phish, skills.text] = string(var_name) + " TOOK SOME OF YOUR MONEY!"
	arr_skill[normal.phish, skills.shop] = 50;
	
	arr_skill[normal.phish, skills.recharge] = 3;
	arr_skill[normal.phish, skills.weight] = 0;
	
	arr_skill[normal.phish, skills.descPlus] = "TAKES MONEY AWAY!";
	arr_skill[normal.phish, skills.funcPlus] = function()
	{
		if(_other = obj_enemy)
		{
			ini_open("unlocks.ini");
				var _scammed = ini_read_real("other", "scams", 0);
				ini_write_real("other", "scams", _scammed +1);
			
				if(ini_read_real("other", "scams", 0) >= 10) and (!ini_read_real("unlocks", "20", false))
				{
					ini_write_real("unlocks", "20", true);
					instance_create_depth(x, y, depth, obj_newUnlockBattle);
				};
			ini_close();
		};
		if(_other = obj_player){global.money -= 10}
		else{global.money +=20  + (global.mult * 3)};
		repeat(10){instance_create_depth(_other.x, _other.y, depth-1, obj_money)}
	};
	arr_skill[normal.phish, skills.costPlus] = 0; arr_skill[normal.phish, skills.usesPlus] = -1;
	
	//DOWNLOAD
	arr_skill[normal.download, skills.name] = "DOWNLOAD";
	arr_skill[normal.download, skills.desc] = "DOWNLOADS AND COPIES YOUR DATA!";
	arr_skill[normal.download, skills.anim] = ani_download;
	
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
	arr_skill[normal.download, skills.weight] = 2;
	
	arr_skill[normal.download, skills.descPlus] = "DOWNLOADS AND COPIES YOUR DATA!";
	arr_skill[normal.download, skills.funcPlus] = arr_skill[normal.download, skills.func];
	arr_skill[normal.download, skills.costPlus] = 0; arr_skill[normal.download, skills.usesPlus] = -1;
	
	//WARN
	arr_skill[normal.popup, skills.name] = "POP-UP";
	arr_skill[normal.popup, skills.desc] = "CREATE A POP-UP!";
	arr_skill[normal.popup, skills.anim] = ani_popup;
	
	arr_skill[normal.popup, skills.func] = function(){
		var _popup = instance_create_depth(irandom_range(250, room_width-250), irandom_range(250, room_height-250), 0, obj_popup)
		_popup.createdBy = self;
		_popup._other = _other;
	};
	arr_skill[normal.popup, skills.cost] = 1; arr_skill[normal.popup, skills.uses] = -1;	
	arr_skill[normal.popup, skills.selfIndex] = 3;
	arr_skill[normal.popup, skills.otherIndex] = 1;
	arr_skill[normal.popup, skills.sound] = snd_popup;
	arr_skill[normal.popup, skills.text] = string(var_name) + " SPAMS YOU!"
	arr_skill[normal.popup, skills.shop] = 50;
	
	arr_skill[normal.popup, skills.recharge] = 3;
	arr_skill[normal.popup, skills.weight] = 2;
	
	arr_skill[normal.popup, skills.descPlus] = "DOWNLOADS AND COPIES YOUR DATA!";
	arr_skill[normal.popup, skills.funcPlus] = arr_skill[normal.popup, skills.func];
	arr_skill[normal.popup, skills.costPlus] = 0; arr_skill[normal.popup, skills.usesPlus] = -1;
	
	//ELECTRIC
	arr_skill[normal.electric, skills.name] = "ELECTRIC";
	arr_skill[normal.electric, skills.desc] = "ELECTROCUTES YOUR ENEMY!";
	arr_skill[normal.electric, skills.anim] = ani_electric;
	
	arr_skill[normal.electric, skills.func] = function(){_other.arr_status[status.electrocuted] = true; _other.electrocuted = 3};
	arr_skill[normal.electric, skills.cost] = 0; arr_skill[normal.electric, skills.uses] = 3;	
	arr_skill[normal.electric, skills.selfIndex] = 2;
	arr_skill[normal.electric, skills.otherIndex] = 1;
	arr_skill[normal.electric, skills.sound] = snd_heal;
	arr_skill[normal.electric, skills.text] = string(var_name) + " ELECTROCUTES THE ENEMY!"
	arr_skill[normal.electric, skills.shop] = 50;
	
	arr_skill[normal.electric, skills.recharge] = 7;
	arr_skill[normal.electric, skills.weight] = 0;
	
	arr_skill[normal.electric, skills.descPlus] = "ELECTROCUTES YOUR ENEMY! FOR A LONG TIME!";
	arr_skill[normal.electric, skills.funcPlus] = function(){_other.arr_status[status.electrocuted] = true; _other.electrocuted = 5};
	arr_skill[normal.electric, skills.costPlus] = 0; arr_skill[normal.electric, skills.usesPlus] = 5;
	
	//SWAP
	arr_skill[normal.swap, skills.name] = "SWAP";
	arr_skill[normal.swap, skills.desc] = "SWAP CHARACTERS!";
	arr_skill[normal.swap, skills.anim] = ani_attack;
	
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
	arr_skill[normal.swap, skills.cost] = 0; arr_skill[normal.swap, skills.uses] = -1;	
	arr_skill[normal.swap, skills.selfIndex] = 0;
	arr_skill[normal.swap, skills.otherIndex] = 0;
	arr_skill[normal.swap, skills.sound] = snd_defenseDown;
	arr_skill[normal.swap, skills.text] = string(var_name) + " SWAPPED!"
	arr_skill[normal.swap, skills.shop] = 50;
	
	arr_skill[normal.swap, skills.recharge] = 7;
	arr_skill[normal.swap, skills.weight] = 3;
	
	arr_skill[normal.swap, skills.descPlus] = "SWAP CHARACTERS! NO WASTE IN TURNS!";
	arr_skill[normal.swap, skills.funcPlus] = function()
	{
		if(playerSelected = enemy.tito)
		{
			global.player = enemy.bondiola
		}
		else
		{
			global.player = enemy.tito
		}
		initializeTB()
		global.turn = 1;
	};
	arr_skill[normal.swap, skills.costPlus] = 0; arr_skill[normal.swap, skills.usesPlus] = -1;
	//Lifehack
	arr_skill[normal.lifehack, skills.name] = "LIFEHACK";
	arr_skill[normal.lifehack, skills.desc] = "RESTORES ALL HP, SETS ENEMY'S HP TO RANDOM VALUE";
	arr_skill[normal.lifehack, skills.anim] = ani_attack;
	
	arr_skill[normal.lifehack, skills.func] = function(){regen(_self, maxHp); _other.hp = irandom_range(5, _other.maxHp)};	
	arr_skill[normal.lifehack, skills.cost] = 0; arr_skill[normal.lifehack, skills.uses] = 1;
	arr_skill[normal.lifehack, skills.selfIndex] = 3;
	arr_skill[normal.lifehack, skills.otherIndex] = 1;
	arr_skill[normal.lifehack, skills.sound] = snd_heal;
	arr_skill[normal.lifehack, skills.text] = string(var_name) + " PRETENDS NOT TO BE HURT!";
	arr_skill[normal.lifehack, skills.shop] = 25;
	
	arr_skill[normal.lifehack, skills.recharge] = 7;
	arr_skill[normal.lifehack, skills.weight] = 3;
	
	arr_skill[normal.lifehack, skills.descPlus] = "RESTORES ALL HP, SETS ENEMY'S HP TO A LOW, RANDOM VALUE";
	arr_skill[normal.lifehack, skills.funcPlus] = function(){regen(_self, maxHp); _other.hp = irandom_range(5, _other.maxHp/2)};
	arr_skill[normal.lifehack, skills.costPlus] = 0; arr_skill[normal.lifehack, skills.usesPlus] = 1;
	
	//LIFESWAP
	arr_skill[normal.lifeswap, skills.name] = "LIFESWAP";
	arr_skill[normal.lifeswap, skills.desc] = "SWAP YOUR HP WITH THE ENEMY'S HP!";
	arr_skill[normal.lifeswap, skills.anim] = ani_attack;
	
	arr_skill[normal.lifeswap, skills.func] = function(){var _myHP = _self.hp; _self.hp = _other.hp; _other.hp = _myHP};	
	arr_skill[normal.lifeswap, skills.cost] = 0; arr_skill[normal.lifeswap, skills.uses] = 1;
	arr_skill[normal.lifeswap, skills.selfIndex] = 3;
	arr_skill[normal.lifeswap, skills.otherIndex] = 1;
	arr_skill[normal.lifeswap, skills.sound] = snd_hit;
	arr_skill[normal.lifeswap, skills.text] = string(var_name) + " SWAPS HEALTH BARS WITH THE ENEMY!";
	arr_skill[normal.lifeswap, skills.shop] = 75;
	
	arr_skill[normal.lifeswap, skills.recharge] = 25;
	arr_skill[normal.lifeswap, skills.weight] = 3;
	
	arr_skill[normal.lifeswap, skills.descPlus] = "SWAP YOUR HP WITH THE ENEMY'S HP!";
	arr_skill[normal.lifeswap, skills.funcPlus] = arr_skill[normal.lifeswap, skills.func]
	arr_skill[normal.lifeswap, skills.costPlus] = 0; arr_skill[normal.lifeswap, skills.usesPlus] = 1;
	
	//os
	arr_skill[normal.os, skills.name] = "OS";
	arr_skill[normal.os, skills.desc] = "PLAY WITH YOUR ENVIRONMENT!";
	arr_skill[normal.os, skills.anim] = ani_os;
	
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
	arr_skill[normal.os, skills.weight] = 3;
	
	arr_skill[normal.os, skills.descPlus] = "PLAY WITH YOUR ENVIRONMENT!";
	arr_skill[normal.os, skills.funcPlus] = arr_skill[normal.os, skills.func]
	arr_skill[normal.os, skills.costPlus] = 0; arr_skill[normal.os, skills.usesPlus] = -1;
	
	//STANCE (SWAPS BETWEEN TWO SKILLS)
	var_stanceArmor = true;
	var_stanceCurrentFunc = function(){
			arr_skill[normal.armor, skills.func]();
			var_stanceArmor = false;
		};
	
	arr_skill[normal.stance, skills.name] = "STANCE";
	arr_skill[normal.stance, skills.desc] = "DOUBLE SKILL!";
	arr_skill[normal.stance, skills.anim] = arr_skill[normal.armor, skills.anim];
	
	arr_skill[normal.stance, skills.selfIndex] = 3;
	arr_skill[normal.stance, skills.otherIndex] = 0;
	arr_skill[normal.stance, skills.sound] = snd_defenseUp;
	arr_skill[normal.stance, skills.text] = string(var_name) + " DEFENDS AND CHANGES THEIR STANCE!";
		
	arr_skill[normal.stance, skills.funcPlus] = arr_skill[normal.armor, skills.funcPlus];
	arr_skill[normal.stance, skills.descPlus] = "DOUBLE SKILL! (CURRENTLY ARMOR)";
	
	arr_skill[normal.stance, skills.cost] = 1; arr_skill[normal.stance, skills.uses] = -1;	
	arr_skill[normal.stance, skills.shop] = 40;
	
	arr_skill[normal.stance, skills.func] = function(){
		var_stanceCurrentFunc();
		initStance()
	};
	
	arr_skill[normal.stance, skills.recharge] = 6;
	arr_skill[normal.stance, skills.weight] = 4;
	
	arr_skill[normal.stance, skills.costPlus] = 1; arr_skill[normal.stance, skills.usesPlus] = -1;
	
	//WEAKEN (cuts enemy's HP by half)
	arr_skill[normal.weaken, skills.name] = "WEAKEN";
	arr_skill[normal.weaken, skills.desc] = "CUTS ENEMY MAX HP IN HALF!";
	arr_skill[normal.weaken, skills.anim] = ani_weaken;
	
	arr_skill[normal.weaken, skills.func] = function(){_other.maxHp /= 2};
	arr_skill[normal.weaken, skills.cost] = 0; arr_skill[normal.weaken, skills.uses] = 2;	
	arr_skill[normal.weaken, skills.selfIndex] = 0;
	arr_skill[normal.weaken, skills.otherIndex] = 1;
	arr_skill[normal.weaken, skills.sound] = snd_defenseDown;
	arr_skill[normal.weaken, skills.text] = string(var_name) + " WEAKENED THEIR ENEMY!"
	arr_skill[normal.weaken, skills.shop] = 75;
	
	arr_skill[normal.weaken, skills.recharge] = 15;
	arr_skill[normal.weaken, skills.weight] = 4;
	
	arr_skill[normal.weaken, skills.descPlus] = "CUT A LOT OF ENEMY MAX HP!";
	arr_skill[normal.weaken, skills.funcPlus] = function(){_other.maxHp /= 4};
	arr_skill[normal.weaken, skills.costPlus] = 0; arr_skill[normal.weaken, skills.usesPlus] = 2;
	
	
	//MELK (applies EVERY status effect to the enemy)
	var _skill = normal.melk
	
	arr_skill[_skill, skills.name] = "MELK";
	arr_skill[_skill, skills.desc] = "APPLY EVERY STATUS EFFECT TO ENEMY!";
	arr_skill[_skill, skills.anim] = ani_melk;
	
	arr_skill[_skill, skills.func] = function(){for(i=0; i <= 10; i++){_other.arr_status[i]= true}};
	arr_skill[_skill, skills.cost] = 0; arr_skill[_skill, skills.uses] = 1;	
	arr_skill[_skill, skills.selfIndex] = 0;
	arr_skill[_skill, skills.otherIndex] = 1;
	arr_skill[_skill, skills.sound] = snd_milk;
	arr_skill[_skill, skills.text] = string(var_name) + " GAVE MELK TO THEIR ENEMY!"
	arr_skill[_skill, skills.shop] = 75;
	
	arr_skill[_skill, skills.recharge] = 15;
	arr_skill[_skill, skills.weight] = 4;
	
	arr_skill[_skill, skills.descPlus] = "APPLY EVERY STATUS EFFECT TO ENEMY!";
	arr_skill[_skill, skills.funcPlus] = arr_skill[_skill, skills.func]
	arr_skill[_skill, skills.costPlus] = 0; arr_skill[_skill, skills.usesPlus] = 3;
	
	//HP FREEZE!
	var _skill = normal.hp_freeze
	var_hpFreeze = 0;
	
	arr_skill[_skill, skills.name] = "HP FREEZE";
	arr_skill[_skill, skills.desc] = "YOUR HP REMAINS THE SAME FOR 3 TURNS!";
	arr_skill[_skill, skills.anim] = ani_freeze;
	
	arr_skill[_skill, skills.func] = function(){var_hpFreeze = 3};
	arr_skill[_skill, skills.cost] = 0; arr_skill[_skill, skills.uses] = 1;	
	arr_skill[_skill, skills.selfIndex] = 2;
	arr_skill[_skill, skills.otherIndex] = 0;
	arr_skill[_skill, skills.sound] = snd_heal;
	arr_skill[_skill, skills.text] = string(var_name) + " FROZE THEIR HP!"
	arr_skill[_skill, skills.shop] = 75;
	
	arr_skill[_skill, skills.recharge] = 15;
	arr_skill[_skill, skills.weight] = 4;
	
	arr_skill[_skill, skills.descPlus] = "YOUR HP REMAINS THE SAME FOR 5 TURNS!";
	arr_skill[_skill, skills.funcPlus] = function(){var_hpFreeze = 5};
	arr_skill[_skill, skills.costPlus] = 0; arr_skill[_skill, skills.usesPlus] = 1;
	
	//COOKIE BOX
	var _skill = normal.cookie_box
	
	arr_skill[_skill, skills.name] = "COOKIE BOX";
	arr_skill[_skill, skills.desc] = "YOUR ENTIRE SKILLSET BECOMES COOKIE BASED!";
	arr_skill[_skill, skills.anim] = ani_cookie;
	
	arr_skill[_skill, skills.func] = function(){
		for(i=0; i<4; i++)
		{
			var _skill = irandom_range(normal.cookie_jar, normal.cookie_phishy); 
			st_skills[i] = _skill;
			st_skillUses[i] = arr_skill[_skill, skills.uses];
			setSkillRecharge(i);
		};
	};
	arr_skill[_skill, skills.cost] = 0; arr_skill[_skill, skills.uses] = -1;	
	arr_skill[_skill, skills.selfIndex] = 0;
	arr_skill[_skill, skills.otherIndex] = 1;
	arr_skill[_skill, skills.sound] = snd_cookie;
	arr_skill[_skill, skills.text] = string(var_name) + " GOT AN UPGRADED SKILLSET!"
	arr_skill[_skill, skills.shop] = 50;
	
	arr_skill[_skill, skills.recharge] = 15;
	arr_skill[_skill, skills.weight] = 2;
	
	arr_skill[_skill, skills.descPlus] = arr_skill[_skill, skills.desc]
	arr_skill[_skill, skills.funcPlus] = arr_skill[_skill, skills.func]
	arr_skill[_skill, skills.costPlus] = 0; arr_skill[_skill, skills.usesPlus] = -1;
	
	//PHISHING ROD!
	var _skill = normal.phishing_rod
	
	arr_skill[_skill, skills.name] = "PHISHING ROD";
	arr_skill[_skill, skills.desc] = "PHISH FOR STUFF!";
	arr_skill[_skill, skills.anim] = ani_phish;
	
	arr_skill[_skill, skills.func] = function(){
		var ii = irandom_range(0, 2)
		switch(ii)
		{
			case 0:
				global.money += 10; //Gives money
			break;
			
			case 1: //Fishes a random skill! (not including melk, glitch, cookies, rats, os, and itself)
				for(i=0; i < 4; i++)
				{
					if(_self.st_skills[i] = normal.phishing_rod)
					{
						var _choice = irandom_range(normal.nap, normal.electric);
						st_skills[i] = _choice
					
						if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
						setSkillRecharge(i)
						break;
					};
				};	
			break;
			
			case 2: //Gives you a CAN
				for(i=0; i < 4; i++)
				{
					if(_self.st_skills[i] = normal.phishing_rod)
					{
						st_skills[i] = normal.can
					
						if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
						setSkillRecharge(i)
						break;
					};
				};	
			break;
		};
	};
	arr_skill[_skill, skills.cost] = 0; arr_skill[_skill, skills.uses] = -1;	
	arr_skill[_skill, skills.selfIndex] = 0;
	arr_skill[_skill, skills.otherIndex] = 1;
	arr_skill[_skill, skills.sound] = snd_milk;
	arr_skill[_skill, skills.text] = string(var_name) + " PHISHES SOMETHING!"
	arr_skill[_skill, skills.shop] = 75;
	
	arr_skill[_skill, skills.recharge] = 3;
	arr_skill[_skill, skills.weight] = 2;
	
	arr_skill[_skill, skills.descPlus] = "PHISH FOR STUFF!";
	arr_skill[_skill, skills.funcPlus] = arr_skill[_skill, skills.func]
	arr_skill[_skill, skills.costPlus] = 0; arr_skill[_skill, skills.usesPlus] = -1;
	
	//UNSIGNED DECREE
	var _skill = normal.decree
	
	arr_skill[_skill, skills.name] = "UNSIGNED REFORM";
	arr_skill[_skill, skills.desc] = "MAYBE THE QUEEN WILL SIGN THIS";
	arr_skill[_skill, skills.anim] = ani_blank;
	
	arr_skill[_skill, skills.func] = function(){};
	arr_skill[_skill, skills.cost] = 0; arr_skill[_skill, skills.uses] = -1;	
	arr_skill[_skill, skills.selfIndex] = 3;
	arr_skill[_skill, skills.otherIndex] = 0;
	arr_skill[_skill, skills.sound] = snd_heal;
	arr_skill[_skill, skills.text] = string(var_name) + " DISPLAYS THE REFORM!"
	arr_skill[_skill, skills.shop] = 50;
	
	arr_skill[_skill, skills.recharge] = 15;
	arr_skill[_skill, skills.weight] = 2;
	
	arr_skill[_skill, skills.descPlus] = arr_skill[_skill, skills.desc]
	arr_skill[_skill, skills.funcPlus] = arr_skill[_skill, skills.func]
	arr_skill[_skill, skills.costPlus] = 0; arr_skill[_skill, skills.usesPlus] = -1;
	
	//GLITCH
	arr_skill[normal.glitch, skills.name] = " ";
	arr_skill[normal.glitch, skills.desc] = "? A A11QWE JKFJLQ NO";
	arr_skill[normal.glitch, skills.anim] = ani_blank;
	
	arr_skill[normal.glitch, skills.text] = string(var_name) + " USES ";
	arr_skill[normal.glitch, skills.func] = function(){
			var _choice = irandom_range(normal.nap, normal.os)
			while((_choice = normal.swap) or (_choice = normal.explode))
			{
				_choice = irandom_range(normal.nap, normal.os)
			};
			skill(_choice, false)
			
			arr_skill[normal.glitch, skills.text] = string(var_name) + " USES " + string(arr_skill[_choice, skills.name]);
		};	
	arr_skill[normal.glitch, skills.cost] = 1; arr_skill[normal.glitch, skills.uses] = -1;
	arr_skill[normal.glitch, skills.selfIndex] = 3;
	arr_skill[normal.glitch, skills.otherIndex] = 1;
	arr_skill[normal.glitch, skills.sound] = mus_silent;
	arr_skill[normal.glitch, skills.shop] = 25;
	
	arr_skill[normal.glitch, skills.recharge] = 3;
	arr_skill[normal.glitch, skills.weight] = 3;
	
	arr_skill[normal.glitch, skills.descPlus] = "? !! ASJDKALS !! QWOPEIWPOE YES!!";
	arr_skill[normal.glitch, skills.funcPlus] = arr_skill[normal.glitch, skills.func]
	arr_skill[normal.glitch, skills.costPlus] = 0; arr_skill[normal.glitch, skills.usesPlus] = -1;
};

function initStance()
{
	if(!var_stanceArmor)
	{
		arr_skill[normal.stance, skills.name] = "STANCE (PUNCH)";
		arr_skill[normal.stance, skills.desc] = "DOUBLE SKILL! (WILL USE PUNCH)";
		arr_skill[normal.stance, skills.anim] = arr_skill[normal.armor, skills.anim];
		
		var_stanceCurrentFunc = function(){
			arr_skill[normal.punch, skills.func]();
			var_stanceArmor = true;
		};
		
		arr_skill[normal.stance, skills.selfIndex] = 3;
		arr_skill[normal.stance, skills.otherIndex] = 0;
		arr_skill[normal.stance, skills.sound] = snd_defenseUp;
		arr_skill[normal.stance, skills.text] = string(var_name) + " DEFENDS AND CHANGES THEIR STANCE!";
		
		arr_skill[normal.stance, skills.funcPlus] = arr_skill[normal.armor, skills.funcPlus];
		arr_skill[normal.stance, skills.descPlus] = "DOUBLE SKILL! (CURRENTLY ARMOR)";
	}
	
	else
	{
		arr_skill[normal.stance, skills.name] = "STANCE (ARMOR)";
		arr_skill[normal.stance, skills.desc] = "DOUBLE SKILL! (WILL USE ARMOR)";
		arr_skill[normal.stance, skills.anim] = arr_skill[normal.punch, skills.anim];
		
		var_stanceCurrentFunc = function(){
			arr_skill[normal.armor, skills.func]();
			
			var_stanceArmor = false;
		};
			
		arr_skill[normal.stance, skills.selfIndex] = 2;
		arr_skill[normal.stance, skills.otherIndex] = 1;
		arr_skill[normal.stance, skills.sound] = snd_punch;
		arr_skill[normal.stance, skills.text] = string(var_name) + " PUNCHES AND CHANGES THEIR STANCE!";
		
		arr_skill[normal.stance, skills.funcPlus] = arr_skill[normal.punch, skills.funcPlus];
		arr_skill[normal.stance, skills.descPlus] = "DOUBLE SKILL! (CURRENTLY PUNCH)";
	};
	
	show_debug_message(var_stanceArmor)
}

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
	arr_price[normal.cheese] = 2;
	arr_price[normal.explode] = 5;
	arr_price[normal.wait] = 10;
	arr_price[normal.heal] = 5;
	arr_price[normal.shoot] = 5;
	arr_price[normal.triangle] = 5;
	arr_price[normal.honk] = 3;
	arr_price[normal.steal] = 15;
	arr_price[normal.bark] = 5;
	arr_price[normal.bitter] = 10;
	arr_price[normal.lemonade] = 10;
	arr_price[normal.shroom] = 10;
	arr_price[normal.scare] = 10;
	arr_price[normal.fireball] = 10;
	arr_price[normal.dissipate] = 15;
	arr_price[normal.disengage] = 15;
	arr_price[normal.rat_flute] = 3;
	arr_price[normal.lick] = 15;
	arr_price[normal.smile] = 5;
	arr_price[normal.rush] = 10;
	arr_price[normal.crown] = 20;
	arr_price[normal.swap] = 5;
	arr_price[normal.connect] = 10;
	arr_price[normal.phish] = 15;
	arr_price[normal.download] = 10;
	arr_price[normal.popup] = 5;
	arr_price[normal.electric] = 10;
	arr_price[normal.rot] = 10;
	arr_price[normal.freeze] = 10;
	arr_price[normal.lifehack] = 12;
	arr_price[normal.rubbish] = 15;
	arr_price[normal.bug] = irandom_range(5, 15);
	arr_price[normal.cheese_old] = 5;
	arr_price[normal.can] = 15;
	arr_price[normal.lifeswap] = 20;
	arr_price[normal.grilled_cheese] = 30;
	arr_price[normal.milk] = 10;
	arr_price[normal.plunger] = 10;
	arr_price[normal.cigar] = 5;
	arr_price[normal.sneeze] = 5;
	arr_price[normal.cookie_jar] = 10;
	arr_price[normal.cookie_christmas] = 3;
	arr_price[normal.cookie_valentine] = 3;
	arr_price[normal.cookie_spicy] = 3;
	arr_price[normal.cookie_glass] = 3;
	arr_price[normal.cookie_skeleton] = 3;
	arr_price[normal.cookie] = 3;
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
	arr_price[normal.cookie_ghost] = 3;
	arr_price[normal.rat_pocket] = 15;
	arr_price[normal.rat_bomb] = 20;
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
	arr_price[normal.cheese_expensive] = 10;
	arr_price[normal.cheese_liquid] = 5;
	arr_price[normal.rat_ratuary] = 5;
	arr_price[normal.os] = 5;
	arr_price[normal.glitch] = 5;
};
