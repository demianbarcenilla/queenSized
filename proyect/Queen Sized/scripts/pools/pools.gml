function pools(){
	
	//1st route
	arr_poolTable[stage.city, 0] = normal.nap;
	arr_poolTable[stage.city, 1] = normal.distract;
	arr_poolTable[stage.city, 2] = normal.cheese;
	arr_poolTable[stage.city, 3] = normal.resist;
	arr_poolTable[stage.city, 4] = normal.punch;
	
	arr_poolTable[stage.tunnel, 0] = normal.napLong;
	arr_poolTable[stage.tunnel, 1] = normal.armor;
	arr_poolTable[stage.tunnel, 2] = normal.confuse;
	arr_poolTable[stage.tunnel, 3] = normal.honk;
	arr_poolTable[stage.tunnel, 4] = normal.milk;
			
	arr_poolTable[stage.lemon_stand, 0] = normal.bitter;
	arr_poolTable[stage.lemon_stand, 1] = normal.rot;
	arr_poolTable[stage.lemon_stand, 2] = normal.lemonade;
	arr_poolTable[stage.lemon_stand, 3] = normal.bite;
	arr_poolTable[stage.lemon_stand, 4] = normal.armor;
	
	arr_poolTable[stage.shortcut, 0] = normal.drain;
	arr_poolTable[stage.shortcut, 1] = normal.punch;
	arr_poolTable[stage.shortcut, 2] = normal.napLong;
	arr_poolTable[stage.shortcut, 3] = normal.confuse;
	arr_poolTable[stage.shortcut, 4] = normal.shroom;
	arr_poolTable[stage.shortcut, 5] = normal.milk;
	
	arr_poolTable[stage.incinerator, 0] = normal.fireball;
	arr_poolTable[stage.incinerator, 1] = normal.nap;
	arr_poolTable[stage.incinerator, 2] = normal.napLong;
	arr_poolTable[stage.incinerator, 4] = normal.rubbish;
	arr_poolTable[stage.incinerator, 5] = normal.milk;
	
	//2nd route
	arr_poolTable[stage.sewer, 0] = normal.disengage;
	arr_poolTable[stage.sewer, 1] = normal.rubbish;
	arr_poolTable[stage.sewer, 2] = normal.napLong;
	arr_poolTable[stage.sewer, 3] = normal.armor;
	arr_poolTable[stage.sewer, 4] = normal.confuse;
	
	arr_poolTable[stage.ruins, 0] = normal.scare;
	arr_poolTable[stage.ruins, 1] = normal.punch;
	arr_poolTable[stage.ruins, 2] = normal.milk;
	arr_poolTable[stage.ruins, 3] = normal.armor; //replace these with something better
	arr_poolTable[stage.ruins, 4] = normal.confuse;
	
	arr_poolTable[stage.ratlantis, 0] = normal.rot;
	arr_poolTable[stage.ratlantis, 1] = normal.nap;
	arr_poolTable[stage.ratlantis, 2] = normal.napLong;
	arr_poolTable[stage.ratlantis, 3] = normal.milk;
	arr_poolTable[stage.ratlantis, 4] = normal.rubbish;
	
	arr_poolTable[stage.fridge, 0] = normal.freeze;
	arr_poolTable[stage.fridge, 1] = normal.nap;
	arr_poolTable[stage.fridge, 2] = normal.napLong;
	arr_poolTable[stage.fridge, 3] = normal.sneeze;
	arr_poolTable[stage.fridge, 4] = normal.snowball;
	
	/*arr_poolTable[stage.cloud, 0] = normal.connect;
	arr_poolTable[stage.cloud, 1] = normal.electric;
	arr_poolTable[stage.cloud, 2] = normal.napLong;
	arr_poolTable[stage.cloud, 3] = normal.nap;
	arr_poolTable[stage.cloud, 4] = normal.confuse;
	
	arr_poolTable[stage.breach, 0] = normal.phish;
	arr_poolTable[stage.breach, 1] = normal.electric;
	arr_poolTable[stage.breach, 2] = normal.napLong;
	arr_poolTable[stage.breach, 3] = normal.resist;
	arr_poolTable[stage.breach, 4] = normal.confuse;*/
	
	var _ratLeak, _cookieLeak;
	ini_open("unlocks.ini");
		_ratLeak = ini_read_real("unlocks", "8", false);
		_cookieLeak = ini_read_real("unlocks", "100", false);
	ini_close();
	
	if(_ratLeak)
	{
		arr_poolTable[stage.city, array_length(arr_poolTable[stage.city])] = normal.rat_jester;
		arr_poolTable[stage.city, array_length(arr_poolTable[stage.city])] = normal.rat_pocket;
		
		arr_poolTable[stage.tunnel, array_length(arr_poolTable[stage.tunnel])] = normal.rat_bomb;
		arr_poolTable[stage.tunnel, array_length(arr_poolTable[stage.tunnel])] = normal.rat_gym;
		arr_poolTable[stage.tunnel, array_length(arr_poolTable[stage.tunnel])] = normal.rat_horn;
		
		arr_poolTable[stage.lemon_stand, array_length(arr_poolTable[stage.lemon_stand])] = normal.rat_bitter;
		arr_poolTable[stage.lemon_stand, array_length(arr_poolTable[stage.lemon_stand])] = normal.rat_nurse;
		arr_poolTable[stage.lemon_stand, array_length(arr_poolTable[stage.lemon_stand])] = normal.rat_rabid;
		
		arr_poolTable[stage.shortcut, array_length(arr_poolTable[stage.shortcut])] = normal.rat_mossy;
		arr_poolTable[stage.shortcut, array_length(arr_poolTable[stage.shortcut])] = normal.steal;
		
		arr_poolTable[stage.incinerator, array_length(arr_poolTable[stage.incinerator])] = normal.rat_burnt;
		arr_poolTable[stage.incinerator, array_length(arr_poolTable[stage.incinerator])] = normal.rat_kamikaze;
		
		arr_poolTable[stage.sewer, array_length(arr_poolTable[stage.sewer])] = normal.rat_bad;
		arr_poolTable[stage.sewer, array_length(arr_poolTable[stage.sewer])] = normal.rat_mossy;
		
		arr_poolTable[stage.ruins, array_length(arr_poolTable[stage.ruins])] = normal.rat_spooky;
		arr_poolTable[stage.ruins, array_length(arr_poolTable[stage.ruins])] = normal.cheese_liquid;
		
		arr_poolTable[stage.ratlantis, array_length(arr_poolTable[stage.ratlantis])] = normal.rat_nurse;
		arr_poolTable[stage.ratlantis, array_length(arr_poolTable[stage.ratlantis])] = normal.rat_ratuary;
		arr_poolTable[stage.ratlantis, array_length(arr_poolTable[stage.ratlantis])] = normal.steal;
		arr_poolTable[stage.ratlantis, array_length(arr_poolTable[stage.ratlantis])] = normal.rat_miniKing;
		
		arr_poolTable[stage.fridge, array_length(arr_poolTable[stage.fridge])] = normal.rat_iced;
		
		/*arr_poolTable[stage.ashtray, array_length(arr_poolTable[stage.ashtray])] = normal.rat_ratify;
		arr_poolTable[stage.ashtray, array_length(arr_poolTable[stage.ashtray])] = normal.rat_miniKing;*/
		
		/*arr_poolTable[stage.cloud, array_length(arr_poolTable[stage.cloud])] = normal.rat_electro;
		arr_poolTable[stage.breach, array_length(arr_poolTable[stage.breach])] = normal.rat_e;
		arr_poolTable[stage.breach, array_length(arr_poolTable[stage.breach])] = normal.rat_gym;*/
		
		
	};
	
	if(_cookieLeak)
	{
		arr_poolTable[stage.city, array_length(arr_poolTable[stage.city])] = normal.cookie;
		arr_poolTable[stage.tunnel, array_length(arr_poolTable[stage.tunnel])] = normal.cookie_dog;
		arr_poolTable[stage.lemon_stand, array_length(arr_poolTable[stage.lemon_stand])] = normal.cookie_bitter;
		arr_poolTable[stage.shortcut, array_length(arr_poolTable[stage.shortcut])] = normal.cookie_mossy;
		arr_poolTable[stage.incinerator, array_length(arr_poolTable[stage.incinerator])] = normal.cookie_burnt;
		
		arr_poolTable[stage.sewer, array_length(arr_poolTable[stage.sewer])] = normal.cookie_thrashy;
		arr_poolTable[stage.ruins, array_length(arr_poolTable[stage.ruins])] = normal.cookie_ghost;
		arr_poolTable[stage.ratlantis, array_length(arr_poolTable[stage.ratlantis])] = normal.cookie_void;
		
		/*arr_poolTable[stage.cloud, array_length(arr_poolTable[stage.cloud])] = normal.cookie_electric;
		arr_poolTable[stage.breach, array_length(arr_poolTable[stage.breach])] = normal.cookie_phishy;*/
		
		arr_poolTable[stage.fridge, array_length(arr_poolTable[stage.fridge])] = normal.cookie_frozen;
	};
};

