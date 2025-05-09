function execute_ui()
{
	
	if(global.primaryUI)
	{
		if(instance_exists(obj_uiAttack))
		{
			//Check for which button is Selected;
			if(obj_uiAttack.selected = true){ guiSelected = 0 }
			else if(obj_uiSkills.selected = true){ guiSelected = 1 }
			else if(obj_uiGuard.selected = true){ guiSelected = 2 }
			else if(obj_uiSpecial.selected = true){ guiSelected = 3 }
			else{ guiSelected = -1 };
		};
		
		switch(guiSelected)
		{
			case -1: //Nothing is Selected
				global.text = global.textPrev;
			break;
	
			case 0: //Attack
				//text
				if(obj_player.playerSelected = enemy.eggplant) and (obj_enemy.arr_status[status.frozen] = true)
				{
					global.text = "A Stronger basic attack!"
				}
				else
				{
					global.text = "Damage the opponent!"
				}
				
				
				//function
				if(mouse_check_button_pressed(mb_left)) and (canPressCards)
				{
					attack(st_damage);
					
					audio_play_sound(var_sound, 10, false);
					
					nextTurn();
				};
			break;
	
			case 1: //Skills
				global.text = "Use the skills you collected in your journey!"
			
				if(mouse_check_button_pressed(mb_left)) and (canPressCards)
				{
					global.primaryUI = false;
				};
			break;
	
			case 2: //Guard
				if(obj_enemy.arr_status[status.frozen])
				{
					global.text = "Heal some HP and Guard! (Only appears when enemy is Frozen)"
				}
				else
				{
					global.text = "Halve damage for this turn! chance to evade attacks"
				};
				
				if(mouse_check_button_pressed(mb_left)) and (canPressCards)
				{
					guard()
					nextTurn();
				};
			break;
	
			case 3: //Special
				if(!arr_status[status.electrocuted])
				{
					//text
					if(obj_player.st_special != -1)
					{
						if(st_specialRecharge > 0) //if charging, display text
						{
							global.text = "( " + string(st_specialRecharge) + " ) TURNS UNTIL IT RECHARGES";
						}
						else
						{
							if(var_specialPlus)
							{
								global.text = arr_skill[obj_player.st_special, skills.descPlus];
							}
							else
							{
								global.text = arr_skill[obj_player.st_special, skills.desc];
							};
						};
					
					
						//function 
						if(mouse_check_button_pressed(mb_left)) and (canPressCards)
						{
							special(st_special);
						};
					}
					else
					{
						global.text = "no special skill available";
					
						//function
						if(mouse_check_button_pressed(mb_left))
						{
							audio_play_sound(snd_error, 10, false);
						};
					};
				}
				else
				{
					global.text = " YOU CAN'T USE THIS BECAUSE YOU'RE ELECTROCUTED";
					
					//function
					if(mouse_check_button_pressed(mb_left))
					{
						audio_play_sound(snd_error, 10, false);
					};
				};
				
			break;
		};
	}
	else
	{
		//Check for which button is Selected;
		if(instance_exists(obj_skill1))
		{
			if(obj_skill1.selected = true){ guiSelected = 0 }
			else if(obj_skill2.selected = true){ guiSelected = 1 }
			else if(obj_skill3.selected = true){ guiSelected = 2 }
			else if(obj_skill4.selected = true){ guiSelected = 3 }
			else{ guiSelected = -1 };
			
		switch(guiSelected)
		{
			case -1: //Nothing is Selected
				global.text = global.textPrev;
			break;
	
			case 0: //Skills
				
				//text
				skillText(obj_skill1)
				
				//function
				if(mouse_check_button_pressed(mb_left))
				{
					skillTrigger();
				};
				
			break;
	
			case 1:
				
				//text
				skillText(obj_skill2)
				
				//function
				if(mouse_check_button_pressed(mb_left))
				{
					//use the skill
					skillTrigger();
				};
			break;
	
			case 2:
				
				//text
				skillText(obj_skill3)
				
				//function
				if(mouse_check_button_pressed(mb_left))
				{
					//use the skill
					skillTrigger();
				};
			break;
	
			case 3: //Special
				
				//text
				skillText(obj_skill4)
				
				//function
				if(mouse_check_button_pressed(mb_left))
				{					
					//use the skill
					skillTrigger();
				};
			break;
		};
	};
};
};

