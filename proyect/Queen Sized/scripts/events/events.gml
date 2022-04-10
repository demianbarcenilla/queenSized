function eventValues()
{
	//Rat Flute Event
	arr_event[0, 0] = normal.cheese;//Left Choice
	arr_event[0, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasCheese = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.cheese)
				{
					st_skills[i] = normal.rat_flute;
					st_skillUses[i] = arr_skill[normal.rat_flute, skills.uses];
					hasCheese = true
					break;
				}
				else if(st_skills[i] = normal.rat_flute)
				{
					break;
				};
			};
			
			if(!hasCheese)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.rat_flute;
						st_skillUses[i] = arr_skill[normal.rat_flute, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[0, 2] = "RAT WANTS SOME OF YOUR CHEESE. GIVE CHEESE?"//Text
	arr_event[0, 3] = "RAT LEAVES YOU A PRESENT IN RETURN!"//Text for when you accept
	arr_event[0, 4] = "RAT GOT SAD..."//Text for when you decline
	
	//Rat King Event
	arr_event[1, 0] = normal.rat_flute;//Left Choice
	arr_event[1, 1] = function(){ //Consecuences of event
		
		//UNLOCK RAT KING
		var _newUnlock = false;
		ini_open("unlocks.ini")
			if(ini_read_real("unlocks", "3", false) = false)
			{
				_newUnlock = true;
				instance_create_depth(0, 0, depth, obj_newUnlockBattle);
			}
			ini_write_real("unlocks", "3", true);
		ini_close();
		
		with(obj_player)
		{
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.rat_flute)
				{
					st_skills[i] = -1;
					st_skillUses[i] = -1;
					break;
				};
			};
		}
		
		global.battleCount = 0;
		global.turn = 0;
		
		global.stage = stage.sewer;
		
		obj_player.hp = obj_player.maxHp;
		if(global.player = enemy.tito) or (global.player = enemy.bondiola)
		{
			if(obj_player.playerSelected = enemy.tito)
			{
				ini_open("tempBONDIOLA.ini")
			}
			else
			{
				ini_open("tempTITO.ini")
			};
				ini_write_real("stats", "hp", maxHp);
				
			ini_close();
		};
	
	};
	arr_event[1, 2] = "RAT KING ASKS FOR THE RAT FLUTE, HE WILL TAKE YOU SOMEWHERE IN RETURN!"//Text
	arr_event[1, 3] = "RAT KING TAKES YOU TO A DEEPER PLACE"//Text for when you accept
	arr_event[1, 4] = "RAT KING SAYS YOU'RE MAKING A MISTAKE!"//Text for when you decline
	
	//Car Honk Event
	arr_event[2, 0] = normal.honk;//Left Choice
	arr_event[2, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.honk)
				{
					st_skills[i] = -1;
					st_skillUses[i] = -1;
					break;
				};
			};
		}
		global.battleCount = 0;
		global.turn = 0;
		global.stage = stage.cloud;
		obj_player.hp += obj_player.maxHp/2;
		if(global.player = enemy.tito) or (global.player = enemy.bondiola)
		{
			if(obj_player.playerSelected = enemy.tito)
			{
				ini_open("tempBONDIOLA.ini")
			}
			else
			{
				ini_open("tempTITO.ini")
			};
				ini_write_real("stats", "hp", maxHp/2);
			};
	};
	arr_event[2, 2] = "MAD CAR HONKS BACK!"//Text
	arr_event[2, 3] = "MAD CAR GIVES YOU A RIDE"//Text for when you accept
	arr_event[2, 4] = "HONK HONK?"//Text for when you decline
	
	//Lemonade Kid Event
	arr_event[3, 0] = normal.lemonade_plus;//Left Choice
	arr_event[3, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasLemonade = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.lemonade)
				{
					st_skills[i] = normal.lemonade_plus;
					st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
					hasLemonade = true
					break;
				}
				else if(st_skills[i] = normal.lemonade_plus)
				{
					break;
				};
			};
			
			if(!hasLemonade)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.lemonade_plus;
						st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[3, 2] = "LEMONADE KID WANTS TO GIVE YOU SOMETHING BETTER"//Text
	arr_event[3, 3] = "LEMONADE KID GIVES YOU A BETTER LEMONADE!"//Text for when you accept
	arr_event[3, 4] = "ENJOY YOUR REGULAR LEMONADE, THEN"//Text for when you decline
	
	//Lemonade Kid Event 2
	arr_event[3, 0] = normal.lemonade_bitter;//Left Choice
	arr_event[3, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasLemonade = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.lemonade)
				{
					st_skills[i] = normal.lemonade_plus;
					st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
					hasLemonade = true
					break;
				}
				else if(st_skills[i] = normal.lemonade_plus)
				{
					break;
				};
			};
			
			if(!hasLemonade)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.lemonade_plus;
						st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[3, 2] = "LEMONADE KID WANTS TO GIVE YOU SOMETHING BETTER"//Text
	arr_event[3, 3] = "LEMONADE KID GIVES YOU A BETTER LEMONADE!"//Text for when you accept
	arr_event[3, 4] = "ENJOY YOUR REGULAR LEMONADE, THEN"//Text for when you decline
	
	//Lemonade Kid Event 2
	arr_event[3, 0] = normal.lemonade_seedy;//Left Choice
	arr_event[3, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasLemonade = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.lemonade)
				{
					st_skills[i] = normal.lemonade_plus;
					st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
					hasLemonade = true
					break;
				}
				else if(st_skills[i] = normal.lemonade_plus)
				{
					break;
				};
			};
			
			if(!hasLemonade)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.lemonade_plus;
						st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[3, 2] = "LEMONADE KID WANTS TO GIVE YOU SOMETHING BETTER"//Text
	arr_event[3, 3] = "LEMONADE KID GIVES YOU A BETTER LEMONADE!"//Text for when you accept
	arr_event[3, 4] = "ENJOY YOUR REGULAR LEMONADE, THEN"//Text for when you decline
	
	//Lemonade Kid Event 2
	arr_event[3, 0] = normal.lemonade_rotten;//Left Choice
	arr_event[3, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasLemonade = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.lemonade)
				{
					st_skills[i] = normal.lemonade_plus;
					st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
					hasLemonade = true
					break;
				}
				else if(st_skills[i] = normal.lemonade_plus)
				{
					break;
				};
			};
			
			if(!hasLemonade)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.lemonade_plus;
						st_skillUses[i] = arr_skill[normal.lemonade_plus, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[3, 2] = "LEMONADE KID WANTS TO GIVE YOU SOMETHING BETTER"//Text
	arr_event[3, 3] = "LEMONADE KID GIVES YOU A BETTER LEMONADE!"//Text for when you accept
	arr_event[3, 4] = "ENJOY YOUR REGULAR LEMONADE, THEN"//Text for when you decline
};

