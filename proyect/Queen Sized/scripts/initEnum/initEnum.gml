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
		recharge,
		anim
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
		jewel_toss,
		crown,
		rubbish,
		bug,
		cheese_old,
		can,
		grilled_cheese,
		plunger,
		milk,
		cigar,
		sneeze,
		
		rat_pocket,
		rat_bomb,
		rat_spooky,
		rat_bitter,
		rat_mossy,
		rat_burnt,
		rat_nurse,
		rat_gym,
		rat_angry,
		rat_jester,
		rat_bad,
		rat_kamikaze,
		rat_miniKing,
		rat_horn,
		rat_ratify,
		cheese_expensive,
		cheese_liquid,
		rat_ratuary,
		
		rat_rabid,
		rat_iced,
		rat_electro,
		rat_e,
		rat_cookie,
		
		lemon_toss,
		pretend,
		honk2,
		juggle,
		lemonade_seedy,
		lemonade_plus,
		lemonade_rotten,
		lemonade_bitter,
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
		freeze,
		lifehack,
		
		lifeswap,
		
		melk,
		muah,
		frown,
		
		book_red,
		book_blue,
		book_green,
		book_white,
		grape_soda,
		
		change,
		rubber_glove,
		
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
		ruins,
		ratlantis,
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
		rock_blunt
		
		/*omar, //ashtray
	
		electrolotl, //cloud
		michael, //breach
	
		tito, //strip
		bondiola,*/
		};
};