function skillTrigger()
{
	var _phishUse = false;
	if(global.player = enemy.phish) and (guiSelected != -1)
	{
		if(st_skills[guiSelected] != -1)
		{
			if(global.money >= arr_price[st_skills[guiSelected]])
			{
				_phishUse = true;
			};
		};
	};
			
	var isRechargeable = false;
	if(st_skillRecharge[guiSelected] != -1){isRechargeable = true};
	
	if(global.player = enemy.phish)
	{
		if(st_skills[guiSelected] != -1) and (_phishUse)
		{
			skillUses();
			skill(st_skills[guiSelected], st_skillPlus[guiSelected]);
						
			global.primaryUI = true;
			resetToPrimary();
						
			nextTurn();
		}
						
		else
		{
			audio_play_sound(snd_error, 1, 0);
		};
	}
	else
	{
		if(st_skills[guiSelected] != -1)
		{
			if(!isRechargeable) or (isRechargeable and st_skillRecharge[guiSelected] = 0)
			{
				if(isRechargeable)
				{
					st_skillRecharge[guiSelected] = arr_skill[st_skills[guiSelected], skills.recharge] + 1;
				};
			
				skillUses();
				skill(st_skills[guiSelected], st_skillPlus[guiSelected]);
						
				global.primaryUI = true;
				resetToPrimary();
			
				nextTurn();
			}
			
			else
			{
				audio_play_sound(snd_error, 1, 0);
			};
		}
			
		else
		{
			audio_play_sound(snd_error, 1, 0);
		};
	}
}

function screenshake(time, ammount, fade)
{
	with(obj_control)
	{
		shaking = true;
	
		shakeTime = time;
		shakeAmmount = ammount;
		shakeFade = fade;
	};
};

function uiBehave()
{
	//Go up when hovering mouse
	if(global.canAct)
	{
		if(place_meeting(x, y, obj_mouse))
		{
			yPlus = 0;
			selected = true;
		}
		else
		{
			yPlus = 20;
			selected = false;
		};
	};
	y = lerp(y, ystart+yPlus, .1);
}

function resetToPrimary()
{
	if(!instance_exists(obj_shop)) and (!instance_exists(obj_uiAttack))
	{
		instance_create_depth(40, 240, depth, obj_uiAttack);
		instance_create_depth(140, 240, depth, obj_uiSkills);
		instance_create_depth(240, 240, depth, obj_uiGuard);
		instance_create_depth(340, 240, depth, obj_uiSpecial);
	}
	else
	{
		instance_activate_object(obj_arrow);
		instance_activate_object(obj_shopBubble);
		instance_activate_object(obj_shopSkill);
		instance_activate_object(obj_shopSwitch);
		instance_activate_object(obj_shopReroll);
	};
		
	instance_destroy(obj_skill1);
	instance_destroy(obj_skill2);
	instance_destroy(obj_skill3);
	instance_destroy(obj_skill4);
		
	if(instance_exists(obj_back))
	{
		with(obj_back)
		{
			instance_destroy();
		};
	};
};

function color()
{
	arr_colors[0] = GRAY;
	arr_colors[1] = RED;
	arr_colors[2] = ORANGE;
	arr_colors[3] = YELLOW;
	arr_colors[4] = GREEN;
	arr_colors[5] = CYAN;
	arr_colors[6] = BLUE;
	arr_colors[7] = LIGHT_BLUE;
	arr_colors[8] = PINK;
	arr_colors[9] = PURPLE;
	arr_colors[10] = c_white;
};

function skillText(_obj)
{
	if(st_skills[guiSelected] != -1)
	{
		//text
		var _uses = "";
		
		if(st_skillUses[guiSelected] >= 1)//If uses remain, use item
		{
			if(st_skillUses[guiSelected] = 1)
			{
				_uses = "( ONE USE LEFT )";
			}
			else
			{
				_uses = "( " + string(st_skillUses[guiSelected]) + " USES LEFT )";
			};
		}
		
		if(global.player != enemy.phish) //If you're not Phish, write uses left
		{
			global.text = _obj.text +_uses;
		};
		else //If you ARE phish, just write the description
		{
			global.text = _obj.text;
		}
		
	};
}

function resetGameState()
{
	global.turn = 0;

	global.canAct = true;
	global.battleCount = 0;
	global.stage = 0;
	
	global.text = "";
	global.textPrev = global.text;
		
	global.mult = 0;
	global.event = false;
	global.eventType = 0;
	global.newUnlocks = false;
	global.queenType = 0;
	
	global.primaryUI = true;
	tempErase();
}

function statText(stat, tempStat)
{
	var _statMath = " (" + string(stat) + string( sign(tempStat) = 1 ? "+" : "-" ) + string(abs(tempStat)) + ")";
	var _statdraw = string(stat + tempStat) + _statMath;
	return _statdraw;
};