function eventStart(_value)
{
	if(instance_exists(obj_stats))
	{
		obj_stats.alarm[0] = 1;
	};
	
	if(obj_enemy.playerSelected = enemy.rat) and (_value = normal.cheese) //RAT FLUTE EVENT
	{
		var _flute = false;
		for(i=0; i < 4; i++)
		{
			if(st_skills[i] = normal.rat_flute)
			{
				_flute = true;
				break;
			};
		};
		
		if(!_flute)
		{
			global.event = true;
			global.eventType = 0;
			nextTurn();
		};
	}
	else if(obj_enemy.playerSelected = enemy.rat_king) and (_value = normal.rat_flute) //KING+FLUTE EVENT
	{
		global.event = true;
		global.eventType = 1;
		nextTurn();
	};
	/*else if(obj_enemy.playerSelected = enemy.car) and (_value = normal.honk) //CAR EVENT
	{
		global.event = true;
		global.eventType = 2;
		nextTurn();
	};
	
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.lemonade)
	{
		global.event = true;
		global.eventType = 3;
		nextTurn();
	};
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.lemonade_plus)
	{
		global.event = true;
		global.eventType = 4;
		nextTurn();
	};
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.lemonade_bitter)
	{
		global.event = true;
		global.eventType = 4;
		nextTurn();
	};
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.lemonade_seedy)
	{
		global.event = true;
		global.eventType = 4;
		nextTurn();
	};
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.lemonade_rotten)
	{
		global.event = true;
		global.eventType = 4;
		nextTurn();
	};*/
};

function execute_event(_value)
{
	if(instance_exists(obj_uiAttack))
	{
		instance_destroy(obj_uiAttack);
		instance_destroy(obj_uiSkills);
		instance_destroy(obj_uiGuard);
		instance_destroy(obj_uiSpecial);
	};
	
	if(instance_exists(obj_back))
	{
		instance_destroy(obj_back);
	};
	
	if(!instance_exists(obj_uiChoice))
	{
		instance_create_depth(140, 240, depth, obj_uiChoice);
		instance_create_depth(240, 240, depth, obj_uiChoice2);
		
		obj_uiChoice.image_index = arr_event[global.eventType, 0]+1;
		global.text = arr_event[global.eventType, 2];
	};
	
	if(mouse_check_button_pressed(mb_left))
	{
		if(obj_uiChoice.selected)
		{
			global.event = false;
			global.primaryUI = true;
			
			arr_event[global.eventType, 1]();
			global.text = arr_event[global.eventType, 3];
			
			obj_enemy.newX = 540;
			obj_enemy.alarm[1] = 59;
			
			global.enemyPrev = playerSelected;
			resetToPrimary();
			nextTurn();
		};
		else if(obj_uiChoice2.selected)
		{
			global.event = false;
			global.primaryUI = true;
			
			global.text = arr_event[global.eventType, 4];
			global.turn ++;
			resetToPrimary();
		};
	};
	
};