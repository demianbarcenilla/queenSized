//Working UI
hp = round(hp);
if(global.player = enemy.phish)
{
	for(i=0; i<4; i++) //Sets the cost in uses to prices
	{
		if(st_skills[i] != -1)
		{
			st_skillUses[i] = arr_price[st_skills[i]] +(2*global.mult);
		};
	};
};

if(!instance_exists(obj_shop))
{
	if(global.turn%2 = 0) and (global.canAct)
	{
		if(arr_status[status.tipsy]) and (tipsyRoll = 2)
		{
			global.text = string(var_name) + " IS TOO TIPSY TO ACT!"
			image_index = 3;
			
			nextTurn();
		};
		else
		{
			if(explodeTimer = 0)
			{
				skill(normal.explode);
				nextTurn();
			};
			else if(frozenCountdown > 0) //If suffering the cost of a skill
				{
					global.text = string(var_name) + " IS FROZEN!";
					frozenCountdown --;
				
					nextTurn();
				};
			else
			{
				if(var_turnWait != 0) //If suffering the cost of a skill
				{
					if(var_turnWait = 1){ global.text = string(var_name) + " HAS TO WAIT A TURN TO ACT AGAIN!" };
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
				};
	
				else
				{
					if(var_guarding){ var_guarding = false };
					
					if(!global.event)
					{
						if(instance_exists(obj_uiAttack) or (instance_exists(obj_skill4))){ execute_ui();};
					};
					else
					{
						execute_event(global.eventType);
					};
				};
			};
		};
		
		execute_chat();
	};
};

if(disengaged and global.canAct)
{
	image_index = 3;
};

if(hp = 0)
{
	dead = true;
	x = lerp(x, -80, .1);
};

if(alarm[0] = -1) //Status FX
{
	for(i=0; i <= 10; i++)
	{
		if(arr_status[i] = true)
		{
			alarm[0] = 15;
		};
	};
};

playerSelected = global.player;