function skillUses()
{
	if(global.player != enemy.phish)
	{
		if(st_skillUses[guiSelected] > 0) //If uses remain, use item
		{
			st_skillUses[guiSelected] --;
		};
	}
	else
	{
		for(i=0; i < st_skillUses[guiSelected]; i++)
		{
			instance_create_depth(x, y, depth-1, obj_money);	
		};
		global.money -= st_skillUses[guiSelected];
	};
}

function unlocks()
{
	ini_open("unlocks.ini")
		//Add new victory to global total
		ini_write_real("timesFinished", "total", global.timesFinished);
		
		//Add new victory to character specific total
		ini_write_real(
			"timesFinished", 
			string(obj_player.playerSelected) + "-" + string(global.queenType), 
			ini_read_real("timesFinished", string(obj_player.playerSelected) + "-" + string(global.queenType), 0) + 1
		);
		
		//Stores the unlocks to compare them to the NEW unlocks after updating them
		var _arrUnlocked;
		for(i = 1; i <= 50; i++)
		{
			_arrUnlocked[i] = ini_read_real("unlocks", i, false);
		}
		
		if(global.timesFinished > 0)
		{
			ini_write_real("unlocks", 01, true);
		};
		
		switch(obj_player.playerSelected)
		{
			case enemy.pillow:
				if(global.queenType = 0)
				{
					ini_write_real("unlocks", 2, true);
				}
				else if(global.queenType = 1)
				{
					ini_write_real("unlocks", 3, true);
				}
				else if(global.queenType = 2)
				{
					ini_write_real("unlocks", 4, true);
				}
				else if(global.queenType = 3)
				{
					ini_write_real("unlocks", 5, true);
				};
			break;
						
			case enemy.rat_king:
				if(global.queenType = 0)
				{
					ini_write_real("unlocks", 7, true);
				}
				else if(global.queenType = 1)
				{
					ini_write_real("unlocks", 8, true);
				}
				else if(global.queenType = 2)
				{
					ini_write_real("unlocks", 9, true);
				}
				else if(global.queenType = 3)
				{
					ini_write_real("unlocks", 10, true);
				};
			break;
			
			case enemy.eggplant:
				if(global.queenType = 0)
				{
					ini_write_real("unlocks", 12, true);
				}
				else if(global.queenType = 1)
				{
					ini_write_real("unlocks", 13, true);
				}
				else if(global.queenType = 2)
				{
					ini_write_real("unlocks", 14, true);
				}
				else if(global.queenType = 3)
				{
					ini_write_real("unlocks", 15, true);
				};
			break;
			
			case enemy.cookie:
				if(global.queenType = 0)
				{
					ini_write_real("unlocks", 16, true);
				}
				else if(global.queenType = 1)
				{
					ini_write_real("unlocks", 17, true);
				}
				else if(global.queenType = 2)
				{
					ini_write_real("unlocks", 18, true);
				}
				else if(global.queenType = 3)
				{
					ini_write_real("unlocks", 19, true);
				};
			break;
			/*						
			case enemy.omar:
				ini_write_real("unlocks", 9, true);
				ini_write_real("unlocks", 12, true);
			break;*/
						
			case enemy.phish:
				if(global.queenType = 0)
				{
					ini_write_real("unlocks", 21, true);
				}
				else if(global.queenType = 1)
				{
					ini_write_real("unlocks", 22, true);
				}
				else if(global.queenType = 2)
				{
					ini_write_real("unlocks", 23, true);
				}
				else if(global.queenType = 3)
				{
					ini_write_real("unlocks", 24, true);
				};
			break;
						
			/*case (enemy.tito or enemy.bondiola):
				ini_write_real("unlocks", 13, true);
				ini_write_real("unlocks", 15, true);
			break;
						
			case enemy.merchant:
				ini_write_real("unlocks", 19, true);
			break;
						
			case enemy.cookie:
				ini_write_real("unlocks", 18, true);
			break;*/
		}
		
		for(i = 1; i <= 50; i++)
		{
			if(_arrUnlocked[i] != ini_read_real("unlocks", i, false))
			{
				global.newUnlocks = true;
				break;
			};
		}
	ini_close();
}

