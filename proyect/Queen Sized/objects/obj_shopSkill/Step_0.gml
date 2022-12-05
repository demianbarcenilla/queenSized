//REROLLING
//check if i already got the skill
for(i=0; i< 4; i++)
{
	if(var_holding = obj_player.st_skills[i])
	{
		reroll = true;
		
		text = "???";
		image_speed = 1;
		alarm[0] = 10;
			
		if(!audio_is_playing(snd_text)){audio_play_sound(snd_text, 0, 0)}
		_poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
		var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID
		break;
	};
};
if(reroll)
{
	reroll = false; //set to false
	text = "???";
	image_speed = 1;
	alarm[0] = 10;
			
	if(!audio_is_playing(snd_text)){audio_play_sound(snd_text, 0, 0)}
	_poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
	var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID
}
while(reroll)
{
	reroll = false; //set to false
	
	for(i=0; i< 4; i++)
	{
		if(var_holding = obj_player.st_skills[i])//if i'm still holding the item i allready have, reroll
		{
			reroll = true;
			
			text = "???";
			image_speed = 1;
			alarm[0] = 10;
			
			if(!audio_is_playing(snd_text)){audio_play_sound(snd_text, 0, 0)}
			_poolPlace = irandom_range(0, array_length(obj_shop.arr_pool)-1); //select a random spot from the pool
			var_holding = obj_shop.arr_pool[_poolPlace]; //convert that spot from the pool into a skill ID
			break;
		};
	};
};

cost = arr_skill[var_holding, skills.shop] + (10 * global.mult);
//HOVER
t = (t + inc) mod 360;
shift = amp * dsin(t);

x = lerp(x, xx, .1);
y = lerp(y, yy + shift, .1);

//IF CLICKED
if(place_meeting(x, y, obj_mouse)) and (!instance_exists(obj_skill1))
{
	if(!checked)
	{
		checked = true;
		global.text = arr_skill[var_holding, skills.name] + "\n"+ text + "[/c]";
		obj_shop.canChangeText ++;
		obj_moneyText.costDisplay = cost;
		obj_moneyText.discount = discount;
	};
	
	if(mouse_check_button_pressed(mb_left)) and (!centered) and (global.canPurchase)
	{
		if(global.money >= cost) or (global.shoplift)
		{
			for(i=0; i < 4; i++)
			{
				if(obj_player.st_skills[i] = -1)
				{
					obj_player.st_skills[i]= var_holding;
					obj_player.st_skillUses[i]= arr_skill[var_holding, skills.uses];
					obj_player.st_skillRecharge[i]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
	
					break;
				};
				
				else
				{
					skillsFull++;
				};
			};
			
			if(skillsFull < 4)
			{
				if(global.shoplift)
				{
					repeat(10){instance_create_depth(x, y, depth-10, obj_confetti)}
					global.shoplift = false;
				}
				else
				{
					global.money -= cost;
					
					repeat(cost)
					{
						instance_create_depth(x, y, depth, obj_money);
					};
				}
				
				obj_shop.canChangeText --;
				audio_play_sound(snd_heal, 0, false);
				instance_destroy();
			}
			else
			{
				global.primaryUI = false;
				
				//Deactivate the arrow that makes you go back to the game
				//Create the instances for the skills so you can choose which ones to replace
				instance_create_depth(40, 240, depth, obj_skill1);
				instance_create_depth(140, 240, depth, obj_skill2);
				instance_create_depth(240, 240, depth, obj_skill3);
				instance_create_depth(340, 240, depth, obj_skill4);
				
				instance_deactivate_object(obj_arrow);
				instance_deactivate_object(obj_shopBubble);
				instance_deactivate_object(obj_shopSkill);
				instance_deactivate_object(obj_shopSwitch);
				instance_deactivate_object(obj_shopReroll);
				instance_deactivate_object(obj_shopLift);
				
				instance_activate_object(id)
				centered = true;
			};
		};
		
		else
		{
			audio_play_sound(snd_error, 0, false);
		};
	};
};
else
{
	if(checked)
	{
		obj_shop.canChangeText --;
		checked = false;
	}
};

