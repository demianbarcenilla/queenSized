function enemylist(){
	
	var _enemyName = enemy.pillow;
	
	//Pillow
	arr_enemy[_enemyName, character.name] = "Pillow";
	arr_enemy[_enemyName, character.sprite] = spr_pillow;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 0;

	arr_enemy[_enemyName, character.skill_1] = normal.heal;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "PILLOW FEELS LIKE SAVING THE MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "PILLOW ISN'T PILLOW ACTUALLY";
	arr_enemy[_enemyName, character.text_3] = "PILLOW'S KINDA OFF...";
	
	arr_enemy[_enemyName, character.special] = normal.heal;
	
	//City
	_enemyName = enemy.rat
	arr_enemy[_enemyName, character.name] = "Rat";
	arr_enemy[_enemyName, character.sprite] = spr_rat;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.cheese, -1);
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "RAT FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "RAT LOVES CHEESE!";
	arr_enemy[_enemyName, character.text_3] = "RAT RAT RAT RAT RAT RAT RAT RAT RAT RAT RAT RA...";
	
	arr_enemy[_enemyName, character.special] = normal.cheese;
	
	_enemyName = enemy.pidgeon
	
	arr_enemy[_enemyName, character.name] = " Pigeon";
	arr_enemy[_enemyName, character.sprite] = spr_pigeon;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = choose(50, 60);
	arr_enemy[_enemyName, character.defense] = 2;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.shoot, -1);
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "PIGEON FEELS LIKE SHOOTING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "DON'T MESS WITH PIGEONS!";
	arr_enemy[_enemyName, character.text_3] = "PIGEON HAD A TOUGH LIFE!";
	
	arr_enemy[_enemyName, character.special] = normal.shoot;
	
	_enemyName = enemy.trianglehead
	
	arr_enemy[_enemyName, character.name] = "Trianglehead";
	arr_enemy[_enemyName, character.sprite] = spr_triangle;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.triangle, -1);
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "TRIANGLEHEAD FEELS LIKE USING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "TRIANGLEHEAD HASN'T SLEPT IN A LONG TIME!";
	arr_enemy[_enemyName, character.text_3] = "TRIANGLEHEAD WANTS YOU TO SHUT UP!";
	
	arr_enemy[_enemyName, character.special] = normal.triangle;
	
	//Tunnel
	_enemyName = enemy.dog
	
	arr_enemy[_enemyName, character.name] = "Dogcket";
	arr_enemy[_enemyName, character.sprite] = spr_dog;
	arr_enemy[_enemyName,character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.explode, -1);
	arr_enemy[_enemyName, character.skill_2] = choose(normal.bark, -1);
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "DOGCKET FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "DOGCKET WIGGLES ITS.. TAIL?"
	arr_enemy[_enemyName, character.text_3] = "DOGCKET IS ANGRY!";
	
	arr_enemy[_enemyName, character.special] = normal.explode;
	
	_enemyName = enemy.car
	
	arr_enemy[_enemyName, character.name] = "Mad Car";
	arr_enemy[_enemyName, character.sprite] = spr_driver;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.honk, -1);
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "MAD CAR FEELS LIKE RUNNING OVER YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "MAD CAR HONKS ANGRILY"
	arr_enemy[_enemyName, character.text_3] = "MAD CAR HONKS HAPPILY";
	
	arr_enemy[_enemyName, character.special] = normal.honk;
	
	_enemyName = enemy.skater
	arr_enemy[_enemyName, character.name] = "Skater";
	arr_enemy[_enemyName, character.sprite] = spr_skater;
	arr_enemy[_enemyName, character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = normal.rush;
	arr_enemy[_enemyName, character.skill_2] = normal.confuse;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SKATER FEELS LIKE STEALING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "SKATER IS RESTLESS!"
	arr_enemy[_enemyName, character.text_3] = "SKATER IS IN A SUGAR RUSH!";
	
	arr_enemy[_enemyName, character.special] = normal.rush;
	
	//Lemonade Stand
	
	_enemyName = enemy.lemon
	arr_enemy[_enemyName, character.name] = "Lemon";
	arr_enemy[_enemyName, character.sprite] = spr_lemon;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.nap, -1);
	arr_enemy[_enemyName, character.skill_2] = normal.bitter;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "LEMON FEELS LIKE JUICING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "LEMON FEELS BITTER!"
	arr_enemy[_enemyName, character.text_3] = "SMELLS LIKE LEMONADE!";
	
	arr_enemy[_enemyName, character.special] = normal.bitter;
	
	_enemyName = enemy.rotten_lemon
	
	arr_enemy[_enemyName, character.name] = "Rotten Lemon";
	arr_enemy[_enemyName, character.sprite] = spr_lemonRot;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 60;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bitter;
	arr_enemy[_enemyName, character.skill_2] = choose(normal.nap, -1);
	arr_enemy[_enemyName, character.skill_3] = normal.rot;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "ROTTEN LEMON IS FEELING FRESH!";
	arr_enemy[_enemyName, character.text_2] = "ROTTEN LEMON HAS NO PURPOSE!"
	arr_enemy[_enemyName, character.text_3] = "SMELLS LIKE MOSS AND CYTRICS...";
	
	arr_enemy[_enemyName, character.special] = normal.rot;
	
	_enemyName = enemy.cursed_lemon
	
	arr_enemy[_enemyName, character.name] = "Cursed Lemon";
	arr_enemy[_enemyName, character.sprite] = spr_lemonCursed;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bitter;
	arr_enemy[_enemyName, character.skill_2] = choose(-1, normal.nap);
	arr_enemy[_enemyName, character.skill_3] = normal.scare;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "CURSED LEMON FEELS LIKE ...?";
	arr_enemy[_enemyName, character.text_2] = "CURSED LEMON IS"
	arr_enemy[_enemyName, character.text_3] = "SMELLS LIKE D:";
	
	arr_enemy[_enemyName, character.special] = normal.scare;
	
	//Shortcut
	_enemyName = enemy.shroom
	arr_enemy[_enemyName, character.name] = "Shroom";
	arr_enemy[_enemyName, character.sprite] = spr_shroom;
	arr_enemy[_enemyName, character.damage] = 35;
	arr_enemy[_enemyName, character.hp] = 95;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.shroom;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SHROOM FEELS LIKE TOSSING SPORES TO YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "FEELING SHROOMY";
	arr_enemy[_enemyName, character.text_3] = "SHROOM DANCES!";
	
	arr_enemy[_enemyName, character.special] = normal.shroom;
	
	_enemyName = enemy.plant
	
	arr_enemy[_enemyName, character.name] = "Plant";
	arr_enemy[_enemyName, character.sprite] = spr_plant;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 115;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bite;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "PLANT FEELS LIKE BITING SOMETHING!";
	arr_enemy[_enemyName, character.text_2] = "PLANT NEEDS MORE SUNLIGHT!";
	arr_enemy[_enemyName, character.text_3] = "PLANT WANTS BETTER SOIL";
	
	arr_enemy[_enemyName, character.special] = normal.bite;
	
	_enemyName = enemy.bat
	arr_enemy[_enemyName, character.name] = "BAT";
	arr_enemy[_enemyName, character.sprite] = spr_bat;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 80;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = choose(normal.drain, -1);
	arr_enemy[_enemyName, character.skill_2] = choose(normal.scare, -1);
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "BAT FEELS LIKE SUCKING ON YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "BAT IS BEING RUDE!";
	arr_enemy[_enemyName, character.text_3] = "SMELLS LIKE TRANSYLVANIA!";
	
	arr_enemy[_enemyName, character.special] = normal.drain;
	
	_enemyName = enemy.feu
	//Incinerator
	arr_enemy[_enemyName, character.name] = "FEU";
	arr_enemy[_enemyName, character.sprite] = spr_feudent;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 60;
	arr_enemy[_enemyName, character.defense] = 20;
	
	arr_enemy[_enemyName, character.skill_1] = normal.fireball;
	arr_enemy[_enemyName, character.skill_2] = choose(normal.confuse, normal.armor);
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "FEU FEELS LIKE BURNING YOUR MATTRESS! (NOT THE WAY YOU WANT TO)";
	arr_enemy[_enemyName, character.text_2] = "FEU IS DETERMINED!";
	arr_enemy[_enemyName, character.text_3] = "THE FIRE ALARM ACTIVATES!";
	
	arr_enemy[_enemyName, character.special] = normal.fireball;
	
	_enemyName = enemy.smokey
	
	arr_enemy[_enemyName, character.name] = "SMOKE";
	arr_enemy[_enemyName, character.sprite] = spr_smokey;
	arr_enemy[_enemyName, character.damage] = 35;
	arr_enemy[_enemyName, character.hp] = choose(75, 100);
	arr_enemy[_enemyName, character.defense] = 15;
	
	arr_enemy[_enemyName, character.skill_1] = normal.dissipate;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SMOKE FEELS LIKE GRILLING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "SMOKE IS ETHEREAL";
	arr_enemy[_enemyName, character.text_3] = "THE SMOKE ALARM ACTIVATES!";
	
	arr_enemy[_enemyName, character.special] = normal.dissipate;
	
	_enemyName = enemy.guard
	
	arr_enemy[_enemyName, character.name] = "Guard";
	arr_enemy[_enemyName, character.sprite] = spr_guard;
	arr_enemy[_enemyName, character.damage] = 35;
	arr_enemy[_enemyName, character.hp] = choose(75, 100);
	arr_enemy[_enemyName, character.defense] = 15;
	
	arr_enemy[_enemyName, character.skill_1] = normal.nap;
	arr_enemy[_enemyName, character.skill_2] = normal.armor;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "GUARD FEELS LIKE DESTROYING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "INCINERATION NATION";
	arr_enemy[_enemyName, character.text_3] = "THE GUARD ALARM ACTIVATES!";
	
	arr_enemy[_enemyName, character.special] = normal.armor;
	
	//SEWER
	_enemyName = enemy.skelly
	
	arr_enemy[_enemyName, character.name] = "Skeleton";
	arr_enemy[_enemyName, character.sprite] = spr_skelly;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.disengage;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SKELETON WILL GRAB YOUR BONES WHETHER YOU HAVE THEM OR NOT";
	arr_enemy[_enemyName, character.text_2] = "STICKS AND STONES MAY, INDEED, BREAK YOUR BONES";
	arr_enemy[_enemyName, character.text_3] = "SKELETON MISSES HAVING LUNGS";
	
	arr_enemy[_enemyName, character.special] = normal.disengage;
	
	_enemyName = enemy.toothfrog
	arr_enemy[_enemyName, character.name] = "TOOTHFROG";
	arr_enemy[_enemyName, character.sprite] = spr_toothFrog;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 40;
	arr_enemy[_enemyName, character.defense] = 2;
	
	arr_enemy[_enemyName, character.skill_1] = normal.smile;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "TOOTHFROG FEELS LIKE SHOWING YOU HIS SMILE!";
	arr_enemy[_enemyName, character.text_2] = "TOOTHFROG IS PROUD OF HIS SHINY TEETH";
	arr_enemy[_enemyName, character.text_3] = "BRUSH YOUR TEETH TILL YOUR GUMS BLEED OF HAPPINESS";
	
	arr_enemy[_enemyName, character.special] = normal.smile;
	
	_enemyName = enemy.plumber
	
	arr_enemy[_enemyName, character.name] = "PLUMBERDILE";
	arr_enemy[_enemyName, character.sprite] = spr_plumber;
	arr_enemy[_enemyName, character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 5;

	arr_enemy[_enemyName, character.skill_1] = normal.plunger;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "PLUMBERDILE FEELS LIKE MANTAINING THE SEWER SYSTEM CLEAN AND FUNCTIONAL!";
	arr_enemy[_enemyName, character.text_2] = "PLUMBERDILE IS VERY PASSIONATE ABOUT PLUMBING";
	arr_enemy[_enemyName, character.text_3] = "PLUMB!!";
	
	arr_enemy[_enemyName, character.special] = normal.plunger;
	
	//RUINS
	
	_enemyName = enemy.wet_rat;
	
	arr_enemy[_enemyName, character.name] = "WET RAT";
	arr_enemy[_enemyName, character.sprite] = spr_wetRat;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = normal.cheese;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "WET RAT BRANG AN UMBRELLA INSIDE!";
	arr_enemy[_enemyName, character.text_2] = "WET RAT'S SOCKS ARE DRIPPING";
	arr_enemy[_enemyName, character.text_3] = "WET RAT IS INSANE";
	
	arr_enemy[_enemyName, character.special] = normal.cheese;
	
	_enemyName = enemy.ruined_rat
	
	arr_enemy[_enemyName, character.name] = "TROUBLED RAT";
	arr_enemy[_enemyName, character.sprite] = spr_ruinedRat;
	arr_enemy[_enemyName, character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 60;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.cheese_liquid;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "TROUBLED RAT OVERDOSES ON GORGONZOLA!";
	arr_enemy[_enemyName, character.text_2] = "TROUBLED RAT DROWNS HIS PAIN IN FONDUE!";
	arr_enemy[_enemyName, character.text_3] = "It's a REAL bliss, GETTING drunk on SWISS cheese";
	
	arr_enemy[_enemyName, character.special] = normal.cheese_liquid;
	
	_enemyName = enemy.nervous_rat
	
	arr_enemy[_enemyName, character.name] = "NERVOUS RAT";
	arr_enemy[_enemyName, character.sprite] = spr_nervousRat;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 2;

	arr_enemy[_enemyName, character.skill_1] = normal.cigar;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "NERVOUS RAT FEELS... WELL... NERVOUS!";
	arr_enemy[_enemyName, character.text_2] = "NERVOUS RAT LOVES A GOOD SMOKE";
	arr_enemy[_enemyName, character.text_3] = "NERVOUS RAT LIGHTS UP A CIGAR!";
	
	arr_enemy[_enemyName, character.special] = normal.cigar;
	
	//SHAFT
	_enemyName = enemy.fat_rat;
	
	arr_enemy[_enemyName, character.name] = "FAT RAT";
	arr_enemy[_enemyName, character.sprite] = spr_fatRat;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 80;
	arr_enemy[_enemyName, character.defense] = 15;
	
	arr_enemy[_enemyName, character.skill_1] = normal.cheese_expensive;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "FAT RAT FEELS LIKE CHEWING ON YOUR MATRESS!!";
	arr_enemy[_enemyName, character.text_2] = "FAT RAT LAUGHS IN RAT LANGUAGE";
	arr_enemy[_enemyName, character.text_3] = "FAT RAT LOVES TO FIGHT WITH OUTSIDERS!";
	
	arr_enemy[_enemyName, character.special] = normal.cheese_expensive;
	
	_enemyName = enemy.wobbly_rat;
	
	arr_enemy[_enemyName, character.name] = "Wobbly Rat";
	arr_enemy[_enemyName, character.sprite] = spr_wobblyRat;
	arr_enemy[_enemyName, character.damage] = 35;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.cheese;
	arr_enemy[_enemyName, character.skill_2] = normal.resist;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "WOBBLY RAT FEELS LIKE WOBBLING ARROUND";
	arr_enemy[_enemyName, character.text_2] = "WOBBLE WOBBLE";
	arr_enemy[_enemyName, character.text_3] = "WOBBLY RAT EATS A PIECE OF CLOUD!";
	
	arr_enemy[_enemyName, character.special] = normal.cheese;
	
	_enemyName = enemy.shivery_rat
	
	arr_enemy[_enemyName, character.name] = "SHIVERY RAT";
	arr_enemy[_enemyName, character.sprite] = spr_shiveryRat;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 80;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = normal.sneeze;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SHIVERY RAT FEELS COLD!";
	arr_enemy[_enemyName, character.text_2] = "SHIVERY RAT ASKS FOR A TISSUE!";
	arr_enemy[_enemyName, character.text_3] = "SHIVERY RAT WANTS TO SNEEZE!";
	
	arr_enemy[_enemyName,character.special] = normal.sneeze;
	
	//BOSSES
	_enemyName = enemy.rat_king;
	
	arr_enemy[_enemyName, character.name] = "Rat King";
	arr_enemy[_enemyName, character.sprite] = spr_ratKing;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.steal;
	arr_enemy[_enemyName, character.skill_2] = normal.cheese;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "RAT KING FEELS LIKE STEALING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "RAT KING IS THE RAT WHO MAKES ALL OF THE RULES!";
	arr_enemy[_enemyName, character.text_3] = "KING KING KING KING KING KING KING KING KING KI...";
	
	arr_enemy[_enemyName, character.special] = normal.steal;
	
	//Cerberus 
	_enemyName = enemy.cerberus
	
	arr_enemy[_enemyName, character.name] = "Cerberus";
	arr_enemy[_enemyName, character.sprite] = spr_cerberus;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bark;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "CERBERUS FEELS LIKE OBLITERATING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "CERBERUS FEELS STRONG!";
	arr_enemy[_enemyName, character.text_3] = "CERBERUS IS A BAD BOY!";
	
	arr_enemy[_enemyName, character.special] = normal.bark;
	
	_enemyName = enemy.cerberus2
	//Cerberus 2
	arr_enemy[_enemyName, character.name] = "Cerberus";
	arr_enemy[_enemyName, character.sprite] = spr_cerberus2;
	arr_enemy[_enemyName, character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 75;
	arr_enemy[_enemyName, character.defense] = 10;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bark;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "CERBERUS FEELS LIKE BREAKING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "CERBERUS FEELS WEAKER!";
	arr_enemy[_enemyName, character.text_3] = "CERBERUS IS STILL A BAD BOY!";
	
	arr_enemy[_enemyName, character.special] = normal.bark;
	

	//Cerberus
	
	_enemyName = enemy.cerberus3
	
	arr_enemy[_enemyName, character.name] = "Cerberus";
	arr_enemy[_enemyName, character.sprite] = spr_cerberus3;
	arr_enemy[_enemyName, character.damage] = 15;
	arr_enemy[_enemyName, character.hp] = 50;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.explode;
	arr_enemy[_enemyName, character.skill_2] = normal.bark;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "CERBERUS FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "CERBERUS FEELS WEAK!";
	arr_enemy[_enemyName, character.text_3] = "CERBERUS IS A VERY BAD BOY!";
	
	arr_enemy[_enemyName, character.special] = normal.bark;
	
	//Kid
	_enemyName = enemy.kid
	
	arr_enemy[_enemyName, character.name] = "Lemonade Kid";
	arr_enemy[_enemyName, character.sprite] = spr_kid;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 150;
	arr_enemy[_enemyName, character.defense] = 5;
	
	arr_enemy[_enemyName, character.skill_1] = normal.bitter;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "LEMONADE KID FEELS LIKE SPILLING LEMONADE ON YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "LEMONADE KID ASKS FOR 25 CENTS";
	arr_enemy[_enemyName, character.text_3] = "LEMONADE KID IS BEING BITTER!";
	
	arr_enemy[_enemyName, character.special] = normal.bitter;
	
	//Mega Bat
	_enemyName = enemy.mega_bat
	
	arr_enemy[_enemyName, character.name] = "Mega Bat";
	arr_enemy[_enemyName, character.sprite] = spr_megabat;
	arr_enemy[_enemyName, character.damage] = 35;
	arr_enemy[_enemyName, character.hp] = 100;
	arr_enemy[_enemyName, character.defense] = 15;
	
	arr_enemy[_enemyName, character.skill_1] = normal.lick;
	arr_enemy[_enemyName, character.skill_2] = -1;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "MEGA BAT FEELS LIKE DRAINING YOUR MATTRESS!";
	arr_enemy[_enemyName, character.text_2] = "MEGA BAT SMELLS LIKE A BLOOD BANK!";
	arr_enemy[_enemyName, character.text_3] = "LICK LICK LICK LICK LICK LICK LICK LICK LICK LICK LICK...";
	
	arr_enemy[_enemyName, character.special] = normal.drain;
	
	//Queen
	_enemyName = enemy.queen
	
	if(global.queenType = 1)
	{
		arr_enemy[_enemyName, character.name] = "Queen";
		arr_enemy[_enemyName, character.sprite] = spr_queen;
		arr_enemy[_enemyName, character.damage] = 45;
		arr_enemy[_enemyName, character.hp] = 250;
		arr_enemy[_enemyName, character.defense] = 15;
	
		arr_enemy[_enemyName, character.skill_1] = normal.crown;
		arr_enemy[_enemyName, character.skill_2] = normal.crown;
		arr_enemy[_enemyName, character.skill_3] = normal.fireball;
		arr_enemy[_enemyName, character.skill_4] = -1;
	
		arr_enemy[_enemyName, character.text_1] = "QUEEN FEELS ENHANCED!";
		arr_enemy[_enemyName, character.text_2] = "ALL HAIL THE QUEEN";
		arr_enemy[_enemyName, character.text_3] = "YOU'RE BLINDED BY THE ROYALTY (AND THE FIRE)";
	
		arr_enemy[_enemyName, character.special] = normal.crown;
	};
	
	else
	{
		arr_enemy[_enemyName, character.name] = "Queen";
		arr_enemy[_enemyName, character.sprite] = spr_queen;
		arr_enemy[_enemyName, character.damage] = 40;
		arr_enemy[_enemyName, character.hp] = 200;
		arr_enemy[_enemyName, character.defense] = 15;
	
		arr_enemy[_enemyName, character.skill_1] = normal.crown;
		arr_enemy[_enemyName, character.skill_2] = normal.armor;
		arr_enemy[_enemyName, character.skill_3] = normal.napLong;
		arr_enemy[_enemyName, character.skill_4] = -1;
	
		arr_enemy[_enemyName, character.text_1] = "QUEEN FEELS LIKE STOPPING YOU!";
		arr_enemy[_enemyName, character.text_2] = "ALL HAIL THE QUEEN";
		arr_enemy[_enemyName, character.text_3] = "YOU'RE BLINDED BY THE ROYALTY";
	
		arr_enemy[_enemyName, character.special] = normal.crown;
	};
	
	//ALT ROUTE
	_enemyName = enemy.slug
	
	arr_enemy[_enemyName, character.name] = "sewer slug";
	arr_enemy[_enemyName, character.sprite] = spr_slug;
	arr_enemy[_enemyName, character.damage] = 20;
	arr_enemy[_enemyName, character.hp] = 125;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = normal.smile;
	arr_enemy[_enemyName, character.skill_2] = normal.rot;
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "SEWER SLUG WANTS TO ABSORB YOU!";
	arr_enemy[_enemyName, character.text_2] = "SEWER SLUG IS MADE OUT OF !//$&!/!";
	arr_enemy[_enemyName, character.text_3] = "SEWER SLUG IS FEELING SLIMY";
	
	arr_enemy[_enemyName, character.special] = normal.smile;
	
	_enemyName = enemy.wheel_cheese
	
	arr_enemy[_enemyName, character.name] = "WHEEL OF CHEESE";
	arr_enemy[_enemyName, character.sprite] = spr_wheelCheese;
	arr_enemy[_enemyName, character.damage] = 25;
	arr_enemy[_enemyName, character.hp] = 150;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = normal.cheese_expensive;
	arr_enemy[_enemyName, character.skill_2] = -1
	arr_enemy[_enemyName, character.skill_3] = -1;
	arr_enemy[_enemyName, character.skill_4] = -1;
	
	arr_enemy[_enemyName, character.text_1] = "WHEEL OF CHEESE IS IN THE WRONG PLACE!";
	arr_enemy[_enemyName, character.text_2] = "DEATH IS AN OPTION FOR THE WHEEL OF CHEESE!";
	arr_enemy[_enemyName, character.text_3] = "WHERE DID YOU THINK ALL THAT CHEESE CAME FROM HUH? ME. THE CHEESE IS ME.";
	
	arr_enemy[_enemyName, character.special] = normal.cheese_expensive;
	
	_enemyName = enemy.rat_queen
	
	arr_enemy[_enemyName, character.name] = "RAT QUEEN!"
	arr_enemy[_enemyName, character.sprite] = spr_ratQueen;
	arr_enemy[_enemyName, character.damage] = 30;
	arr_enemy[_enemyName, character.hp] = 200;
	arr_enemy[_enemyName, character.defense] = 0;
	
	arr_enemy[_enemyName, character.skill_1] = normal.steal;
	arr_enemy[_enemyName, character.skill_2] = normal.cheese;
	arr_enemy[_enemyName, character.skill_3] = normal.steal;
	arr_enemy[_enemyName, character.skill_4] = normal.steal;
	
	arr_enemy[_enemyName, character.text_1] = "RAT QUEEN FEELS BORED!";
	arr_enemy[_enemyName, character.text_2] = "RAT QUEEN CHEWS ON A POLE";
	arr_enemy[_enemyName, character.text_3] = "RAT QUEEN RAT QUEEN RAT QUEEN RAT QUEEN RAT QUEEN...";
	
	arr_enemy[_enemyName, character.special] = -1;
	
	//JEAN
	arr_enemy[enemy.eggplant, character.name] = "jean";
	arr_enemy[enemy.eggplant, character.sprite] = spr_jean;
	arr_enemy[enemy.eggplant, character.damage] = 30;
	arr_enemy[enemy.eggplant, character.hp] = 200;
	arr_enemy[enemy.eggplant, character.defense] = 0;
	
	arr_enemy[enemy.eggplant, character.skill_1] = normal.freeze;
	arr_enemy[enemy.eggplant, character.skill_2] = -1;
	arr_enemy[enemy.eggplant, character.skill_3] = -1;
	arr_enemy[enemy.eggplant, character.skill_4] = -1;
	
	arr_enemy[enemy.eggplant, character.text_1] = "scrambled or fried ( thats not how it works )";
	arr_enemy[enemy.eggplant, character.text_2] = "CHILL";
	arr_enemy[enemy.eggplant, character.text_3] = "jean is writing his name in the snow";
	
	arr_enemy[enemy.eggplant, character.special] = normal.freeze;
	
	//CLOUD
	arr_enemy[enemy.internaut, character.name] = "INTERNAUT";
	arr_enemy[enemy.internaut, character.sprite] = spr_internaut;
	arr_enemy[enemy.internaut, character.damage] = 30;
	arr_enemy[enemy.internaut, character.hp] = 75;
	arr_enemy[enemy.internaut, character.defense] = 10;
	
	arr_enemy[enemy.internaut, character.skill_1] = normal.connect;
	arr_enemy[enemy.internaut, character.skill_2] = -1;
	arr_enemy[enemy.internaut, character.skill_3] = -1;
	arr_enemy[enemy.internaut, character.skill_4] = -1;
	
	arr_enemy[enemy.internaut, character.text_1] = "INTERNAUT FEELS LIKE UPLOADING YOUR MATRESS!";
	arr_enemy[enemy.internaut, character.text_2] = "INTERNAUT LIKES TO BROWSE";
	arr_enemy[enemy.internaut, character.text_3] = "INTERNAUT IS A FANATIC OF ALL SORTS OF MICE";
	
	arr_enemy[enemy.internaut, character.special] = normal.connect;
	
	arr_enemy[enemy.virus, character.name] = "virus";
	arr_enemy[enemy.virus, character.sprite] = spr_virus;
	arr_enemy[enemy.virus, character.damage] = 25;
	arr_enemy[enemy.virus, character.hp] = 100;
	arr_enemy[enemy.virus, character.defense] = 2;
	
	arr_enemy[enemy.virus, character.skill_1] = normal.download;
	arr_enemy[enemy.virus, character.skill_2] = -1;
	arr_enemy[enemy.virus, character.skill_3] = -1;
	arr_enemy[enemy.virus, character.skill_4] = -1;
	
	arr_enemy[enemy.virus, character.text_1] = "VIRUS FEELS LIKE STEALING YOUR INFORMATION!";
	arr_enemy[enemy.virus, character.text_2] = "CAN YOU UNINSTALL YOUR ANTIVIRUS REAL QUICK? IT'S FOR HOMEWORK";
	arr_enemy[enemy.virus, character.text_3] = "VIRUS IS INSTALLING NEW SEARCH BARS ON YOUR COMPUTER";
	
	arr_enemy[enemy.virus, character.special] = normal.download;
	
	arr_enemy[enemy.phish, character.name] = "phish";
	arr_enemy[enemy.phish, character.sprite] = spr_phish;
	arr_enemy[enemy.phish, character.damage] = 25;
	arr_enemy[enemy.phish, character.hp] = 60;
	arr_enemy[enemy.phish, character.defense] = 2;
	
	arr_enemy[enemy.phish, character.skill_1] = normal.phish;
	arr_enemy[enemy.phish, character.skill_2] = choose(-1, normal.confuse);
	arr_enemy[enemy.phish, character.skill_3] = -1;
	arr_enemy[enemy.phish, character.skill_4] = -1;
	
	arr_enemy[enemy.phish, character.text_1] = "PHISH WON'T TELL YOU WHAT HE FEELS LIKE DOING";
	arr_enemy[enemy.phish, character.text_2] = "PHISH POLITELY ASKS FOR YOUR PERSONAL DATA!";
	arr_enemy[enemy.phish, character.text_3] = "PHISH IS A CHEAP LITTLE BASTARD";
	
	arr_enemy[enemy.phish, character.special] = normal.phish;
	
	arr_enemy[enemy.bug, character.name] = "bug";
	arr_enemy[enemy.bug, character.sprite] = spr_bug;
	arr_enemy[enemy.bug, character.damage] = 30;
	arr_enemy[enemy.bug, character.hp] = 75;
	arr_enemy[enemy.bug, character.defense] = 10;
	
	arr_enemy[enemy.bug, character.skill_1] = normal.glitch;
	arr_enemy[enemy.bug, character.skill_2] = -1;
	arr_enemy[enemy.bug, character.skill_3] = -1;
	arr_enemy[enemy.bug, character.skill_4] = -1;
	
	arr_enemy[enemy.bug, character.text_1] = "Aa0 E30 134jojaS";
	arr_enemy[enemy.bug, character.text_2] = "01100010 01110101 01100111";
	arr_enemy[enemy.bug, character.text_3] = "!!?!?!? OIQWPEO!?";
	
	arr_enemy[enemy.bug, character.special] = normal.glitch;
	
	arr_enemy[enemy.outlet, character.name] = "OUTLET";
	arr_enemy[enemy.outlet, character.sprite] = spr_outlet;
	arr_enemy[enemy.outlet, character.damage] = 30;
	arr_enemy[enemy.outlet, character.hp] = 50;
	arr_enemy[enemy.outlet, character.defense] = 10;
	
	arr_enemy[enemy.outlet, character.skill_1] = normal.electric;
	arr_enemy[enemy.outlet, character.skill_2] = -1;
	arr_enemy[enemy.outlet, character.skill_3] = -1;
	arr_enemy[enemy.outlet, character.skill_4] = -1;
	
	arr_enemy[enemy.outlet, character.text_1] = "OUTLET FEELS LIKE SHOCKING YOU!";
	arr_enemy[enemy.outlet, character.text_2] = "ZAP ZAP!!";
	arr_enemy[enemy.outlet, character.text_3] = "COME ON, CHARGE YOUR PHONE";
	
	arr_enemy[enemy.outlet, character.special] = normal.electric;
	
	arr_enemy[enemy.warning, character.name] = "warning";
	arr_enemy[enemy.warning, character.sprite] = spr_warning;
	arr_enemy[enemy.warning, character.damage] = 30;
	arr_enemy[enemy.warning, character.hp] = 85;
	arr_enemy[enemy.warning, character.defense] = 15;
	
	arr_enemy[enemy.warning, character.skill_1] = normal.warn;
	arr_enemy[enemy.warning, character.skill_2] = -1;
	arr_enemy[enemy.warning, character.skill_3] = -1;
	arr_enemy[enemy.warning, character.skill_4] = -1;
	
	arr_enemy[enemy.warning, character.text_1] = "WARNING IS SCREAMING!";
	arr_enemy[enemy.warning, character.text_2] = "THERE IS NO TIME";
	arr_enemy[enemy.warning, character.text_3] = "WARNING IS ALTERED!";
	
	arr_enemy[enemy.warning, character.special] = normal.warn;
	
	//FRIDGE
	arr_enemy[enemy.skimo, character.name] = "skimo";
	arr_enemy[enemy.skimo, character.sprite] = spr_skimo;
	arr_enemy[enemy.skimo, character.damage] = 25;
	arr_enemy[enemy.skimo, character.hp] = 85;
	arr_enemy[enemy.skimo, character.defense] = 5;
	
	arr_enemy[enemy.skimo, character.skill_1] = normal.sneeze;
	arr_enemy[enemy.skimo, character.skill_2] = -1;
	arr_enemy[enemy.skimo, character.skill_3] = -1;
	arr_enemy[enemy.skimo, character.skill_4] = -1;
	
	arr_enemy[enemy.skimo, character.text_1] = "CAN SOMEONE TURN ON THE STOVE PLEASE?";
	arr_enemy[enemy.skimo, character.text_2] = "SKIMO HAS NO PERSONALITY HE'S JUST COLD";
	arr_enemy[enemy.skimo, character.text_3] = "SKIMO SNEEZES AS A HOBBY";
	
	arr_enemy[enemy.skimo, character.special] = normal.sneeze;

	arr_enemy[enemy.ice_cube, character.name] = "ICE CUBE";
	arr_enemy[enemy.ice_cube, character.sprite] = spr_ice;
	arr_enemy[enemy.ice_cube, character.damage] = 30;
	arr_enemy[enemy.ice_cube, character.hp] = 70;
	arr_enemy[enemy.ice_cube, character.defense] = 0;
	
	arr_enemy[enemy.ice_cube, character.skill_1] = normal.freeze;
	arr_enemy[enemy.ice_cube, character.skill_2] = -1;
	arr_enemy[enemy.ice_cube, character.skill_3] = -1;
	arr_enemy[enemy.ice_cube, character.skill_4] = -1;
	
	arr_enemy[enemy.ice_cube, character.text_1] = "ICE CUBE FEELS VIOLENT!";
	arr_enemy[enemy.ice_cube, character.text_2] = "ICE CUBE	FIGHTS FOR A SHINY BELT";
	arr_enemy[enemy.ice_cube, character.text_3] = "WHO DO I NEED TO PUNCH TO GET A COOKIE IN THIS PLACE?";
	
	arr_enemy[enemy.ice_cube, character.special] = normal.freeze;
	
	arr_enemy[enemy.cat, character.name] = "CAT";
	arr_enemy[enemy.cat, character.sprite] = spr_cat;
	arr_enemy[enemy.cat, character.damage] = 30;
	arr_enemy[enemy.cat, character.hp] = 50;
	arr_enemy[enemy.cat, character.defense] = 0;
	
	arr_enemy[enemy.cat, character.skill_1] = normal.nap;
	arr_enemy[enemy.cat, character.skill_2] = -1;
	arr_enemy[enemy.cat, character.skill_3] = -1;
	arr_enemy[enemy.cat, character.skill_4] = -1;
	
	arr_enemy[enemy.cat, character.text_1] = "CAT WOULD RATHER GO TO SLEEP THAN THIS";
	arr_enemy[enemy.cat, character.text_2] = "CAT'S NOT PUTTING MUCH EFFORT INTO THIS FIGHT";
	arr_enemy[enemy.cat, character.text_3] = "MEOW";
	
	arr_enemy[enemy.cat, character.special] = normal.freeze;
	
	//Omar
	arr_enemy[enemy.omar, character.name] = "Omar";
	arr_enemy[enemy.omar, character.sprite] = spr_baby;
	arr_enemy[enemy.omar, character.damage] = 25;
	arr_enemy[enemy.omar, character.hp] = 125;
	arr_enemy[enemy.omar, character.defense] = 15;
	
	arr_enemy[enemy.omar, character.skill_1] = normal.lily_juice;
	arr_enemy[enemy.omar, character.skill_2] = -1;
	arr_enemy[enemy.omar, character.skill_3] = -1;
	arr_enemy[enemy.omar, character.skill_4] = -1;
	
	arr_enemy[enemy.omar, character.text_1] = "YOU'RE IN A PLACE YOU DON'T BELONG!";
	arr_enemy[enemy.omar, character.text_2] = "BURGAHOLIC";
	arr_enemy[enemy.omar, character.text_3] = "OMAR LOVES BURGERS";
	
	arr_enemy[enemy.omar, character.special] = normal.burgify;
	
	//Burger
	arr_enemy[enemy.burger, character.name] = "Burger";
	arr_enemy[enemy.burger, character.sprite] = spr_burger;
	arr_enemy[enemy.burger, character.damage] = 20;
	arr_enemy[enemy.burger, character.hp] = 10;
	arr_enemy[enemy.burger, character.defense] = 3;
	
	arr_enemy[enemy.burger, character.skill_1] = -1;
	arr_enemy[enemy.burger, character.skill_2] = normal.resist;
	arr_enemy[enemy.burger, character.skill_3] = -1;
	arr_enemy[enemy.burger, character.skill_4] = -1;
	
	arr_enemy[enemy.burger, character.text_1] = "BURGIFIED!";
	arr_enemy[enemy.burger, character.text_2] = ". _ .";
	arr_enemy[enemy.burger, character.text_3] = ". . .";
	
	arr_enemy[enemy.burger, character.special] = -1;
	
	//Tito
	arr_enemy[enemy.tito, character.name] = "tito";
	arr_enemy[enemy.tito, character.sprite] = spr_tito;
	arr_enemy[enemy.tito, character.damage] = 20;
	arr_enemy[enemy.tito, character.hp] = 75;
	arr_enemy[enemy.tito, character.defense] = 10;
	
	arr_enemy[enemy.tito, character.skill_1] = normal.swap;
	arr_enemy[enemy.tito, character.skill_2] = -1;
	arr_enemy[enemy.tito, character.skill_3] = -1;
	arr_enemy[enemy.tito, character.skill_4] = -1;
	
	arr_enemy[enemy.tito, character.text_1] = "MIRA BONDIOLA, UNA ALMOHADA CON CORBATA";
	arr_enemy[enemy.tito, character.text_2] = "QUE PASO TE PERDISTE?";
	arr_enemy[enemy.tito, character.text_3] = "QUERES CHISITOS?";
	
	arr_enemy[enemy.tito, character.special] = normal.swap;
	
	//Bondiola
	arr_enemy[enemy.bondiola, character.name] = "Bondiola";
	arr_enemy[enemy.bondiola, character.sprite] = spr_bondiola;
	arr_enemy[enemy.bondiola, character.damage] = 30;
	arr_enemy[enemy.bondiola, character.hp] = 50;
	arr_enemy[enemy.bondiola, character.defense] = 0;
	
	arr_enemy[enemy.bondiola, character.skill_1] = normal.swap;
	arr_enemy[enemy.bondiola, character.skill_2] = -1;
	arr_enemy[enemy.bondiola, character.skill_3] = -1;
	arr_enemy[enemy.bondiola, character.skill_4] = -1;
	
	arr_enemy[enemy.bondiola, character.text_1] = "ESTO ME PASA POR NO PAGAR LOS IMPUESTOS";
	arr_enemy[enemy.bondiola, character.text_2] = "TU NARIZ CONTRA MIS BOLAS";
	arr_enemy[enemy.bondiola, character.text_3] = "SALE UN TRUCO?";
	
	arr_enemy[enemy.bondiola, character.special] = normal.swap;
	
	//Merchant
	arr_enemy[enemy.merchant, character.name] = "Merchant";
	arr_enemy[enemy.merchant, character.sprite] = spr_merchant;
	arr_enemy[enemy.merchant, character.damage] = 25;
	arr_enemy[enemy.merchant, character.hp] = 100;
	arr_enemy[enemy.merchant, character.defense] = 0;
	
	arr_enemy[enemy.merchant, character.skill_1] = -1;
	arr_enemy[enemy.merchant, character.skill_2] = -1;
	arr_enemy[enemy.merchant, character.skill_3] = -1;
	arr_enemy[enemy.merchant, character.skill_4] = -1;
	
	arr_enemy[enemy.merchant, character.text_1] = "QUEEN FEELS LIKE STOPPING YOUR MATTRESS...";
	arr_enemy[enemy.merchant, character.text_2] = "QUEEN WON'T STOP UNTIL YOUR MATTRESS IS JUST A MEMORY";
	arr_enemy[enemy.merchant, character.text_3] = "YOU'RE BLINDED BY THE ROYALTY";
	
	arr_enemy[enemy.merchant, character.special] = normal.cheese;
	
	/*//ELECTROLOTL
	arr_enemy[enemy.electrolotl, character.name] = "ELECTROLOTL"
	arr_enemy[enemy.electrolotl, character.sprite] = spr_electrolotl;
	arr_enemy[enemy.electrolotl, character.damage] = 20;
	arr_enemy[enemy.electrolotl, character.hp] = 150;
	arr_enemy[enemy.electrolotl, character.defense] = 15;
	
	arr_enemy[enemy.electrolotl, character.skill_1] = normal.electric;
	arr_enemy[enemy.electrolotl, character.skill_2] = -1;
	arr_enemy[enemy.electrolotl, character.skill_3] = -1;
	arr_enemy[enemy.electrolotl, character.skill_4] = -1;
	
	arr_enemy[enemy.electrolotl, character.text_1] = "ELECTROLOTL FEELS LIKE BZZZZZZZZZZZ";
	arr_enemy[enemy.electrolotl, character.text_2] = "SHOCKING!";
	arr_enemy[enemy.electrolotl, character.text_3] = "THIS IS WHAT WE WATCH ON THE INTERNET";
	
	arr_enemy[enemy.electrolotl, character.special] = normal.electric;
	
	//MICHAEL
	arr_enemy[enemy.michael, character.name] = "MICHAEL"
	arr_enemy[enemy.michael, character.sprite] = spr_michael;
	arr_enemy[enemy.michael, character.damage] = 25;
	arr_enemy[enemy.michael, character.hp] = 300;
	arr_enemy[enemy.michael, character.defense] = 0;
	
	arr_enemy[enemy.michael, character.skill_1] = normal.os;
	arr_enemy[enemy.michael, character.skill_2] = -1;
	arr_enemy[enemy.michael, character.skill_3] = -1;
	arr_enemy[enemy.michael, character.skill_4] = -1;
	
	arr_enemy[enemy.michael, character.text_1] = "MICHAEL FEELS LIKE SCREWING WITH YOUR SYSTEM!";
	arr_enemy[enemy.michael, character.text_2] = "MICHAEL DOESN'T LIKE SECURITY BREACHES";
	arr_enemy[enemy.michael, character.text_3] = "WHAT A NERD";
	
	arr_enemy[enemy.michael, character.special] = -1;
	*/
};

function playerEnemies(){
	//Pillow
	arr_enemy[enemy.pillow, character.name] = "Pillow";
	arr_enemy[enemy.pillow, character.sprite] = spr_pillow;
	arr_enemy[enemy.pillow, character.damage] = 25;
	arr_enemy[enemy.pillow, character.hp] = 100;
	arr_enemy[enemy.pillow, character.defense] = 0;

	arr_enemy[enemy.pillow, character.skill_1] = -1;
	arr_enemy[enemy.pillow, character.skill_2] = -1;
	arr_enemy[enemy.pillow, character.skill_3] = -1;
	arr_enemy[enemy.pillow, character.skill_4] = -1;
	
	//Rat King
	arr_enemy[enemy.rat_king, character.name] = "Rat King";
	arr_enemy[enemy.rat_king, character.sprite] = spr_ratKing;
	arr_enemy[enemy.rat_king, character.damage] = 20;
	arr_enemy[enemy.rat_king, character.hp] = 50;
	arr_enemy[enemy.rat_king, character.defense] = 5;
	
	arr_enemy[enemy.rat_king, character.skill_1] = -1;
	arr_enemy[enemy.rat_king, character.skill_2] = -1;
	arr_enemy[enemy.rat_king, character.skill_3] = -1;
	arr_enemy[enemy.rat_king, character.skill_4] = -1;
	
	//JEAN
	arr_enemy[enemy.eggplant, character.name] = "jean";
	arr_enemy[enemy.eggplant, character.sprite] = spr_jean;
	arr_enemy[enemy.eggplant, character.damage] = 20;
	arr_enemy[enemy.eggplant, character.hp] = 100;
	arr_enemy[enemy.eggplant, character.defense] = 0;
	
	arr_enemy[enemy.eggplant, character.skill_1] = -1;
	arr_enemy[enemy.eggplant, character.skill_2] = -1;
	arr_enemy[enemy.eggplant, character.skill_3] = -1;
	arr_enemy[enemy.eggplant, character.skill_4] = -1;
	
	arr_enemy[enemy.eggplant, character.special] = normal.sneeze;
	arr_enemy[enemy.eggplant, character.sprite] = spr_jeanPlayable;
	
	//Tito
	arr_enemy[enemy.tito, character.name] = "tito";
	arr_enemy[enemy.tito, character.sprite] = spr_tito;
	arr_enemy[enemy.tito, character.damage] = 20;
	arr_enemy[enemy.tito, character.hp] = 75;
	arr_enemy[enemy.tito, character.defense] = 10;
	
	arr_enemy[enemy.tito, character.skill_1] = -1;
	arr_enemy[enemy.tito, character.skill_2] = -1;
	arr_enemy[enemy.tito, character.skill_3] = -1;
	arr_enemy[enemy.tito, character.skill_4] = -1;
	
	//Bondiola
	arr_enemy[enemy.bondiola, character.name] = "Bondiola";
	arr_enemy[enemy.bondiola, character.sprite] = spr_bondiola;
	arr_enemy[enemy.bondiola, character.damage] = 30;
	arr_enemy[enemy.bondiola, character.hp] = 50;
	arr_enemy[enemy.bondiola, character.defense] = 0;
	
	arr_enemy[enemy.bondiola, character.skill_1] = -1;
	arr_enemy[enemy.bondiola, character.skill_2] = -1;
	arr_enemy[enemy.bondiola, character.skill_3] = -1;
	arr_enemy[enemy.bondiola, character.skill_4] = -1;
	
	arr_enemy[enemy.phish, character.name] = "phish";
	arr_enemy[enemy.phish, character.sprite] = spr_phish;
	arr_enemy[enemy.phish, character.damage] = 20;
	arr_enemy[enemy.phish, character.hp] = 60;
	arr_enemy[enemy.phish, character.defense] = 2;
	
	arr_enemy[enemy.phish, character.skill_1] = normal.nap;
	arr_enemy[enemy.phish, character.skill_2] = -1;
	arr_enemy[enemy.phish, character.skill_3] = -1;
	arr_enemy[enemy.phish, character.skill_4] = -1;
};
	
function stageEnemies(){
	arr_stageEnemies[stage.city, 0] = enemy.rat;
	arr_stageEnemies[stage.city, 1] = enemy.pidgeon;
	arr_stageEnemies[stage.city, 2] = enemy.trianglehead;

	arr_stageEnemies[stage.tunnel, 0] = enemy.dog;
	arr_stageEnemies[stage.tunnel, 1] = enemy.car;
	arr_stageEnemies[stage.tunnel, 2] = enemy.skater;
	
	arr_stageEnemies[stage.lemon_stand, 0] = enemy.lemon;
	arr_stageEnemies[stage.lemon_stand, 1] = enemy.cursed_lemon;
	arr_stageEnemies[stage.lemon_stand, 2] = enemy.rotten_lemon;
	
	arr_stageEnemies[stage.shortcut, 0] = enemy.bat;
	arr_stageEnemies[stage.shortcut, 1] = enemy.shroom;
	arr_stageEnemies[stage.shortcut, 2] = enemy.plant;
	
	arr_stageEnemies[stage.incinerator, 0] = enemy.feu;
	arr_stageEnemies[stage.incinerator, 1] = enemy.smokey;
	arr_stageEnemies[stage.incinerator, 2] = enemy.guard;
	
	arr_stageEnemies[stage.sewer, 0] = enemy.skelly;
	arr_stageEnemies[stage.sewer, 1] = enemy.plumber;
	arr_stageEnemies[stage.sewer, 2] = enemy.toothfrog;
	
	arr_stageEnemies[stage.ruins, 0] = enemy.wet_rat;
	arr_stageEnemies[stage.ruins, 1] = enemy.ruined_rat;
	arr_stageEnemies[stage.ruins, 2] = enemy.nervous_rat;
	
	arr_stageEnemies[stage.ratlantis, 0] = enemy.fat_rat;
	arr_stageEnemies[stage.ratlantis, 1] = enemy.wobbly_rat;
	arr_stageEnemies[stage.ratlantis, 2] = enemy.shivery_rat;
	
	arr_stageEnemies[stage.fridge, 0] = enemy.cat;
	arr_stageEnemies[stage.fridge, 1] = enemy.skimo;
	arr_stageEnemies[stage.fridge, 2] = enemy.ice_cube;
	
	arr_bossList[stage.city] = enemy.rat_king;
	arr_bossList[stage.tunnel] = enemy.cerberus;
	arr_bossList[stage.lemon_stand] = enemy.kid;
	arr_bossList[stage.shortcut] = enemy.mega_bat;
	arr_bossList[stage.incinerator] = enemy.queen;
	arr_bossList[stage.sewer] = enemy.slug;
	arr_bossList[stage.ruins] = enemy.wheel_cheese;
	arr_bossList[stage.ratlantis] = enemy.rat_queen;
	arr_bossList[stage.fridge] = enemy.eggplant;
	
	/*arr_stageEnemies[stage.cloud, 0] = enemy.outlet;
	arr_stageEnemies[stage.cloud, 1] = enemy.internaut;
	arr_stageEnemies[stage.cloud, 2] = enemy.phish;
	
	arr_stageEnemies[stage.breach, 0] = enemy.bug;
	arr_stageEnemies[stage.breach, 1] = enemy.virus;
	arr_stageEnemies[stage.breach, 2] = enemy.warning;
	
	arr_stageEnemies[stage.ashtray, 0] = enemy.omar;
	arr_stageEnemies[stage.ashtray, 1] = enemy.rat;
	arr_stageEnemies[stage.ashtray, 2] = enemy.bat;
	
	arr_stageEnemies[stage.strip, 0] = enemy.tito;
	arr_stageEnemies[stage.strip, 1] = enemy.rat;
	arr_stageEnemies[stage.strip, 2] = enemy.bat;
	
	arr_stageEnemies[stage.council, 0] = enemy.pillow_elder;
	arr_stageEnemies[stage.council, 1] = enemy.pillow_baby;
	arr_stageEnemies[stage.council, 2] = enemy.pillow_savvy;*/
	/*arr_bossList[stage.cloud] = enemy.electrolotl;
	arr_bossList[stage.breach] = enemy.michael;*/
};

function initializeEnemy(_enemy){
	global.text = arr_enemy[_enemy, character.text_1];
	global.textPrev = global.text;
	
	//name
	playerSelected = _enemy;
	var_name = arr_enemy[_enemy, character.name]; 

	//stats
	setHp(arr_enemy[_enemy, character.hp]);
	prevHp = hp;

	st_defense = arr_enemy[_enemy, character.defense];
	st_damage = arr_enemy[_enemy, character.damage];

	st_skills[0] = arr_enemy[_enemy, character.skill_1];
	st_skills[1] = arr_enemy[_enemy, character.skill_2];
	st_skills[2] = arr_enemy[_enemy, character.skill_3];
	st_skills[3] = arr_enemy[_enemy, character.skill_4];
	
	st_skillUses[0] = -1;
	st_skillUses[1] = -1;
	st_skillUses[2] = -1;
	st_skillUses[3] = -1;
	
	st_skillPlus[0] = false;
	st_skillPlus[1] = false;
	st_skillPlus[2] = false;
	st_skillPlus[3] = false;
	
	st_special = arr_enemy[_enemy, character.special];
	
	tempDef = 0;
	tempDmg = 0;
	
	sprite_index = arr_enemy[_enemy, character.sprite];
	
	for(i=0; i <= 10; i++)
	{
		arr_status[i]= false;
	};
	
	connectedCountdown = -1;
	frozenCountdown = -1;
	regenCountdown = -1;
	electrocuted = -1;
	disengaged = -1;
	explodeTimer = -1;
	tipsyRoll = choose(1, 2, 3, 4);
	dead = false;
};

function initializeTB(){
	tempWrite();
		with(obj_player){initializeEnemy(global.player)};
		initializeSkills(_self, _other);
	tempLoad();
};

function tempWrite(){
	if(obj_player.playerSelected = enemy.tito)
	{
		ini_open("tempTITO.ini")
	}
	else
	{
		ini_open("tempBONDIOLA.ini")
	};
		ini_write_real("skills", "1", st_skills[0]);
		ini_write_real("skills", "2", st_skills[1]);
		ini_write_real("skills", "3", st_skills[2]);
		ini_write_real("skills", "4", st_skills[3]);
		ini_write_real("skills", "special", st_special);
		
		ini_write_real("skillUses", "1", st_skillUses[0]);
		ini_write_real("skillUses", "2", st_skillUses[1]);
		ini_write_real("skillUses", "3", st_skillUses[2]);
		ini_write_real("skillUses", "4", st_skillUses[3]);
		
		ini_write_real("stats", "def", st_defense);
		ini_write_real("stats", "dmg", st_damage);
		ini_write_real("stats", "maxHp", maxHp);
		ini_write_real("stats", "hp", hp);
	ini_close();
};

function tempLoad(){
	if(obj_player.playerSelected = enemy.tito)
	{
		ini_open("tempTITO.ini")
	}
	else
	{
		ini_open("tempBONDIOLA.ini")
	};
		st_skills[0] = ini_read_real("skills", "1", st_skills[0]);
		st_skills[1] = ini_read_real("skills", "2", st_skills[1]);
		st_skills[2] = ini_read_real("skills", "3", st_skills[2]);
		st_skills[3] = ini_read_real("skills", "4", st_skills[3]);
		st_special   = ini_read_real("skills", "special", st_special);
		
		st_skillUses[0] = ini_read_real("skillUses", "1", st_skillUses[0]);
		st_skillUses[1] = ini_read_real("skillUses", "2", st_skillUses[1]);
		st_skillUses[2] = ini_read_real("skillUses", "3", st_skillUses[2]);
		st_skillUses[3] = ini_read_real("skillUses", "4", st_skillUses[3]);
		
		st_defense = ini_read_real("stats", "def", st_defense);
		st_damage = ini_read_real("stats", "dmg", st_damage);
		maxHp = ini_read_real("stats", "maxHp", maxHp);
		hp = ini_read_real("stats", "hp", hp);
	ini_close();
};
	
function tempErase(){
	if(file_exists("tempTITO.ini"))
	{
		file_delete("tempTITO.ini")	
	};
	
	if(file_exists("tempBONDIOLA.ini"))
	{
		file_delete("tempBONDIOLA.ini")	
	};
};