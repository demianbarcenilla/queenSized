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
		
		weight, //The higher it is, the rarest the item is. 0 is normal, 4 is SUPER rare
		type //What does this skill do? Heal? Damage?
		};

		enum normal
		{
		nap, //Base Skills
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
		
		sneeze, //Fridge Skills
		cigar,
		freeze,
		snowball,
		
		connect, //Elec. Skills
		phish,
		download,
		popup,
		electric,
		os,
		
		rat_pocket, //Rat Skills
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
		
		cookie_jar, //Cookie Skills
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
		
		stance, //Tier 4 Skills
		weaken,
		hp_freeze,
		
		cookie_box, //Inventory Replace Skills
		phishing_rod,
		
		melk, //Melk
		craft, //Omar's SPSK
		
		burger_hat, //Burger Skills
		burger_cheese,
		burger_blood,
		burger_dr,
		
		burger_wide,
		burger_exe,
		burger_maw,
		burger_bomb,
		
		burger_stone,
		burger_knight,
		burger_kreatin,
		burger_pixie,
		
		burger_kiss,
		burger_core,
		burger_rag,
		burger_bit,
		
		burger_void,
		burger_incognito,
		burger_jester,
		burger_king,
		
		decree,
		glitch, //GOTTA BE THE LAST ONE SO IT CAN USE ANY SKILL
		
		lifehack,
		lifeswap,
		swap
		
		};
		
		enum skType
		{
			heal,
			dmg,
			def,
			debuff,
			sfx,
			misc,
		}
		
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