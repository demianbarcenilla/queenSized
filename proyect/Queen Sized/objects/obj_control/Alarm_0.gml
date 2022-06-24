global.canAct = true;

if(instance_exists(obj_player))
{
	with obj_player
	{
		image_index = 0;
		
		if(global.turn % 2 = 1)
		{
			statusEffects();
			
			st_specialRecharge --;
			st_specialRecharge = clamp(st_specialRecharge, 0, mx_specialRecharge);
			
			var i;
			for(i=0; i < 4; i++)
			{
				if(st_skillRecharge[i] > 0)
				{
					st_skillRecharge[i] --;
				};
			};
		};
	};
};

if(instance_exists(obj_enemy))
{
	with obj_enemy
	{
		if(dead)
		{
			global.turn = 0;
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
			obj_player.canPressCards = false;
			obj_player.alarm[10] = 15;

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
					/*if(_enemy = enemy.omar)
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
					}*/
					
					global.newUnlocks = _newUnlock;
					
					global.michaelMode = -1;
					
					if(global.battleCount % 5 = 0)
					{
						instance_create_depth(0, 0, depth, obj_shop);
					};
				};
			
				else
				{
					global.timesFinished ++;
					
					//Unlock Function
					unlocks();
					
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