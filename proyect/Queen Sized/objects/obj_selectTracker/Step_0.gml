/// @description Insert description here
// You can write your code in this editor
if(obj_playerSelect_pillow.selected)
{
	if(obj_playerSelect_pillow.unlocked)
	{
		global.text = "PILLOW\nDETHRONE THE QUEEN! SAVE THE MATRESSES!"
		sprite_index = spr_pillow;
	};
	else
	{
		global.text = "THIS IS UNLOCKED BY DEFAULT HOW IS THIS LOCKED!?!?";
		sprite_index = spr_empty;
	}
	
};
else if(obj_playerSelect_ratKing.selected)
{
	if(obj_playerSelect_ratKing.unlocked)
	{
		global.text = "RAT KING\nDETHRONE THE QUEEN! TAKE HER PLACE!"
		sprite_index = spr_ratKing;
	};
	else
	{
		global.text = "GIVE THE RAT FLUTE TO ??? TO UNLOCK";
		sprite_index = spr_empty;
	}
	
};
/*else if(obj_playerSelect_jean.selected)
{
	if(obj_playerSelect_jean.unlocked)
	{
		global.text = "JEAN\nFREEZE THE ENEMY!"
		sprite_index = spr_jean;
	}
	else
	{
		global.text = "BEAT ??? TO UNLOCK"
		sprite_index = spr_empty;
	}
	
};
else if(obj_playerSelect_phish.selected)
{
	if(obj_playerSelect_phish.unlocked)
	{
		global.text = "PHISH\nPROFESSIONAL SCAMMER!"
		sprite_index = spr_phish;
	};
	else
	{
		global.text = "SCAM 10 ENEMIES TO UNLOCK";
		sprite_index = spr_empty;
	};
	
};
else if(obj_playerSelect_lemon.selected)
{
	if(obj_playerSelect_lemon.unlocked)
	{
		global.text = "LEMON\nBITTER BUDDY!"
		sprite_index = spr_lemon;
	};
	else
	{
		global.text = "IDK WHAT THIS DOES OR HOW TO UNLOCK IT"
		sprite_index = spr_empty;
	};
};
else if(obj_playerSelect_omar.selected)
{
	if(obj_playerSelect_omar.unlocked)
	{
		global.text = "OMAR\nA BURGER COLLECTOR!"
		sprite_index = spr_omar;
	};
	else
	{
		global.text = "\nBEAT THE ASHTRAY TO UNLOCK"
		sprite_index = spr_empty;
	};
	
};
else if(obj_playerSelect_merchant.selected)
{
	if(obj_playerSelect_merchant.unlocked)
	{
		global.text = "MERCHANT\nBULK BUYER!"
		sprite_index = spr_merchant;
	};
	else
	{
		global.text = "??? TO UNLOCK"
		sprite_index = spr_empty;
	};
	
};
else if(obj_playerSelect_tb.selected)
{
	if(obj_playerSelect_tb.unlocked)
	{
		global.text = "TITO/BONDIOLA\nSALE UN TRUQUITO?"
		sprite_index = spr_both;
	};
	else
	{
		global.text = "BEAT ??? TO UNLOCK"
		sprite_index = spr_empty;
	}
};*/
else
{
	global.text = "SELECT A CHARACTER!";
	sprite_index = spr_empty;
};