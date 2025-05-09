function attack(_value){
	if(_other.var_hpFreeze <= 0) //IF HP IS NOT FROZEN
	{
		//If striking with jean, multiply dmg *1.2
		var _strike = 0, _mult = 0.2;
	
	
		//Freeze if Player is Jean
		if(_other = obj_player) and (obj_player.playerSelected = enemy.eggplant)
		{
			var _rng = irandom_range(0, 1)
			if(_rng = 1)
			{
				frozenCountdown = 1; 
				arr_status[status.frozen] = true; 
			};
		}
		if(_other = obj_enemy) and (obj_player.playerSelected = enemy.eggplant) and (obj_enemy.arr_status[status.frozen] = true)
		{
			_strike = 1;
		};
	
		//If you're spooked
		if(arr_status[status.spooked])
		{
			var ii = choose(1, 2, 3, 4) //Roll
			if(ii != 1) //If DIDN'T ROLL 1, attack
			{
				_other.hp -= dmgCalc(_other, _self, _value +(_value* _mult *_strike));
				
				if(arr_status[status.connected]) //If you're connected to the enemy, recieve the same damage they do
				{
					hp -= dmgCalc(_other, _self, _value);
				};
				
				_other.image_index = 1;
				_self.image_index = 2;
		
				screenshake(5, 2, .25);
				global.text = string(_self.var_name) + " ATTACKS!";
			
				with(obj_control)
				{
					alarm[0] = stopCinematics;
				};
			}
			else //If rolled 2/3/4, miss turn
			{
				_other.image_index = 3;
				_self.image_index = 1;
				
				global.text = string(_self.var_name) + " IS TOO SCARED TO ATTACK!";
			};
		}
		else
		{
			_other.hp -= dmgCalc(_other, _self, _value +(_value* _mult *_strike));
			
			if(_other.arr_status[status.disengaged]) or ((obj_control.var_calledNope = _other) and (instance_exists(obj_nope)))
			{
				_other.image_index = 3;
			}
			else
			{
				_other.image_index = 1;
			};
			_self.image_index = 2;
		
			screenshake(5, 2, .25);
			global.text = string(_self.var_name) + " ATTACKS!";
		
			with(obj_control)
			{
				alarm[0] = stopCinematics;
			};
		
			_other.arr_status[status.disengaged] = false;
		};
		if(arr_status[status.connected]) //If you're connected to the enemy, recieve dmg
		{
			hp -= dmgCalc(_other,_self, _value +(_value* _mult *_strike));
		};
	}
	else
	{
	_other.image_index = 0;
	_self.image_index = 2;
				
	global.text = string(_self.var_name) + " ATTACKS!";
	}
};

function skill(value, isPlus){
	
	if(!isPlus)
	{
		//wait the cost of the skill
		if(global.player != enemy.phish) and (_other = obj_player)
		{
			var_turnWait = arr_skill[value, skills.cost];
		};
		arr_skill[value, skills.func]();
	}
	else
	{
		//wait the cost of the skill
		if(global.player != enemy.phish) and (_other = obj_player)
		{
			var_turnWait = arr_skill[value, skills.cost];
		};
		arr_skill[value, skills.funcPlus]();
	}
			
	//change sprites
	image_index = arr_skill[value, skills.selfIndex];
	_other.image_index = arr_skill[value, skills.otherIndex];
	
	createAnim(arr_skill[value, skills.anim]); //middle animation
	
	//text
	global.text = arr_skill[value, skills.text];
	
	//play sound
	audio_play_sound(arr_skill[value, skills.sound], 0, 0);
	
	ini_open("unlocks.ini");
		var _eventsUnlocked = ini_read_real("unlocks", "1", false);
		if(_other = obj_enemy) and (_eventsUnlocked)
		{
			eventStart(value); //If the conditions are given, start an event
		};
	ini_close();
};

function setSkillRecharge(value){
	if(obj_player.arr_skill[st_skills[value], skills.cost] > 0)
	{
		st_skillRecharge[value] = 0;
	}
	else
	{
		st_skillRecharge[value] = -1;
	};
};

function nextTurn(){
	global.canAct = false;		
	global.turn++;
	
	with(obj_control)
	{
		if(!instance_exists(obj_midAnim))
		{
			alarm[0] = stopCinematics+20;
		}
		else
		{
			alarm[0] = stopCinematics;
		}
		
	};
}

function dmgCalc(_target, _self, _val)
{
	var _finalDMG;
	
	var _finalDEF = (_target.st_defense +_target.tempDef);
	if(_target.arr_status[status.rotten])
	{
		_finalDEF = min(_finalDEF, 0);
	};
	_finalDMG = _val+_self.tempDmg -_finalDEF;
	_finalDMG = clamp(_finalDMG, _val/2, _val*2);
		
	if(_target.var_guarding) //If your target is guarding, halve the damage
	{
		var _whiff;
		
		if(_target != obj_enemy)
		{
			_whiff = irandom_range(0, 3);
		}
		else
		{
			_whiff = -1;
		};
		
		if(_whiff = 0)
		{
			_finalDMG = 0;
			
			obj_control.var_calledNope = _target;
			instance_create_depth(_target.x, _target.y,_target.depth+1, obj_nope);
		}
		else
		{
			_finalDMG = floor(_finalDMG /2);
		};
	};
	
	if(_target.arr_status[status.disengaged])
	{
		_finalDMG = 0;
		_other.arr_status[status.disengaged] = false;
	};
	return _finalDMG
};

function special(_skill)
{
	if(st_specialRecharge = 0)
	{
		skill(_skill, var_specialPlus);
		st_specialRecharge = mx_specialRecharge;
			
		nextTurn();	
	}
		
	else
	{
		audio_play_sound(snd_error, 10, false);
	};
};

function guard()
{
	global.text = string(var_name) + " is guarding!"
	var_guarding = true;
	image_index = 3;
	
	createAnim(ani_guard);
	if(_other.arr_status[status.frozen])
	{
		hp += maxHp/4;
	};
};

function regen(target, val)
{
	if(_self.var_hpFreeze <= 0) //IF HP IS NOT FROZEN
	{
		if(arr_status[status.bitter] = true)
		{
			target.hp += val/2
		}
	
		else
		{
			target.hp += val;
		};	
	};
};

function statusEffects()
{
	var _percent;
			
	if(arr_status[status.burnt])
	{
		_percent = (maxHp/100) *10;
		hp -= _percent;
	};
			
	if(arr_status[status.shroomed])
	{
		_percent = (maxHp/100) *5;
		_percent = clamp(_percent, 10, st_damage);
		hp -= _percent;
		_other.hp += _percent;
	};
			
	if(arr_status[status.regeneration])
	{
		_percent = (maxHp/100) *15;
		hp += _percent;
	};
					
	if(frozenCountdown <= 0)
	{
		arr_status[status.frozen] = false
	};
			
	regenCountdown --;
	if(regenCountdown <= 0)
	{
		arr_status[status.regeneration] = false
	};
	
	electrocuted --;
	if(electrocuted <= 0)
	{
		arr_status[status.electrocuted] = false
	};
	
	connectedCountdown--;
	if(connectedCountdown <= 0)
	{
		arr_status[status.connected] = false
	};
	tipsyRoll = choose(1, 2, 3, 4);
	
	if(var_hpFreeze > 0)
	{
		var_hpFreeze --
	};
}

function createAnim(sprite)
{
	var anim = instance_create_depth(ROOMWIDTH/2, room_height/2, depth, obj_midAnim);
	anim.sprite_index = sprite;
};