function poolsRat(){
	
	//1st route
	arr_poolTable[stage.city, 0] = normal.rat_nurse;
	arr_poolTable[stage.city, 1] = normal.rat_jester;
	arr_poolTable[stage.city, 2] = normal.cheese;
	arr_poolTable[stage.city, 3] = normal.rat_gym;
	arr_poolTable[stage.city, 4] = normal.rat_pocket;
	
	arr_poolTable[stage.tunnel, 0] = normal.cheese_expensive;
	arr_poolTable[stage.tunnel, 1] = normal.rat_pocket;
	arr_poolTable[stage.tunnel, 2] = normal.rat_bad;
	arr_poolTable[stage.tunnel, 3] = normal.rat_horn;
	arr_poolTable[stage.tunnel, 4] = normal.rat_bomb;
			
	arr_poolTable[stage.lemon_stand, 0] = normal.rat_bitter;
	arr_poolTable[stage.lemon_stand, 1] = normal.rat_bad;
	arr_poolTable[stage.lemon_stand, 2] = normal.rat_angry;
	arr_poolTable[stage.lemon_stand, 3] = normal.rat_rabid;
	arr_poolTable[stage.lemon_stand, 4] = normal.rat_pocket;
	arr_poolTable[stage.lemon_stand, 5] = normal.lemonade;
	
	arr_poolTable[stage.shortcut, 0] = normal.rat_mossy;
	arr_poolTable[stage.shortcut, 1] = normal.rat_bomb;
	arr_poolTable[stage.shortcut, 2] = normal.cheese_expensive;
	arr_poolTable[stage.shortcut, 3] = normal.rat_jester;
	arr_poolTable[stage.shortcut, 4] = normal.rat_nurse;
	
	arr_poolTable[stage.incinerator, 0] = normal.rat_burnt;
	arr_poolTable[stage.incinerator, 1] = normal.rat_nurse;
	arr_poolTable[stage.incinerator, 2] = normal.cheese_expensive;
	arr_poolTable[stage.incinerator, 3] = normal.rat_miniKing;
	arr_poolTable[stage.incinerator, 4] = normal.rat_ratuary;
	arr_poolTable[stage.incinerator, 5] = normal.rat_rabid;
	
	//2nd route
	arr_poolTable[stage.sewer, 0] = normal.rat_spooky;
	arr_poolTable[stage.sewer, 1] = normal.rubbish;
	arr_poolTable[stage.sewer, 2] = normal.cheese_expensive;
	arr_poolTable[stage.sewer, 3] = normal.rat_bad;
	arr_poolTable[stage.sewer, 4] = normal.rat_jester;
	arr_poolTable[stage.sewer, 5] = normal.rat_rabid;
	
	arr_poolTable[stage.ruins, 0] = normal.rat_nurse;
	arr_poolTable[stage.ruins, 1] = normal.rat_gym;
	arr_poolTable[stage.ruins, 2] = normal.rat_jester;
	arr_poolTable[stage.ruins, 3] = normal.rat_kamikaze; //replace these with something better
	arr_poolTable[stage.ruins, 4] = normal.rat_ratuary;
	
	arr_poolTable[stage.ratlantis, 0] = normal.rubbish;
	arr_poolTable[stage.ratlantis, 1] = normal.rat_miniKing;
	arr_poolTable[stage.ratlantis, 2] = normal.cheese_expensive;
	arr_poolTable[stage.ratlantis, 3] = normal.rat_nurse;
	
	arr_poolTable[stage.fridge, 0] = normal.rat_iced;
	arr_poolTable[stage.fridge, 1] = normal.rat_bitter;
	arr_poolTable[stage.fridge, 2] = normal.cheese_expensive;
	arr_poolTable[stage.fridge, 3] = normal.rat_miniKing;
	arr_poolTable[stage.fridge, 4] = normal.rat_jester;
	
	/*
	arr_poolTable[stage.cloud, 0] = normal.cheese;
	arr_poolTable[stage.cloud, 1] = normal.rat_electro;
	arr_poolTable[stage.cloud, 2] = normal.cheese_expensive;
	arr_poolTable[stage.cloud, 3] = normal.rat_nurse;
	arr_poolTable[stage.cloud, 4] = normal.rat_e;
	
	arr_poolTable[stage.breach, 0] = normal.rat_pocket;
	arr_poolTable[stage.breach, 1] = normal.rat_ratuary;
	arr_poolTable[stage.breach, 2] = normal.cheese_expensive;
	arr_poolTable[stage.breach, 3] = normal.rat_e;
	arr_poolTable[stage.breach, 4] = normal.rat_nurse;
	*/
};