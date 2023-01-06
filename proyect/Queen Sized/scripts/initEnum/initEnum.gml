function initEnum(){
		enum status
		{
			bitter,
			shroomed,
			burnt,
			frozen,
			spooked,
			connected,
			rotten,
			regeneration,
			electrocuted,
			disengaged,
			tipsy
		};

		enum skills
		{
		name,
		desc,
		target,
		func,
		cost,
		uses,
		selfIndex, //image index when doing this move (self)
		otherIndex, //image index when doing this move (other)
		sound,
		text,
		shop, //how much does it cost on the shop
		recharge,
		anim,
		
		descPlus,
		funcPlus,
		costPlus,
		usesPlus,
		};

		enum normal
		{
		nap,
		napLong,
		drain,
		distract,
		confuse,
		resist,
		armor,
		punch,
		bite,
		cheese,
		explode,
		wait,
		heal,
		shoot,
		triangle,
		honk,
		steal,
		bark,
		bitter,
		lemonade,
		shroom,
		scare,
		rot,
		fireball,
		dissipate,
		disengage,
		rat_flute,
		lick,
		smile,
		rush,
		crown,
		rubbish,
		bug,
		cheese_old,
		can,
		grilled_cheese,
		plunger,
		milk,
		sneeze,
		cigar,
		freeze,
		snowball,
		
		connect,
		phish,
		download,
		popup,
		electric,
		os,
		
		rat_pocket,
		rat_bomb,
		rat_spooky,
		rat_bitter,
		rat_mossy,
		rat_burnt,
		rat_rabid,
		rat_nurse,
		rat_gym,
		rat_angry,
		rat_jester,
		rat_bad,
		rat_kamikaze,
		rat_miniKing,
		rat_horn,
		cheese_expensive,
		cheese_liquid,
		rat_ratuary,
		rat_iced,
		
		rat_electro,
		rat_e,
		rat_cookie,
		
		cookie_jar,
		cookie,
		
		cookie_christmas,
		cookie_valentine,
		cookie_easter,
		
		cookie_spicy,
		cookie_glass,
		cookie_skeleton,
		cookie_thrashy,
		cookie_ghost,
		cookie_burnt,
		cookie_cheap,
		cookie_dog,
		cookie_frozen,
		cookie_bitter,
		cookie_mossy,
		
		cookie_void,
		cookie_lucky,
		
		cookie_electric,
		cookie_phishy,
	
		glitch, //GOTTA BE THE LAST ONE ALLWAYS
		
		swap,
		lifehack,
		lifeswap,
		
		grape_soda,
		change,
		rubber_glove,
		};

		enum character
		{
		name,
		sprite,
		damage,
		hp,
		defense,
	
		skill_1,
		skill_2,
		skill_3,
		skill_4,
	
		text_1,
		text_2,
		text_3,
	
		special
		};
		enum stage
		{
		city,
		tunnel,
		lemon_stand,
		shortcut,
		incinerator,
		
		sewer,
		ruins,
		ratlantis,
		
		fridge,
		
		cloud,
		breach
		};
		
		enum enemy
		{
		pillow,
	
		rat, //City
		pidgeon,
		trianglehead,

		dog, //Tunnel
		car,
		skater,
	
		lemon, //Lemonade Stand
		rotten_lemon,
		cursed_lemon,
	
		shroom,
		plant, 
		bat,
	
		feu,
		smokey, //smoke cloud
		guard, // eye-shaped
	
		skelly, //sewer
		plumber,
		toothfrog,
	
		wet_rat, //ruins
		ruined_rat,
		nervous_rat,
	
		fat_rat, //shaft
		wobbly_rat,
		shivery_rat,
		
		skimo, //fridge
		ice_cube,
		cat,
		
		virus, //cloud
		phish,
		internaut,
	
		warning, //breach
		outlet,
		bug,

		//BOSSES
		rat_king, //city
		
		cerberus, //tunnel
		cerberus2,
		cerberus3,
		
		kid, //lemon
		queen, //incinerator
		mega_bat, //route
		
		slug,//sewer
		wheel_cheese, //ruins
		rat_queen, //ratlantis
		
		eggplant, //fridge
		merchant,
		
		omar,
		burger,
		
		tito,
		bondiola,
		
		cookie,
		
		electrolotl, //cloud
		michael, //breach
		
		rock_blunt
		
		/*omar, //ashtray
	
		electrolotl, //cloud
		michael, //breach
	
		tito, //strip
		bondiola,*/
		};
};