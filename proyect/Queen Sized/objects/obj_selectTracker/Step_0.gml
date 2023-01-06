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
else if(obj_playerSelect_jean.selected)
{
	if(obj_playerSelect_jean.unlocked)
	{
		global.text = "JEAN\nDETHRONE THE QUEEN! FOR NO REASON!"
		sprite_index = spr_jeanPlayable;
	}
	else
	{
		global.text = "BEAT ??? TO UNLOCK"
		sprite_index = spr_empty;
	}
	
};
else if(obj_playerSelect_cookie.selected)
{
	if(obj_playerSelect_cookie.unlocked) or (current_month = 12)
	{
		global.text = "THE CRUNCH\n HATE PEOPLE! DESTROY FESTIVITIES!"
		sprite_index = spr_cookie;
	};
	else
	{
		global.text = "BEAT THE 2ND ROUTE AS ??? / ALSO UNLOCKED IN DECEMBER"
		sprite_index = spr_empty;
	};
};
else if(obj_playerSelect_phish.selected)
{
	if(obj_playerSelect_phish.unlocked)
	{
		global.text = "PHISH\nDETHRONE THE QUEEN! STEAL HER RICHES!"
		sprite_index = spr_phish;
	};
	else
	{
		global.text = "PHISH ENEMIES 10 TIMES TO UNLOCK";
		sprite_index = spr_empty;
	};
	
};

/*else if(obj_playerSelect_omar.selected)
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