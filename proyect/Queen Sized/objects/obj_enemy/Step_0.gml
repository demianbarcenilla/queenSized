hp = round(hp);
if(global.turn%2 = 1) and (global.canAct)
{
	if(!global.event)
	{
		if(arr_status[status.tipsy]) and (tipsyRoll = 1)
		{
			global.text = string(var_name) + " IS TOO TIPSY TO ACT!"
			image_index = 3;
			
			nextTurn();
		}
		else
		{
			if(explodeTimer = 0)
			{
				skill(normal.explode, false);
				nextTurn();
			}
			else
			{
				if(var_turnWait != 0) //If suffering the cost of a skill
				{
					if(var_turnWait = 1){ global.text = string(var_name) + " HAS TO WAIT A TURN TO ACT AGAIN!" }
					else{ global.text = string(var_name) + " HAS TO WAIT " + string(var_turnWait) + " TURNS TO ACT AGAIN!" };
		
					if(var_turnWait > 0)
					{
						var_turnWait --;
					};	
			
					if(explodeTimer > 0)
					{
						explodeTimer--;
					};
					nextTurn();
				}
				else if(frozenCountdown > 0) //If suffering the cost of a skill
				{
					global.text = string(var_name) + " IS FROZEN!";
					frozenCountdown --;
				
					nextTurn();
				}
				else
				{
					if(var_guarding){var_guarding = false};
					var _ski = choose(0, 1, 2, 3);
	
					if(irandom_range(0, 100) > 60) and (skillsAvailable) //Skill
					{
						if(!arr_status[status.electrocuted])
						{
							//Choose a skill to use
							while(st_skills[_ski] = -1) or (st_skillUses[_ski] = 0)
							{
								_ski = choose(0, 1, 2, 3)
							};
							
							//Trigger Skill
							skill(st_skills[_ski], false);
							st_skillUses[_ski] --;
							
							skillsAvailable = false;
							for(i=0; i < 4; i++)
							{
								if(st_skills[i] != -1) and (st_skillUses[i] != 0)
								{
									skillsAvailable = true;
								};
							};
						}
						else
						{
							global.text = string(var_name) +" IS ELECTROCUTED AND CAN'T USE ANY SKILLS!"
						}
					}
					else if(choose(1, 2, 3, 4) = 1) //Guard
					{
						guard();	
					}
					else
					{
						attack(st_damage);
						audio_play_sound(var_sound, 10, false);
					};
					nextTurn();
				};
			};
		};
	}
		
	else
	{
		nextTurn();
	};
};

if(disengaged and global.canAct)
{
	image_index = 3;
};

if(hp = 0)
{
	dead = true;
	newX = 540;
};

if(dead)
{
	if(obj_control.alarm[0] = -1)
	{
		obj_control.alarm[0] = obj_control.stopCinematics;
	};
	
	if(!coinsDropped)
	{
		for(i=0; i < floor(maxHp/5); i++)
		{
			instance_create_depth(x, y, depth, obj_moneyBattle);
			coinsDropped = true;
			global.money += 1;
		};
	};
	
};

x = lerp(x, newX, .1);

//PARTICLE FX
if(alarm[0] = -1) //Status FX
{
	for(i=0; i <=10; i++)
	{
		if(arr_status[i] = true)
		{
			alarm[0] = 15;
		};
	};
};

if(instance_exists(obj_enemy))
{
	tempDef = clamp(tempDef, -obj_player.st_damage*2, obj_player.st_damage*2)
};