global.canAct = true;

if(instance_exists(obj_player))
{
	with obj_player
	{
		image_index = 0;
		if(dead)
		{
			room_goto(rm_dead);
		}
		
		if(global.turn % 2 = 1)
		{
			statusEffects();
			
			st_specialRecharge --;
			st_specialRecharge = clamp(st_specialRecharge, 0, mx_specialRecharge);
		};
	};
};

if(instance_exists(obj_enemy))
{
	with obj_enemy
	{
		if(dead)
		{
			global.enemyPrev = playerSelected;
			if(obj_player.playerSelected = enemy.tito)
			{
				global.player = enemy.bondiola;
				with(obj_player){initializeTB()};
				screenshake(10, 2, .1);
			};		
			else if(obj_player.playerSelected = enemy.bondiola)
			{
				global.player = enemy.tito
				with(obj_player){initializeTB()};
				screenshake(10, 2, .1);
			};
			obj_player.tempDef = 0;
			obj_player.tempDmg = 0;
		
			for(i=0; i <= 10; i++)
			{
				obj_player.arr_status[i]= false;
			}
			
			if(_enemy != enemy.cerberus) and (_enemy != enemy.cerberus2)
			{
				global.battleCount ++;
				global.turn = 0;
				
				
				if(_enemy != enemy.queen)
				{
					if(!global.battleCount % 10 = 0)
					{
						var _newEnemy = instance_create_depth(x, y, depth, obj_enemy);
						_newEnemy.newX = 400;	
					};
			
					instance_destroy();
					
					//Unlocks Omar and Tito/Bondiola once you beat them
					var _newUnlock = false;
					if(_enemy = enemy.omar)
					{
						ini_open("unlocks.ini")
							if(ini_read_real("unlocks", "4", false) = false)
							{
								_newUnlock = true;
								instance_create_depth(0, 0, depth, obj_newUnlockBattle);
							}
							ini_write_real("unlocks", "4", true);
						ini_close();
					}
					
					if(_enemy = enemy.tito) or (_enemy = enemy.bondiola)
					{
						ini_open("unlocks.ini")
							if(ini_read_real("unlocks", "6", false) = false)
							{
								_newUnlock = true;
								instance_create_depth(0, 0, depth, obj_newUnlockBattle);
							}
							ini_write_real("unlocks", "6", true);
						ini_close();
					}
					
					global.newUnlocks = _newUnlock;
					
					global.michaelMode = -1;
					
					if(_enemy >= enemy.clown1) and (_enemy <= enemy.clown7)
					{
						with(_enemy)
						{
							initializeEnemy(enemy.clown_car);
						};
						ini_open("tempDATA.ini")
							_enemy.hp = ini_read_real("clownCar", "hp", maxHp)
						ini_close();
					}
					
					if(global.battleCount % 5 = 0)
					{
						instance_create_depth(0, 0, depth, obj_shop);
					};
				};
			
				else
				{
					global.timesFinished ++;
					
					ini_open("unlocks.ini")
						ini_write_real("other", "timesFinished", global.timesFinished);
						
						//Stores the unlocks to compare them to the NEW unlocks after updating them
						var _arrUnlocked;
						for(i = 1; i <= 20; i++)
						{
							_arrUnlocked[i] = ini_read_real("unlocks", i, false);
						}
						
						switch(obj_player.playerSelected)
						{
							case enemy.pillow:
								ini_write_real("unlocks", 01, true);
								ini_write_real("unlocks", 02, true);
							break;
						
							case enemy.rat_king:
								ini_write_real("unlocks", 10, true);
								ini_write_real("unlocks", 11, true);
							break;
						
							case enemy.omar:
								ini_write_real("unlocks", 9, true);
								ini_write_real("unlocks", 12, true);
							break;
						
							case enemy.phish:
								ini_write_real("unlocks", 8, true);
								ini_write_real("unlocks", 14, true);
							break;
						
							case (enemy.tito or enemy.bondiola):
								ini_write_real("unlocks", 13, true);
								ini_write_real("unlocks", 15, true);
							break;
						
							case enemy.eggplant:
								ini_write_real("unlocks", 16, true);
								ini_write_real("unlocks", 17, true);
							break;
						
							case enemy.merchant:
								ini_write_real("unlocks", 19, true);
							break;
						
							case enemy.cookie:
								ini_write_real("unlocks", 18, true);
							break;
						}
						for(i = 1; i <= 20; i++)
						{
							if(_arrUnlocked[i] != ini_read_real("unlocks", i, false))
							{
								global.newUnlocks = true;
								break;
							};
						}
					ini_close();
					room_goto(rm_outro)
				};
			};
			else //if dealing with a cerberus
			{
				if(_enemy = enemy.cerberus)
				{
					_enemy = enemy.cerberus2
					initializeEnemy(_enemy);
					newX = 400;
					global.turn++;
				
					dead = false
					coinsDropped = false;
					explodeTimer = -1;
				};
		
				else
				{
					_enemy = enemy.cerberus3
					initializeEnemy(_enemy);
					newX = 400;
					global.turn++;
				
					dead = false
					coinsDropped = false;
					explodeTimer = -1;
				};
			};
		};
		else
		{
			if(global.turn % 2 = 1)
			{
				statusEffects();
				global.text = choose(arr_enemy[playerSelected, character.text_1], arr_enemy[playerSelected, character.text_2], arr_enemy[playerSelected, character.text_3])
				global.textPrev = global.text;
			};
		};
		image_index = 0;
	};
};