// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
		value,
		func,
		cost,
		uses,
		selfIndex, //image index when doing this move (self)
		otherIndex, //image index when doing this move (other)
		sound,
		text,
		shop, //how much does it cost on the shop
		recharge
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
		lemon_toss,
		fireball,
		dissipate,
		disengage,
		rat_flute,
		lick,
		smile,
		pretend,
		honk2,
		juggle,
		rush,
		jewel_toss,
		lemonade_seedy,
		lemonade_plus,
		lemonade_rotten,
		lemonade_bitter,
		crown,
		swap,
		connect,
		phish,
		download,
		warn,
		electric,
		soul_munch,
		soul_steal,
		soul_block,
		lily_juice,
		burgify,
		rot,
		freeze,
		lifehack,
		rubbish,
		bug,
		cheese_old,
		can,
		lifeswap,
		
		grilled_cheese,
		milk,
		melk,
		muah,
		plunger,
		frown,
		
		book_red,
		book_blue,
		book_green,
		book_white,
		grape_soda,
		cigar,
		change,
		rubber_glove,
		sneeze,
		
		cookie_jar,
		cookie_christmas,
		cookie_valentine,
		cookie_spicy,
		cookie_glass,
		cookie_skeleton,
		cookie,
		cookie_burger,
		cookie_burnt,
		cookie_cheap,
		cookie_dog,
		cookie_electric,
		cookie_frozen,
		cookie_bitter,
		cookie_mossy,
		cookie_phishy,
		cookie_thrashy,
		cookie_void,
		cookie_lucky,
		cookie_easter,
		ghost_cookie,
		
		rat_pocket,
		rat_bomb,
		rat_spooky,
		rat_bitter,
		rat_electro,
		rat_e,
		rat_mossy,
		rat_burnt,
		rat_rabid,
		rat_iced,
		rat_nurse,
		rat_gym,
		rat_angry,
		rat_jester,
		rat_bad,
		rat_kamikaze,
		rat_miniKing,
		rat_cookie,
		rat_horn,
		rat_ratify,
		cheese_expensive,
		cheese_liquid,
		rat_ratuary,
		
		os, //for michael
		glitch //GOTTA BE THE LAST ONE ALLWAYS
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
		circus,
		shaft,
		ashtray,
		cloud,
		breach,
		strip,
		council,
		fridge
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
		plant, //man-eating plant
		bat, //a rotten, living fruit
	
		feudent, //fire piranha
		smokey, //smoke cloud
		guard, // eye-shaped
	
		skelly, //sewer
		plumber,
		toothfrog,
	
		mime, //circus
		clown,
		ghost,
	
		muncher, //shaft
		eraser,
		thief,
	
		virus, //cloud
		phish,
		internaut,
	
		warning, //breach
		outlet,
		bug,
	
		pillow_baby, //council
		pillow_savvy,
		pillow_elder,
		skimo, //fridge
		ice_cube,
		cat,
		
		//BOSSES
		
		rat_king, //city
		
		cerberus, //tunnel
		cerberus2,
		cerberus3,
		
		kid, //lemon
		queen, //incinerator
		mega_bat, //route
		
		slug,//sewer
		clown_car, //circus
		
		clown1, //degrady
		clown2, //depressy
		clown3, //freezy
		clown4, //markety
		clown5, //mimey
		clown6, //smokey
		clown7, //tally
		
		papa_soul, //shaft
		omar, //ashtray
	
		electrolotl, //cloud
		michael, //breach
	
		tito, //strip
		bondiola,
	
		eggplant, //fridge
		head_council, //council
	
		burger,
		merchant,
		
		cookie,
		
		rock_blunt
		};
}