if(skillsFull = 4)
{
	global.text = "CHOOSE A SKILL TO REPLACE!";
	
	if(centered)
	{
		xx = ROOMWIDTH/2;
		yy = room_height/3;
	};
	if(!isLerping)
	{
		if(obj_skill1.selected = true) 
		{
			guiSelected = 0;
		};
		else if(obj_skill2.selected = true)
		{
			guiSelected = 1;
		};
		else if(obj_skill3.selected = true)
		{
			guiSelected = 2;
		};
		else if(obj_skill4.selected = true)
		{
			guiSelected = 3;
		};
		else
		{
			guiSelected = -1;
		};
	};
};
else
{
	xx = xstart;
	yy = ystart;
};

if(guiSelected != -1)
{
	centered = false;
	
	if((mouse_check_button_pressed(mb_left)))
	{
		switch(guiSelected)
		{
			case 0:
				xx = obj_skill1.x+sprite_width/2;	yy = room_height;
			break;
		
			case 1:
				xx = obj_skill2.x+sprite_width/2;	yy = room_height;
			break;
		
			case 2:
				xx = obj_skill3.x+sprite_width/2;	yy = room_height;
			break;
		
			case 3:
				xx = obj_skill4.x+sprite_width/2;	yy = room_height;
			break;
		};
		
		isLerping = true;
	};
	
	if(isLerping)
	{
		switch(guiSelected) //If touching one of the UI elements, destroy();
		{
			case 0:
				if(place_meeting(x, y, obj_skill1))
				{
					audio_play_sound(snd_heal, 0, false);
				
					obj_player.st_skills[0] = var_holding;
					obj_player.st_skillUses[0] = arr_skill[var_holding, skills.uses];
					obj_player.st_skillRecharge[0]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
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
					};
					
					else
					{
						global.shoplift = false;
					}
					
					instance_destroy();
				};
			break;
		
			case 1:
				if(place_meeting(x, y, obj_skill2))
				{
					audio_play_sound(snd_heal, 0, false);
				
					obj_player.st_skills[1] = var_holding;
					obj_player.st_skillUses[1] = arr_skill[var_holding, skills.uses];
					obj_player.st_skillRecharge[1]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
					
					obj_shop.alarm[0] = 5;
				
					global.text = global.textPrev;
				
					obj_shop.canChangeText = 0;
					with(obj_shopSkill){reroll = true};
					instance_destroy();
					
					if(!global.shoplift)
					{
						global.money -= cost;
				
						repeat(cost)
						{
							instance_create_depth(x, y, depth, obj_money);
						};
					};
					else
					{
						global.shoplift = false;
					}
				};
			break;
		
			case 2:
				if(place_meeting(x, y, obj_skill3))
				{
					audio_play_sound(snd_heal, 0, false);
				
					obj_player.st_skills[2] = var_holding;
					obj_player.st_skillUses[2] = arr_skill[var_holding, skills.uses];
					obj_player.st_skillRecharge[2]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
					obj_shop.alarm[0] = 5;
				
					global.text = global.textPrev;
				
					obj_shop.canChangeText = 0;
					with(obj_shopSkill){reroll = true};
					instance_destroy();
					
					if(!global.shoplift)
					{
						global.money -= cost;
				
						repeat(cost)
						{
							instance_create_depth(x, y, depth, obj_money);
						};
					};
					else
					{
						global.shoplift = false;
					}
				};
			break;
		
			case 3:
				if(place_meeting(x, y, obj_skill4))
				{
					audio_play_sound(snd_heal, 0, false);
					
					with(obj_shopSkill){reroll = true};
					instance_destroy();
				
					obj_player.st_skills[3] = var_holding;
					obj_player.st_skillUses[3] = arr_skill[var_holding, skills.uses];
					obj_player.st_skillRecharge[3]= arr_skill[var_holding, skills.cost] > 0 ? 0 : -1;
					obj_shop.alarm[0] = 5;
				
					global.text = global.textPrev;
				
					obj_shop.canChangeText = 0;
					instance_destroy();
					
					if(!global.shoplift)
					{
						global.money -= cost;
				
						repeat(cost)
						{
							instance_create_depth(x, y, depth, obj_money);
						};
					};
					else
					{
						global.shoplift = false;
					}
				};
			break;
		};
	};
};

if(!instance_exists(obj_shop))
{	
	instance_destroy();
};