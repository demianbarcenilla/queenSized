function pickleUpdate(){
	//Destroy all pickle instances
	instance_destroy(obj_pickle);
					
	//Remake every pickle including new ones, so they orbit properly
	
	if(pickleAmmount > 0)
	{
		for(i = 0 ; i < pickleAmmount; i++)
		{
			var _pickle = instance_create_depth(x, y-64, depth, obj_pickle)
			_pickle.pickleNumber = i;
		}
	}
}

function pickle_angleUpdate(pickleAmmount)
{
	angle = pickleNumber/pickleAmmount *360;
}

function skillCraft_selectSkill()
{
	var _selected = irandom_range(0, 3)
	
	for(i = 0; i < 50; i++)
	{
		//If skill isn't empty and ISN'T a burger
		var _conditionEmpty = _self.st_skills[_selected] = -1,
			_conditionRange = (_self.st_skills[_selected] > normal.burger_hat) and (_self.st_skills[_selected] < normal.burger_king)
		
		if(_conditionEmpty or (_conditionRange))
		{
			_selected = irandom_range(0, 3) //Reroll Skill if conditions apply
		}
		else
		{
			return _selected;
			break;
		};
	};
	
	return _selected;
}

function skillCraft_setType(_skill){
	//Get the type of the skill to replace
	var _type = _self.arr_skill[_skill, skills.type]
	if(_type = skType.misc)
	{
		_type = irandom_range(skType.heal, skType.sfx)
	}
	
	return _type
} 

function skillCraft_setQuality()
{
	var _quality = 0,
		_pamm = _self.pickleAmmount;
	
	if(_pamm < 5)
	{
		_quality = 0;
	};
	else if(_pamm < 10)
	{
		_quality = 1;
	};
	else if(_pamm < 15)
	{
		_quality = 2;
	};
	else if(_pamm >= 15)
	{
		_quality = 3;
	};
	
	return _quality;
}

function skillCraft()
{
	var _skillSlot = skillCraft_selectSkill()
	
	if(_self.st_skills[_skillSlot] != -1)
	{
		var	_type = skillCraft_setType(_self.st_skills[_skillSlot]), //What does the Skill we're replacing DO?
			_quality = skillCraft_setQuality(),
		
			_burgSkill = arr_burgTable[_type, _quality];
	
		_self.pickleAmmount = 0; //Destroys all pickles
	
		_self.st_skills[_skillSlot] = _burgSkill;
		_self.st_skillUses[_skillSlot] = arr_skill[_burgSkill, skills.uses]
		setSkillRecharge(_skillSlot);
	
		pickleUpdate();
	}
	else
	{
		audio_play_sound(snd_error, 1, false);
	}
		
};

function miscCraft()
{
	for(i=0; i < 4; i++)
	{
		if(_self.st_skills[i] = normal.craft)
		{
			var _choice = irandom_range(normal.burger_hat, normal.burger_king);
			st_skills[i] = _choice
					
			if(_choice != -1){st_skillUses[i] = arr_skill[_choice, skills.uses]} else {st_skillUses[i] = -1};
			setSkillRecharge(i)
			break;
		};
	};	
};