function drawBadges(player)
{
	ini_open("unlocks.ini");
	for(i = 0; i < 4; i++)
	{
		var _routeFinished = ini_read_real("timesFinished", string(player) + "-" +string(i), 0);
			
		if(_routeFinished)
		{
			draw_sprite(spr_badges, i, room_width -75 -(75*i), room_height-75)
		}
		else
		{
			draw_sprite(spr_badgesLocked, i, room_width -75 -(75*i), room_height-75)
		};
	};
	ini_close();
};
/*function hasPlus()
{
	ini_open("unlocks.ini")
	if((global.player = enemy.pillow) and (ini_read_real("unlocks", "3", false))) or
	((global.player = enemy.rat_king) and (ini_read_real("unlocks", "8", false))) or
	((global.player = enemy.eggplant) and (ini_read_real("unlocks", "13", false)))
	{
		return true;
	}
	else
	{
		return false;
	}
	ini_close();

}*/

function drawRecharge(rechargeNumber, isSpecial)
{
	var _rechargeX = x+80, _displace = 7;

	var _subimage 

	if(!obj_player.arr_status[status.electrocuted]) or (!isSpecial)
	{
		_subimage = rechargeNumber > 0 ? 0 : 1;
	}
	else
	{
		_subimage = 2;
	};

	draw_set_color(c_white)

	draw_sprite(spr_rechargeTime, _subimage, _rechargeX, y)

	if(_subimage = 0)
	{
		draw_text(_rechargeX, y-_displace, string(rechargeNumber))
	};
};

function drawPrice(price)
{
	var _priceX = 40, _displace = 17;
	
	draw_sprite(spr_phishPrice, 0, x, y -_displace);
	
	draw_set_color(c_white)
	draw_set_font(global.blackFont);
	draw_set_halign(fa_left)
	draw_text(x+ _priceX-3, y -6, string(price + (2 * global.mult)))
};

function replaceSkill()
{
	audio_play_sound(snd_heal, 0, false);
				
	obj_player.st_skills[guiSelected]= var_holding;
	obj_player.st_skillPlus[guiSelected] = holdingPlus;
					
	if(!holdingPlus)
	{
		obj_player.st_skillUses[guiSelected]= arr_skill[var_holding, skills.uses];
		obj_player.st_skillRecharge[guiSelected]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
	}
	else
	{
						
		obj_player.st_skillUses[guiSelected]= arr_skill[var_holding, skills.usesPlus];
		obj_player.st_skillRecharge[guiSelected]= arr_skill[var_holding, skills.costPlus] > 0 ? 0 : -1;
	}
					
	obj_shop.alarm[0] = 5;
				
	global.text = global.textPrev;
				
	obj_shop.canChangeText = 0;
					
	with(obj_shopSkill){reroll = true};
					
	if(!global.shoplift)
	{
		global.money -= cost;
				
		repeat(cost)
		{
			instance_create_depth(x, y, depth, obj_money);
		};
	}
					
	else
	{
		global.shoplift = false;
	}
					
	instance_destroy();
	
	instance_activate_object(obj_shopBubble);
	instance_activate_object(obj_shopSkill);
	instance_activate_object(obj_shopSwitch);
	instance_activate_object(obj_shopReroll);
	instance_activate_object(obj_shopLift);
	instance_activate_object(obj_shopPreserve);
	instance_activate_object(obj_shopBake);
}

function shopSkills()
{
	//check if shop skills are unlocked
	var _rerollUnlocked, _shopliftUnlocked, _preserveUnlocked, _bakeUnlocked;
	ini_open("unlocks.ini");
		_rerollUnlocked = ini_read_real("unlocks", "2", false);
		_shopliftUnlocked = ini_read_real("unlocks", "7", false);
		_preserveUnlocked = ini_read_real("unlocks", "12", false);
		_bakeUnlocked = ini_read_real("unlocks", "16", false);
	ini_close();

	//if playing as pillow and the reroll skill is unlocked, spawn it
	if(global.player = enemy.pillow) and (_rerollUnlocked)
	{
		instance_create_depth(ROOMWIDTH-50, room_height-20,depth-1, obj_shopReroll);
	};

	//If playing as the Rat King and the conditions are met, spawn SHOPLIFT
	if(global.player = enemy.rat_king) and (_shopliftUnlocked)
	{
		instance_create_depth(ROOMWIDTH-50, room_height-20,depth-1, obj_shopLift);
	};
	
	//If playing as Jean and the conditions are met, spawn PRESERVE
	if(global.player = enemy.eggplant) and (_preserveUnlocked)
	{
		instance_create_depth(ROOMWIDTH-50, room_height-20,depth-1, obj_shopPreserve);
	};
	
	//If playing as cookie and the conditions are met, spawn BAKE
	if(global.player = enemy.cookie) and (_bakeUnlocked)
	{
		instance_create_depth(ROOMWIDTH-50, room_height-20,depth-1, obj_shopBake);
	};
}