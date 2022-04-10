function enemylist(){
	//Pillow
	arr_enemy[enemy.pillow, character.name] = "Pillow";
	arr_enemy[enemy.pillow, character.sprite] = spr_pillow;
	arr_enemy[enemy.pillow, character.damage] = 25;
	arr_enemy[enemy.pillow, character.hp] = 100;
	arr_enemy[enemy.pillow, character.defense] = 0;

	arr_enemy[enemy.pillow, character.skill_1] = normal.heal;
	arr_enemy[enemy.pillow, character.skill_2] = -1;
	arr_enemy[enemy.pillow, character.skill_3] = -1;
	arr_enemy[enemy.pillow, character.skill_4] = -1;
	
	arr_enemy[enemy.pillow, character.text_1] = "PILLOW FEELS LIKE SAVING THE MATTRESS!";
	arr_enemy[enemy.pillow, character.text_2] = "PILLOW ISN'T PILLOW ACTUALLY";
	arr_enemy[enemy.pillow, character.text_3] = "PILLOW'S KINDA OFF...";
	
	arr_enemy[enemy.pillow, character.special] = normal.heal;
	
	//City
	arr_enemy[enemy.rat, character.name] = "Rat";
	arr_enemy[enemy.rat, character.sprite] = spr_rat;
	arr_enemy[enemy.rat, character.damage] = 15;
	arr_enemy[enemy.rat, character.hp] = 50;
	arr_enemy[enemy.rat, character.defense] = 0;
	
	arr_enemy[enemy.rat, character.skill_1] = choose(normal.cheese, -1);
	arr_enemy[enemy.rat, character.skill_2] = -1;
	arr_enemy[enemy.rat, character.skill_3] = -1;
	arr_enemy[enemy.rat, character.skill_4] = -1;
	
	arr_enemy[enemy.rat, character.text_1] = "RAT FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[enemy.rat, character.text_2] = "RAT LOVES CHEESE!";
	arr_enemy[enemy.rat, character.text_3] = "RAT RAT RAT RAT RAT RAT RAT RAT RAT RAT RAT RA...";
	
	arr_enemy[enemy.rat, character.special] = normal.cheese;
	
	arr_enemy[enemy.pidgeon, character.name] = "Mafia Pigeon";
	arr_enemy[enemy.pidgeon, character.sprite] = spr_pigeon;
	arr_enemy[enemy.pidgeon, character.damage] = 15;
	arr_enemy[enemy.pidgeon, character.hp] = choose(50, 60);
	arr_enemy[enemy.pidgeon, character.defense] = 2;
	
	arr_enemy[enemy.pidgeon, character.skill_1] = choose(normal.shoot, -1);
	arr_enemy[enemy.pidgeon, character.skill_2] = -1;
	arr_enemy[enemy.pidgeon, character.skill_3] = -1;
	arr_enemy[enemy.pidgeon, character.skill_4] = -1;
	
	arr_enemy[enemy.pidgeon, character.text_1] = "PIGEON FEELS LIKE SHOOTING YOUR MATTRESS!";
	arr_enemy[enemy.pidgeon, character.text_2] = "DON'T MESS WITH PIGEONS!";
	arr_enemy[enemy.pidgeon, character.text_3] = "PIGEON HAD A TOUGH LIFE!";
	
	arr_enemy[enemy.pidgeon, character.special] = normal.shoot;
	
	arr_enemy[enemy.trianglehead, character.name] = "Trianglehead";
	arr_enemy[enemy.trianglehead, character.sprite] = spr_triangle;
	arr_enemy[enemy.trianglehead, character.damage] = 15;
	arr_enemy[enemy.trianglehead, character.hp] = 50;
	arr_enemy[enemy.trianglehead, character.defense] = 5;
	
	arr_enemy[enemy.trianglehead, character.skill_1] = choose(normal.triangle, -1);
	arr_enemy[enemy.trianglehead, character.skill_2] = -1;
	arr_enemy[enemy.trianglehead, character.skill_3] = -1;
	arr_enemy[enemy.trianglehead, character.skill_4] = -1;
	
	arr_enemy[enemy.trianglehead, character.text_1] = "TRIANGLEHEAD FEELS LIKE USING YOUR MATTRESS!";
	arr_enemy[enemy.trianglehead, character.text_2] = "TRIANGLEHEAD HASN'T SLEPT IN A LONG TIME!";
	arr_enemy[enemy.trianglehead, character.text_3] = "TRIANGLEHEAD WANTS YOU TO SHUT UP!";
	
	arr_enemy[enemy.trianglehead, character.special] = normal.triangle;
	
	//Tunnel
	arr_enemy[enemy.dog, character.name] = "Dogcket";
	arr_enemy[enemy.dog, character.sprite] = spr_dog;
	arr_enemy[enemy.dog, character.damage] = 20;
	arr_enemy[enemy.dog, character.hp] = 75;
	arr_enemy[enemy.dog, character.defense] = 5;
	
	arr_enemy[enemy.dog, character.skill_1] = choose(normal.explode, -1);
	arr_enemy[enemy.dog, character.skill_2] = choose(normal.bark, -1);
	arr_enemy[enemy.dog, character.skill_3] = -1;
	arr_enemy[enemy.dog, character.skill_4] = -1;
	
	arr_enemy[enemy.dog, character.text_1] = "DOGCKET FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[enemy.dog, character.text_2] = "DOGCKET WIGGLES ITS.. TAIL?"
	arr_enemy[enemy.dog, character.text_3] = "DOGCKET IS ANGRY!";
	
	arr_enemy[enemy.dog, character.special] = normal.explode;
	
	arr_enemy[enemy.car, character.name] = "Mad Car";
	arr_enemy[enemy.car, character.sprite] = spr_driver;
	arr_enemy[enemy.car, character.damage] = 25;
	arr_enemy[enemy.car, character.hp] = 100;
	arr_enemy[enemy.car, character.defense] = 0;
	
	arr_enemy[enemy.car, character.skill_1] = choose(normal.honk, -1);
	arr_enemy[enemy.car, character.skill_2] = -1;
	arr_enemy[enemy.car, character.skill_3] = -1;
	arr_enemy[enemy.car, character.skill_4] = -1;
	
	arr_enemy[enemy.car, character.text_1] = "MAD CAR FEELS LIKE RUNNING OVER YOUR MATTRESS!";
	arr_enemy[enemy.car, character.text_2] = "MAD CAR HONKS ANGRILY"
	arr_enemy[enemy.car, character.text_3] = "MAD CAR WAS CURSED BY A WITCH WITH ASTIGMATISM! ( SHE TOUGHT THE CAR WAS SOMEONE ELSE )";
	
	arr_enemy[enemy.car, character.special] = normal.honk;
	
	arr_enemy[enemy.skater, character.name] = "Skater";
	arr_enemy[enemy.skater, character.sprite] = spr_skater;
	arr_enemy[enemy.skater, character.damage] = 20;
	arr_enemy[enemy.skater, character.hp] = 50;
	arr_enemy[enemy.skater, character.defense] = 10;
	
	arr_enemy[enemy.skater, character.skill_1] = normal.rush;
	arr_enemy[enemy.skater, character.skill_2] = normal.confuse;
	arr_enemy[enemy.skater, character.skill_3] = -1;
	arr_enemy[enemy.skater, character.skill_4] = -1;
	
	arr_enemy[enemy.skater, character.text_1] = "SKATER FEELS LIKE STEALING YOUR MATTRESS!";
	arr_enemy[enemy.skater, character.text_2] = "SKATER IS RESTLESS! TOO MUCH ENERGY DRINKS!"
	arr_enemy[enemy.skater, character.text_3] = "'' I SMOKE, I DRINK, I PLAY WITH GIRLS' HEARTS. WHAT ELSE DO YOU WANT ME TO SAY? ''";
	
	arr_enemy[enemy.skater, character.special] = normal.rush;
	
	//Lemonade Stand
	arr_enemy[enemy.lemon, character.name] = "Lemon";
	arr_enemy[enemy.lemon, character.sprite] = spr_lemon;
	arr_enemy[enemy.lemon, character.damage] = 35;
	arr_enemy[enemy.lemon, character.hp] = 75;
	arr_enemy[enemy.lemon, character.defense] = 10;
	
	arr_enemy[enemy.lemon, character.skill_1] = choose(normal.bitter, -1);
	arr_enemy[enemy.lemon, character.skill_2] = -1;
	arr_enemy[enemy.lemon, character.skill_3] = -1;
	arr_enemy[enemy.lemon, character.skill_4] = -1;
	
	arr_enemy[enemy.lemon, character.text_1] = "LEMON FEELS LIKE JUICING YOUR MATTRESS!";
	arr_enemy[enemy.lemon, character.text_2] = "LEMON FEELS BITTER!"
	arr_enemy[enemy.lemon, character.text_3] = "SMELLS LIKE LEMONADE!";
	
	arr_enemy[enemy.lemon, character.special] = normal.bitter;
	
	arr_enemy[enemy.rotten_lemon, character.name] = "Rotten Lemon";
	arr_enemy[enemy.rotten_lemon, character.sprite] = spr_lemonRot;
	arr_enemy[enemy.rotten_lemon, character.damage] = 40;
	arr_enemy[enemy.rotten_lemon, character.hp] = 60;
	arr_enemy[enemy.rotten_lemon, character.defense] = 5;
	
	arr_enemy[enemy.rotten_lemon, character.skill_1] = choose(normal.bitter, -1);
	arr_enemy[enemy.rotten_lemon, character.skill_2] = choose(-1, normal.rot);
	arr_enemy[enemy.rotten_lemon, character.skill_3] = -1;
	arr_enemy[enemy.rotten_lemon, character.skill_4] = -1;
	
	arr_enemy[enemy.rotten_lemon, character.text_1] = "ROTTEN LEMON IS FEELING FRESH!";
	arr_enemy[enemy.rotten_lemon, character.text_2] = "ROTTEN LEMON HAS NO PURPOSE!"
	arr_enemy[enemy.rotten_lemon, character.text_3] = "SMELLS LIKE MOSS AND CYTRICS...";
	
	arr_enemy[enemy.rotten_lemon, character.special] = normal.rot;
	
	arr_enemy[enemy.cursed_lemon, character.name] = "Cursed Lemon";
	arr_enemy[enemy.cursed_lemon, character.sprite] = spr_lemonCursed;
	arr_enemy[enemy.cursed_lemon, character.damage] = 30;
	arr_enemy[enemy.cursed_lemon, character.hp] = 100;
	arr_enemy[enemy.cursed_lemon, character.defense] = 5;
	
	arr_enemy[enemy.cursed_lemon, character.skill_1] = choose(normal.bitter, normal.lemon_toss);
	arr_enemy[enemy.cursed_lemon, character.skill_2] = normal.scare;
	arr_enemy[enemy.cursed_lemon, character.skill_3] = -1;
	arr_enemy[enemy.cursed_lemon, character.skill_4] = -1;
	
	arr_enemy[enemy.cursed_lemon, character.text_1] = "CURSED LEMON FEELS LIKE ...?";
	arr_enemy[enemy.cursed_lemon, character.text_2] = "CURSED LEMON IS"
	arr_enemy[enemy.cursed_lemon, character.text_3] = "SMELLS LIKE D:";
	
	arr_enemy[enemy.cursed_lemon, character.special] = normal.scare;
	
	//Shortcut
	arr_enemy[enemy.shroom, character.name] = "Shroom";
	arr_enemy[enemy.shroom, character.sprite] = spr_shroom;
	arr_enemy[enemy.shroom, character.damage] = 35;
	arr_enemy[enemy.shroom, character.hp] = 95;
	arr_enemy[enemy.shroom, character.defense] = 15;
	
	arr_enemy[enemy.shroom, character.skill_1] = normal.shroom;
	arr_enemy[enemy.shroom, character.skill_2] = -1;
	arr_enemy[enemy.shroom, character.skill_3] = -1;
	arr_enemy[enemy.shroom, character.skill_4] = -1;
	
	arr_enemy[enemy.shroom, character.text_1] = "SHROOM FEELS LIKE TOSSING SPORES TO YOUR MATTRESS!";
	arr_enemy[enemy.shroom, character.text_2] = "FEELING SHROOMY";
	arr_enemy[enemy.shroom, character.text_3] = "SHROOM DANCES!";
	
	arr_enemy[enemy.shroom, character.special] = normal.shroom;
	
	arr_enemy[enemy.plant, character.name] = "Plant";
	arr_enemy[enemy.plant, character.sprite] = spr_plant;
	arr_enemy[enemy.plant, character.damage] = 40;
	arr_enemy[enemy.plant, character.hp] = 115;
	arr_enemy[enemy.plant, character.defense] = 5;
	
	arr_enemy[enemy.plant, character.skill_1] = normal.confuse;
	arr_enemy[enemy.plant, character.skill_2] = normal.scare;
	arr_enemy[enemy.plant, character.skill_3] = -1;
	arr_enemy[enemy.plant, character.skill_4] = -1;
	
	arr_enemy[enemy.plant, character.text_1] = "PLANT FEELS LIKE EATING YOUR MATTRESS!";
	arr_enemy[enemy.plant, character.text_2] = "PLANT IS TIRED OF EATING BUGS";
	arr_enemy[enemy.plant, character.text_3] = "PLANT IS HUNGRY";
	
	arr_enemy[enemy.plant, character.special] = normal.bite;
	
	arr_enemy[enemy.bat, character.name] = "BAT";
	arr_enemy[enemy.bat, character.sprite] = spr_bat;
	arr_enemy[enemy.bat, character.damage] = 35;
	arr_enemy[enemy.bat, character.hp] = 80;
	arr_enemy[enemy.bat, character.defense] = 0;
	
	arr_enemy[enemy.bat, character.skill_1] = choose(normal.drain, -1);
	arr_enemy[enemy.bat, character.skill_2] = choose(normal.scare, -1);
	arr_enemy[enemy.bat, character.skill_3] = -1;
	arr_enemy[enemy.bat, character.skill_4] = -1;
	
	arr_enemy[enemy.bat, character.text_1] = "BAT FEELS LIKE SUCKING ON YOUR MATTRESS!";
	arr_enemy[enemy.bat, character.text_2] = "BAT IS BEING RUDE!";
	arr_enemy[enemy.bat, character.text_3] = "SMELLS LIKE TRANSYLVANIA!";
	
	arr_enemy[enemy.bat, character.special] = normal.drain;
	
	//Incinerator
	arr_enemy[enemy.feudent, character.name] = "FEU";
	arr_enemy[enemy.feudent, character.sprite] = spr_feudent;
	arr_enemy[enemy.feudent, character.damage] = 40;
	arr_enemy[enemy.feudent, character.hp] = 100;
	arr_enemy[enemy.feudent, character.defense] = 20;
	
	arr_enemy[enemy.feudent, character.skill_1] = normal.fireball;
	arr_enemy[enemy.feudent, character.skill_2] = choose(normal.confuse, normal.armor);
	arr_enemy[enemy.feudent, character.skill_3] = -1;
	arr_enemy[enemy.feudent, character.skill_4] = -1;
	
	arr_enemy[enemy.feudent, character.text_1] = "FEU FEELS LIKE BURNING YOUR MATTRESS! (NOT THE WAY YOU WANT TO)";
	arr_enemy[enemy.feudent, character.text_2] = "FEU IS DETERMINED!";
	arr_enemy[enemy.feudent, character.text_3] = "FEU ALARM ACTIVATES!";
	
	arr_enemy[enemy.feudent, character.special] = normal.fireball;
	
	arr_enemy[enemy.smokey, character.name] = "SMOKE";
	arr_enemy[enemy.smokey, character.sprite] = spr_smokey;
	arr_enemy[enemy.smokey, character.damage] = 35;
	arr_enemy[enemy.smokey, character.hp] = choose(100, 150);
	arr_enemy[enemy.smokey, character.defense] = 15;
	
	arr_enemy[enemy.smokey, character.skill_1] = normal.dissipate;
	arr_enemy[enemy.smokey, character.skill_2] = normal.punch;
	arr_enemy[enemy.smokey, character.skill_3] = choose(normal.nap, normal.confuse);
	arr_enemy[enemy.smokey, character.skill_4] = -1;
	
	arr_enemy[enemy.smokey, character.text_1] = "SMOKE FEELS LIKE GRILLING YOUR MATTRESS!";
	arr_enemy[enemy.smokey, character.text_2] = "SMOKE IS ETHEREAL";
	arr_enemy[enemy.smokey, character.text_3] = "THE SMOKE ALARM ACTIVATES!";
	
	arr_enemy[enemy.smokey, character.special] = normal.dissipate;
	
	arr_enemy[enemy.guard, character.name] = "Guard";
	arr_enemy[enemy.guard, character.sprite] = spr_guard;
	arr_enemy[enemy.guard, character.damage] = 35;
	arr_enemy[enemy.guard, character.hp] = choose(175, 200);
	arr_enemy[enemy.guard, character.defense] = 15;
	
	arr_enemy[enemy.guard, character.skill_1] = normal.punch;
	arr_enemy[enemy.guard, character.skill_2] = normal.armor;
	arr_enemy[enemy.guard, character.skill_3] = normal.nap;
	arr_enemy[enemy.guard, character.skill_4] = -1;
	
	arr_enemy[enemy.guard, character.text_1] = "GUARD FEELS LIKE DESTROYING YOUR MATTRESS!";
	arr_enemy[enemy.guard, character.text_2] = "INCINERATION NATION";
	arr_enemy[enemy.guard, character.text_3] = "GUARD IS JUST DOING HER JOB";
	
	arr_enemy[enemy.guard, character.special] = normal.armor;
	
	//SEWER
	arr_enemy[enemy.skelly, character.name] = "Skeleton";
	arr_enemy[enemy.skelly, character.sprite] = spr_skelly;
	arr_enemy[enemy.skelly, character.damage] = 15;
	arr_enemy[enemy.skelly, character.hp] = 65;
	arr_enemy[enemy.skelly, character.defense] = 5;
	
	arr_enemy[enemy.skelly, character.skill_1] = normal.disengage;
	arr_enemy[enemy.skelly, character.skill_2] = -1;
	arr_enemy[enemy.skelly, character.skill_3] = -1;
	arr_enemy[enemy.skelly, character.skill_4] = -1;
	
	arr_enemy[enemy.skelly, character.text_1] = "SKELETON WILL GRAB YOUR BONES WHETHER YOU HAVE THEM OR NOT";
	arr_enemy[enemy.skelly, character.text_2] = "STICKS AND STONES MAY, INDEED, BREAK YOUR BONES";
	arr_enemy[enemy.skelly, character.text_3] = "SKELETON MISSES HAVING LUNGS";
	
	arr_enemy[enemy.skelly, character.special] = normal.disengage;
	
	arr_enemy[enemy.toothfrog, character.name] = "TOOTHFROG";
	arr_enemy[enemy.toothfrog, character.sprite] = spr_toothFrog;
	arr_enemy[enemy.toothfrog, character.damage] = 30;
	arr_enemy[enemy.toothfrog, character.hp] = 40;
	arr_enemy[enemy.toothfrog, character.defense] = 2;
	
	arr_enemy[enemy.toothfrog, character.skill_1] = normal.smile;
	arr_enemy[enemy.toothfrog, character.skill_2] = -1;
	arr_enemy[enemy.toothfrog, character.skill_3] = -1;
	arr_enemy[enemy.toothfrog, character.skill_4] = -1;
	
	arr_enemy[enemy.toothfrog, character.text_1] = "TOOTHFROG FEELS LIKE SHOWING YOU HIS SMILE!";
	arr_enemy[enemy.toothfrog, character.text_2] = "TOOTHFROG IS PROUD OF HIS SHINY TEETH";
	arr_enemy[enemy.toothfrog, character.text_3] = "BRUSH YOUR TEETH TILL YOUR GUMS BLEED OF HAPPINESS";
	
	arr_enemy[enemy.toothfrog, character.special] = normal.smile;
	
	arr_enemy[enemy.plumber, character.name] = "PLUMBERDILE";
	arr_enemy[enemy.plumber, character.sprite] = spr_plumber;
	arr_enemy[enemy.plumber, character.damage] = 20;
	arr_enemy[enemy.plumber, character.hp] = 75;
	arr_enemy[enemy.plumber, character.defense] = 5;
	
	arr_enemy[enemy.plumber, character.skill_1] = normal.plunger;
	arr_enemy[enemy.plumber, character.skill_2] = -1;
	arr_enemy[enemy.plumber, character.skill_3] = -1;
	arr_enemy[enemy.plumber, character.skill_4] = -1;
	
	arr_enemy[enemy.plumber, character.text_1] = "PLUMBERDILE FEELS LIKE MANTAINING THE SEWER SYSTEM CLEAN AND FUNCTIONAL!";
	arr_enemy[enemy.plumber, character.text_2] = "PLUMBERDILE IS VERY PASSIONATE ABOUT PLUMBING";
	arr_enemy[enemy.plumber, character.text_3] = "PLUMB!!";
	
	arr_enemy[enemy.plumber, character.special] = normal.plunger;
	
	//CIRCUS
	arr_enemy[enemy.clown, character.name] = "DEAD CLOWN";
	arr_enemy[enemy.clown, character.sprite] = spr_clown;
	arr_enemy[enemy.clown, character.damage] = 25;
	arr_enemy[enemy.clown, character.hp] = 75;
	arr_enemy[enemy.clown, character.defense] = 10;
	
	arr_enemy[enemy.clown, character.skill_1] = normal.juggle;
	arr_enemy[enemy.clown, character.skill_2] = normal.honk2;
	arr_enemy[enemy.clown, character.skill_3] = -1;
	arr_enemy[enemy.clown, character.skill_4] = -1;
	
	arr_enemy[enemy.clown, character.text_1] = "CLOWN FEELS LIKE LAUGHING AT YOU!";
	arr_enemy[enemy.clown, character.text_2] = "LIFE IS JUST A BIG CLOWN CAR WHERE THE FUNNIEST CLOWN GETS TO DRIVE";
	arr_enemy[enemy.clown, character.text_3] = "THE GHOSTS WOULD RATHER BEING ANYWHERE ELSE";
	
	arr_enemy[enemy.clown, character.special] = normal.juggle;
	
	arr_enemy[enemy.ghost, character.name] = "GHOST";
	arr_enemy[enemy.ghost, character.sprite] = spr_ghost;
	arr_enemy[enemy.ghost, character.damage] = 30;
	arr_enemy[enemy.ghost, character.hp] = 60;
	arr_enemy[enemy.ghost, character.defense] = 10;
	
	arr_enemy[enemy.ghost, character.skill_1] = normal.scare;
	arr_enemy[enemy.ghost, character.skill_2] = -1;
	arr_enemy[enemy.ghost, character.skill_3] = -1;
	arr_enemy[enemy.ghost, character.skill_4] = -1;
	
	arr_enemy[enemy.ghost, character.text_1] = "GHOST FEELS LIKE SPOOKING YOU!";
	arr_enemy[enemy.ghost, character.text_2] = "BOO!";
	arr_enemy[enemy.ghost, character.text_3] = "BLEEEH!";
	
	arr_enemy[enemy.ghost, character.special] = normal.scare;
	
	arr_enemy[enemy.mime, character.name] = "BOX MIME";
	arr_enemy[enemy.mime, character.sprite] = spr_mime;
	arr_enemy[enemy.mime, character.damage] = 15;
	arr_enemy[enemy.mime, character.hp] = 100;
	arr_enemy[enemy.mime, character.defense] = 2;
	
	arr_enemy[enemy.mime, character.skill_1] = normal.pretend;
	arr_enemy[enemy.mime, character.skill_2] = -1;
	arr_enemy[enemy.mime, character.skill_3] = -1;
	arr_enemy[enemy.mime, character.skill_4] = -1;
	
	arr_enemy[enemy.mime, character.text_1] = "BOX MIME WANTS TO PERFORM FOR YOU!";
	arr_enemy[enemy.mime, character.text_2] = "BOX MIME PRETENDS TO HAVE A PERSON INSIDE ITS HEAD";
	arr_enemy[enemy.mime, character.text_3] = "BOX MIME IS TELLING SOME AMAZING JOKES WITH MIMIC";
	
	arr_enemy[enemy.mime, character.special] = normal.pretend;
	
	//SHAFT
	arr_enemy[enemy.muncher, character.name] = "SOUL MUNCHER";
	arr_enemy[enemy.muncher, character.sprite] = spr_muncher;
	arr_enemy[enemy.muncher, character.damage] = 30;
	arr_enemy[enemy.muncher, character.hp] = 50 ;
	arr_enemy[enemy.muncher, character.defense] = 15;
	
	arr_enemy[enemy.muncher, character.skill_1] = normal.soul_munch;
	arr_enemy[enemy.muncher, character.skill_2] = -1;
	arr_enemy[enemy.muncher, character.skill_3] = -1;
	arr_enemy[enemy.muncher, character.skill_4] = -1;
	
	arr_enemy[enemy.muncher, character.text_1] = "SOUL MUNCHER FEELS LIKE CHEWING YOUR SPIRIT!";
	arr_enemy[enemy.muncher, character.text_2] = "SOUNDS LIKE CHEWING NOISES AND SCREAMS";
	arr_enemy[enemy.muncher, character.text_3] = "YOU'RE BREAKFAST TO ME";
	
	arr_enemy[enemy.muncher, character.special] = normal.soul_munch;
	
	arr_enemy[enemy.eraser, character.name] = "SOUL BLOCKER";
	arr_enemy[enemy.eraser, character.sprite] = spr_blocker;
	arr_enemy[enemy.eraser, character.damage] = 15;
	arr_enemy[enemy.eraser, character.hp] = 100;
	arr_enemy[enemy.eraser, character.defense] = 15;
	
	arr_enemy[enemy.eraser, character.skill_1] = normal.soul_block;
	arr_enemy[enemy.eraser, character.skill_2] = -1;
	arr_enemy[enemy.eraser, character.skill_3] = -1;
	arr_enemy[enemy.eraser, character.skill_4] = -1;
	
	arr_enemy[enemy.eraser, character.text_1] = "SOUL BLOCKER IS DETERMINED TO STOP YOU!";
	arr_enemy[enemy.eraser, character.text_2] = "SOUNDS LIKE SCREAMS AND EMPTINESS";
	arr_enemy[enemy.eraser, character.text_3] = "STOP! WAIT A MINUTE";
	
	arr_enemy[enemy.eraser, character.special] = normal.soul_block;
	
	arr_enemy[enemy.thief, character.name] = "SOUL THIEF";
	arr_enemy[enemy.thief, character.sprite] = spr_thief;
	arr_enemy[enemy.thief, character.damage] = 25;
	arr_enemy[enemy.thief, character.hp] = 80;
	arr_enemy[enemy.thief, character.defense] = 10;
	
	arr_enemy[enemy.thief, character.skill_1] = normal.soul_steal;
	arr_enemy[enemy.thief, character.skill_2] = -1;
	arr_enemy[enemy.thief, character.skill_3] = -1;
	arr_enemy[enemy.thief, character.skill_4] = -1;
	
	arr_enemy[enemy.thief, character.text_1] = "SOUL THIEF IS GONNA ROB YOUR SOUL!";
	arr_enemy[enemy.thief, character.text_2] = "SOUNDS LIKE SCREAMS AND DISPAIR";
	arr_enemy[enemy.thief, character.text_3] = "I'LL TAKE IT FOR FREE";
	
	arr_enemy[enemy.thief, character.special] = normal.soul_steal;
	
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
	arr_enemy[enemy.skimo, character.damage] = 30;
	arr_enemy[enemy.skimo, character.hp] = 85;
	arr_enemy[enemy.skimo, character.defense] = 15;
	
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
	arr_enemy[enemy.ice_cube, character.hp] = 85;
	arr_enemy[enemy.ice_cube, character.defense] = 15;
	
	arr_enemy[enemy.ice_cube, character.skill_1] = normal.freeze;
	arr_enemy[enemy.ice_cube, character.skill_2] = normal.punch;
	arr_enemy[enemy.ice_cube, character.skill_3] = -1;
	arr_enemy[enemy.ice_cube, character.skill_4] = -1;
	
	arr_enemy[enemy.ice_cube, character.text_1] = "ICE CUBE FEELS VIOLENT!";
	arr_enemy[enemy.ice_cube, character.text_2] = "ICE CUBE	FIGHTS FOR A SHINY BELT";
	arr_enemy[enemy.ice_cube, character.text_3] = "WHO DO I NEED TO PUNCH TO GET A COOKIE IN THIS PLACE?";
	
	arr_enemy[enemy.ice_cube, character.special] = normal.freeze;
	
	arr_enemy[enemy.cat, character.name] = "CAT";
	arr_enemy[enemy.cat, character.sprite] = spr_cat;
	arr_enemy[enemy.cat, character.damage] = 30;
	arr_enemy[enemy.cat, character.hp] = 85;
	arr_enemy[enemy.cat, character.defense] = 15;
	
	arr_enemy[enemy.cat, character.skill_1] = normal.nap;
	arr_enemy[enemy.cat, character.skill_2] = -1;
	arr_enemy[enemy.cat, character.skill_3] = -1;
	arr_enemy[enemy.cat, character.skill_4] = -1;
	
	arr_enemy[enemy.cat, character.text_1] = "CAT WOULD RATHER GO TO SLEEP THAN THIS";
	arr_enemy[enemy.cat, character.text_2] = "CAT'S NOT PUTTING MUCH EFFORT INTO THIS FIGHT";
	arr_enemy[enemy.cat, character.text_3] = "MEOW";
	
	arr_enemy[enemy.cat, character.special] = normal.freeze;
	
	//BOSSES
	arr_enemy[enemy.rat_king, character.name] = "Rat King";
	arr_enemy[enemy.rat_king, character.sprite] = spr_ratKing;
	arr_enemy[enemy.rat_king, character.damage] = 15;
	arr_enemy[enemy.rat_king, character.hp] = 100;
	arr_enemy[enemy.rat_king, character.defense] = 5;
	
	arr_enemy[enemy.rat_king, character.skill_1] = normal.steal;
	arr_enemy[enemy.rat_king, character.skill_2] = normal.cheese;
	arr_enemy[enemy.rat_king, character.skill_3] = -1;
	arr_enemy[enemy.rat_king, character.skill_4] = -1;
	
	arr_enemy[enemy.rat_king, character.text_1] = "RAT KING FEELS LIKE STEALING YOUR MATTRESS!";
	arr_enemy[enemy.rat_king, character.text_2] = "RAT KING IS THE RAT WHO MAKES ALL OF THE RULES!";
	arr_enemy[enemy.rat_king, character.text_3] = "KING KING KING KING KING KING KING KING KING KI...";
	
	arr_enemy[enemy.rat_king, character.special] = normal.steal;
	
	//Cerberus
	arr_enemy[enemy.cerberus, character.name] = "Cerberus";
	arr_enemy[enemy.cerberus, character.sprite] = spr_cerberus;
	arr_enemy[enemy.cerberus, character.damage] = 25;
	arr_enemy[enemy.cerberus, character.hp] = 100;
	arr_enemy[enemy.cerberus, character.defense] = 10;
	
	arr_enemy[enemy.cerberus, character.skill_1] = choose(normal.bark, normal.explode);
	arr_enemy[enemy.cerberus, character.skill_2] = -1;
	arr_enemy[enemy.cerberus, character.skill_3] = -1;
	arr_enemy[enemy.cerberus, character.skill_4] = -1;
	
	arr_enemy[enemy.cerberus, character.text_1] = "CERBERUS FEELS LIKE OBLITERATING YOUR MATTRESS!";
	arr_enemy[enemy.cerberus, character.text_2] = "CERBERUS FEELS STRONG!";
	arr_enemy[enemy.cerberus, character.text_3] = "CERBERUS IS A BAD BOY!";
	
	arr_enemy[enemy.cerberus, character.special] = normal.bark;
	
	//Cerberus 2
	arr_enemy[enemy.cerberus2, character.name] = "Cerberus";
	arr_enemy[enemy.cerberus2, character.sprite] = spr_cerberus2;
	arr_enemy[enemy.cerberus2, character.damage] = 20;
	arr_enemy[enemy.cerberus2, character.hp] = 75;
	arr_enemy[enemy.cerberus2, character.defense] = 10;
	
	arr_enemy[enemy.cerberus2, character.skill_1] = normal.bark;
	arr_enemy[enemy.cerberus2, character.skill_2] = choose(-1, normal.explode);
	arr_enemy[enemy.cerberus2, character.skill_3] = -1;
	arr_enemy[enemy.cerberus2, character.skill_4] = -1;
	
	arr_enemy[enemy.cerberus2, character.text_1] = "CERBERUS FEELS LIKE BREAKING YOUR MATTRESS!";
	arr_enemy[enemy.cerberus2, character.text_2] = "CERBERUS FEELS WEAKER!";
	arr_enemy[enemy.cerberus2, character.text_3] = "CERBERUS IS STILL A BAD BOY!";
	
	arr_enemy[enemy.cerberus2, character.special] = normal.bark;
	
	//Cerberus
	arr_enemy[enemy.cerberus3, character.name] = "Cerberus";
	arr_enemy[enemy.cerberus3, character.sprite] = spr_cerberus3;
	arr_enemy[enemy.cerberus3, character.damage] = 15;
	arr_enemy[enemy.cerberus3, character.hp] = 50;
	arr_enemy[enemy.cerberus3, character.defense] = 5;
	
	arr_enemy[enemy.cerberus3, character.skill_1] = normal.explode;
	arr_enemy[enemy.cerberus3, character.skill_2] = -1;
	arr_enemy[enemy.cerberus3, character.skill_3] = -1;
	arr_enemy[enemy.cerberus3, character.skill_4] = -1;
	
	arr_enemy[enemy.cerberus3, character.text_1] = "CERBERUS FEELS LIKE BITING YOUR MATTRESS!";
	arr_enemy[enemy.cerberus3, character.text_2] = "CERBERUS FEELS WEAK!";
	arr_enemy[enemy.cerberus3, character.text_3] = "CERBERUS IS A VERY BAD BOY!";
	
	arr_enemy[enemy.cerberus3, character.special] = normal.bark;
	
	//Kid
	arr_enemy[enemy.kid, character.name] = "Lemonade Kid";
	arr_enemy[enemy.kid, character.sprite] = spr_kid;
	arr_enemy[enemy.kid, character.damage] = 30;
	arr_enemy[enemy.kid, character.hp] = 150;
	arr_enemy[enemy.kid, character.defense] = 5;
	
	arr_enemy[enemy.kid, character.skill_1] = normal.bitter;
	arr_enemy[enemy.kid, character.skill_2] = normal.nap;
	arr_enemy[enemy.kid, character.skill_3] = normal.lemon_toss;
	arr_enemy[enemy.kid, character.skill_4] = -1;
	
	arr_enemy[enemy.kid, character.text_1] = "LEMONADE KID FEELS LIKE SPILLING LEMONADE ON YOUR MATTRESS!";
	arr_enemy[enemy.kid, character.text_2] = "LEMONADE KID ASKS FOR 25 CENTS";
	arr_enemy[enemy.kid, character.text_3] = "LEMONADE KID IS BEING RUDE!";
	
	arr_enemy[enemy.kid, character.special] = normal.bitter;
	
	//Mega Bat
	arr_enemy[enemy.mega_bat, character.name] = "Mega Bat";
	arr_enemy[enemy.mega_bat, character.sprite] = spr_megabat;
	arr_enemy[enemy.mega_bat, character.damage] = 35;
	arr_enemy[enemy.mega_bat, character.hp] = 200;
	arr_enemy[enemy.mega_bat, character.defense] = 5;
	
	arr_enemy[enemy.mega_bat, character.skill_1] = normal.lick;
	arr_enemy[enemy.mega_bat, character.skill_2] = -1;
	arr_enemy[enemy.mega_bat, character.skill_3] = -1;
	arr_enemy[enemy.mega_bat, character.skill_4] = -1;
	
	arr_enemy[enemy.mega_bat, character.text_1] = "MEGA BAT FEELS LIKE DRAINING YOUR MATTRESS!";
	arr_enemy[enemy.mega_bat, character.text_2] = "MEGA BAT SMELLS LIKE A BLOOD BANK!";
	arr_enemy[enemy.mega_bat, character.text_3] = "LICK LICK LICK LICK LICK LICK LICK LICK LICK LICK LICK...";
	
	arr_enemy[enemy.mega_bat, character.special] = normal.drain;
	
	//Queen
	arr_enemy[enemy.queen, character.name] = "Queen";
	arr_enemy[enemy.queen, character.sprite] = spr_queen;
	arr_enemy[enemy.queen, character.damage] = 40;
	arr_enemy[enemy.queen, character.hp] = 300;
	arr_enemy[enemy.queen, character.defense] = 15;
	
	arr_enemy[enemy.queen, character.skill_1] = -1;
	arr_enemy[enemy.queen, character.skill_2] = normal.distract;
	arr_enemy[enemy.queen, character.skill_3] = normal.jewel_toss;
	arr_enemy[enemy.queen, character.skill_4] = normal.crown;
	
	arr_enemy[enemy.queen, character.text_1] = "QUEEN FEELS LIKE STOPPING YOUR MATTRESS...";
	arr_enemy[enemy.queen, character.text_2] = "QUEEN WON'T STOP UNTIL YOUR MATTRESS IS JUST A MEMORY";
	arr_enemy[enemy.queen, character.text_3] = "YOU'RE BLINDED BY THE ROYALTY";
	
	arr_enemy[enemy.queen, character.special] = normal.crown;
	
	//Omar
	arr_enemy[enemy.omar, character.name] = "Omar";
	arr_enemy[enemy.omar, character.sprite] = spr_omar;
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
	
	//JEAN
	arr_enemy[enemy.eggplant, character.name] = "jean";
	arr_enemy[enemy.eggplant, character.sprite] = spr_jean;
	arr_enemy[enemy.eggplant, character.damage] = 25;
	arr_enemy[enemy.eggplant, character.hp] = 100;
	arr_enemy[enemy.eggplant, character.defense] = 0;
	
	arr_enemy[enemy.eggplant, character.skill_1] = normal.freeze;
	arr_enemy[enemy.eggplant, character.skill_2] = -1;
	arr_enemy[enemy.eggplant, character.skill_3] = -1;
	arr_enemy[enemy.eggplant, character.skill_4] = -1;
	
	arr_enemy[enemy.eggplant, character.text_1] = "scrambled or fried ( thats not how it works )";
	arr_enemy[enemy.eggplant, character.text_2] = "CHILL";
	arr_enemy[enemy.eggplant, character.text_3] = "jean is writing his name in the snow";
	
	arr_enemy[enemy.eggplant, character.special] = normal.freeze;
	//SLUG
	arr_enemy[enemy.slug, character.name] = "sewer slug";
	arr_enemy[enemy.slug, character.sprite] = spr_slug;
	arr_enemy[enemy.slug, character.damage] = 20;
	arr_enemy[enemy.slug, character.hp] = 175;
	arr_enemy[enemy.slug, character.defense] = 0;
	
	arr_enemy[enemy.slug, character.skill_1] = normal.smile;
	arr_enemy[enemy.slug, character.skill_2] = normal.rot;
	arr_enemy[enemy.slug, character.skill_3] = -1;
	arr_enemy[enemy.slug, character.skill_4] = -1;
	
	arr_enemy[enemy.slug, character.text_1] = "SEWER SLUG WANTS TO ABSORB YOU!";
	arr_enemy[enemy.slug, character.text_2] = "SEWER SLUG IS MADE OUT OF !//$&!/!";
	arr_enemy[enemy.slug, character.text_3] = "SEWER SLUG IS FEELING SLIMY";
	
	arr_enemy[enemy.slug, character.special] = normal.smile;
	
	//CLOWN CAR
	arr_enemy[enemy.clown_car, character.name] = "CLOWN CAR";
	arr_enemy[enemy.clown_car, character.sprite] = spr_clownCar;
	arr_enemy[enemy.clown_car, character.damage] = 25;
	arr_enemy[enemy.clown_car, character.hp] = 150;
	arr_enemy[enemy.clown_car, character.defense] = 0;
	
	arr_enemy[enemy.clown_car, character.skill_1] = normal.honk2;
	arr_enemy[enemy.clown_car, character.skill_2] = normal.honk;
	arr_enemy[enemy.clown_car, character.skill_3] = -1;
	arr_enemy[enemy.clown_car, character.skill_4] = -1;
	
	arr_enemy[enemy.clown_car, character.text_1] = "CLOWN CAR FEELS FUNNY!";
	arr_enemy[enemy.clown_car, character.text_2] = "HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK HONK";
	arr_enemy[enemy.clown_car, character.text_3] = "CLOWN CAR FEELS LIKE THROWING UP!";
	
	arr_enemy[enemy.clown_car, character.special] = normal.honk2;
	
	//DEGRADY
	arr_enemy[enemy.clown1, character.name] = "DEGRADY THE CLOWN";
	arr_enemy[enemy.clown1, character.sprite] = spr_clown1;
	arr_enemy[enemy.clown1, character.damage] = 25;
	arr_enemy[enemy.clown1, character.hp] = 25;
	arr_enemy[enemy.clown1, character.defense] = 0;
	
	arr_enemy[enemy.clown1, character.skill_1] = -1;
	arr_enemy[enemy.clown1, character.skill_2] = -1;
	arr_enemy[enemy.clown1, character.skill_3] = -1;
	arr_enemy[enemy.clown1, character.skill_4] = -1;
	
	arr_enemy[enemy.clown1, character.text_1] = "DEGRADY THE CLOWN IS HERE TO DEGRADE HIMSELF!";
	arr_enemy[enemy.clown1, character.text_2] = "DEGRADY THE CLOWN SAYS HIS LIFE IS A JOKE!";
	arr_enemy[enemy.clown1, character.text_3] = "DEGRADY LIKES IT WHEN YOU HIT HIM";
	
	arr_enemy[enemy.clown1, character.special] = -1;
	
	//DEPRESSY
	arr_enemy[enemy.clown2, character.name] = "DEPRESSY THE CLOWN";
	arr_enemy[enemy.clown2, character.sprite] = spr_clown2;
	arr_enemy[enemy.clown2, character.damage] = 10;
	arr_enemy[enemy.clown2, character.hp] = 50;
	arr_enemy[enemy.clown2, character.defense] = 0;
	
	arr_enemy[enemy.clown2, character.skill_1] = normal.smile;
	arr_enemy[enemy.clown2, character.skill_2] = -1;
	arr_enemy[enemy.clown2, character.skill_3] = -1;
	arr_enemy[enemy.clown2, character.skill_4] = -1;

	arr_enemy[enemy.clown2, character.text_1] = "DEPRESSY THE CLOWN DOESN'T KNOW ANY JOKES : (" 
	arr_enemy[enemy.clown2, character.text_2] = "DEPRESSY THE CLOWN TEACHES THE KIDS ABOUT REAL LIFE!";
	arr_enemy[enemy.clown2, character.text_3] = "DEPRESSY THE CLOWN FEELS LIKE : (";;
	
	arr_enemy[enemy.clown2, character.special] = normal.smile;
	
	//FREEZY
	arr_enemy[enemy.clown3, character.name] = "FREEZY THE CLOWN";
	arr_enemy[enemy.clown3, character.sprite] = spr_clown3;
	arr_enemy[enemy.clown3, character.damage] = 20;
	arr_enemy[enemy.clown3, character.hp] = 30;
	arr_enemy[enemy.clown3, character.defense] = 0;
	
	arr_enemy[enemy.clown3, character.skill_1] = normal.freeze;
	arr_enemy[enemy.clown3, character.skill_2] = -1;
	arr_enemy[enemy.clown3, character.skill_3] = -1;
	arr_enemy[enemy.clown3, character.skill_4] = -1;
	
	arr_enemy[enemy.clown3, character.text_1] = "FREEZY THE CLOWN KNOWS A VERY COOL JOKE!";
	arr_enemy[enemy.clown3, character.text_2] = "FREEZY THE CLOWN SPENDS HIS TIME IN THE FRIDGE";
	arr_enemy[enemy.clown3, character.text_3] = "BRR...";
	
	arr_enemy[enemy.clown3, character.special] = normal.freeze;
	
	//MARKETY
	arr_enemy[enemy.clown4, character.name] = "MARKETY THE CLOWN";
	arr_enemy[enemy.clown4, character.sprite] = spr_clown4;
	arr_enemy[enemy.clown4, character.damage] = 15;
	arr_enemy[enemy.clown4, character.hp] = 50;
	arr_enemy[enemy.clown4, character.defense] = 0;
	
	arr_enemy[enemy.clown4, character.skill_1] = normal.phish;
	arr_enemy[enemy.clown4, character.skill_2] = -1;
	arr_enemy[enemy.clown4, character.skill_3] = -1;
	arr_enemy[enemy.clown4, character.skill_4] = -1;
	
	arr_enemy[enemy.clown4, character.text_1] = "MARKETY THE CLOWN IS HERE TO SELL YOU SOME LAUGHS!";
	arr_enemy[enemy.clown4, character.text_2] = "MARKETY WANTS TO TRADEMARK CLOWN EMOTES! :o)";
	arr_enemy[enemy.clown4, character.text_3] = "MARKETY THE CLOWN WANTS TO MAKE A TV COMMERCIAL ABOUT YOUR MATRESS";
	
	arr_enemy[enemy.clown4, character.special] = normal.phish;
	
	//MIMEY
	arr_enemy[enemy.clown5, character.name] = "MIMEY THE CLOWN";
	arr_enemy[enemy.clown5, character.sprite] = spr_clown5;
	arr_enemy[enemy.clown5, character.damage] = 20;
	arr_enemy[enemy.clown5, character.hp] = 50;
	arr_enemy[enemy.clown5, character.defense] = 0;
	
	arr_enemy[enemy.clown5, character.skill_1] = normal.pretend;
	arr_enemy[enemy.clown5, character.skill_2] = -1;
	arr_enemy[enemy.clown5, character.skill_3] = -1;
	arr_enemy[enemy.clown5, character.skill_4] = -1;
	
	arr_enemy[enemy.clown5, character.text_1] = "MIMEY THE CLOWN CAN'T TELL JOKES! ( HE'S A MIME )";
	arr_enemy[enemy.clown5, character.text_2] = "MIMEY THE CLOWN SAID";
	arr_enemy[enemy.clown5, character.text_3] = "MIMEY THE CLOWN BARELY QUALIFIES AS A CLOWN";
	
	arr_enemy[enemy.clown5, character.special] = normal.pretend;
	
	//SMOKEY
	arr_enemy[enemy.clown6, character.name] = "SMOKEY THE CLOWN";
	arr_enemy[enemy.clown6, character.sprite] = spr_clown6;
	arr_enemy[enemy.clown6, character.damage] = 15;
	arr_enemy[enemy.clown6, character.hp] = 50;
	arr_enemy[enemy.clown6, character.defense] = 0;
	
	arr_enemy[enemy.clown6, character.skill_1] = -1;
	arr_enemy[enemy.clown6, character.skill_2] = -1;
	arr_enemy[enemy.clown6, character.skill_3] = -1;
	arr_enemy[enemy.clown6, character.skill_4] = -1;
	
	arr_enemy[enemy.clown6, character.text_1] = "SMOKEY THE CLOWN IS HERE TO PROMOTE GOOD HEALTH!";
	arr_enemy[enemy.clown6, character.text_2] = "SMOKEY'S JOKES TAKE YOUR BREATH AWAY!";
	arr_enemy[enemy.clown6, character.text_3] = "SMOKEY THE CLOWN LOVES A GOOD SMOKE!";
	
	arr_enemy[enemy.clown6, character.special] = -1;
	
	//TALLY
	arr_enemy[enemy.clown7, character.name] = "TALLY THE CLOWN";
	arr_enemy[enemy.clown7, character.sprite] = spr_clown7;
	arr_enemy[enemy.clown7, character.damage] = 20;
	arr_enemy[enemy.clown7, character.hp] = 100;
	arr_enemy[enemy.clown7, character.defense] = 0;
	
	arr_enemy[enemy.clown7, character.skill_1] = -1;
	arr_enemy[enemy.clown7, character.skill_2] = -1;
	arr_enemy[enemy.clown7, character.skill_3] = -1;
	arr_enemy[enemy.clown7, character.skill_4] = -1;
	
	arr_enemy[enemy.clown7, character.text_1] = "TALLY THE CLOWN TOLD A JOKE, BUT YOU CAN'T HEAR IT FROM THERE!";
	arr_enemy[enemy.clown7, character.text_2] = "TALLY'S FACE IS A MISTERY!";
	arr_enemy[enemy.clown7, character.text_3] = "TAAAAAAAAAAAAAAAAAAAAAAAALL";
	
	arr_enemy[enemy.clown7, character.special] = -1;
	
	//PAPA SOULS
	arr_enemy[enemy.papa_soul, character.name] = "PAPA SOUL"
	arr_enemy[enemy.papa_soul, character.sprite] = spr_papa;
	arr_enemy[enemy.papa_soul, character.damage] = 15;
	arr_enemy[enemy.papa_soul, character.hp] = 300;
	arr_enemy[enemy.papa_soul, character.defense] = 0;
	
	arr_enemy[enemy.papa_soul, character.skill_1] = normal.soul_block;
	arr_enemy[enemy.papa_soul, character.skill_2] = normal.soul_munch;
	arr_enemy[enemy.papa_soul, character.skill_3] = normal.soul_steal;
	arr_enemy[enemy.papa_soul, character.skill_4] = normal.bite;
	
	arr_enemy[enemy.papa_soul, character.text_1] = "PAPA SOUL FEELS LIKE RIPPING YOUR SOUL OUT OF YOUR BODY";
	arr_enemy[enemy.papa_soul, character.text_2] = "PAPA SOUL WON'T LET YOU GET THROUGH!";
	arr_enemy[enemy.papa_soul, character.text_3] = "WAIT 'TILL YOUR PAPA GETS HOME...";
	
	arr_enemy[enemy.papa_soul, character.special] = -1;
	
	//ELECTROLOTL
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
	
	arr_enemy[enemy.michael, character.text_1] = "MICHAEL FEELS LIKE A SCREWING WITH YOUR SYSTEM!";
	arr_enemy[enemy.michael, character.text_2] = "MICHAEL DOESN'T LIKE SECURITY BREACHES";
	arr_enemy[enemy.michael, character.text_3] = "WHAT A NERD";
	
	arr_enemy[enemy.michael, character.special] = -1;
	
	//BABY COUNCIL
	arr_enemy[enemy.pillow_baby, character.name] = "PILLOW BABY"
	arr_enemy[enemy.pillow_baby, character.sprite] = spr_baby;
	arr_enemy[enemy.pillow_baby, character.damage] = 30;
	arr_enemy[enemy.pillow_baby, character.hp] = 30;
	arr_enemy[enemy.pillow_baby, character.defense] = 0;
	
	arr_enemy[enemy.pillow_baby, character.skill_1] = -1;
	arr_enemy[enemy.pillow_baby, character.skill_2] = -1;
	arr_enemy[enemy.pillow_baby, character.skill_3] = -1;
	arr_enemy[enemy.pillow_baby, character.skill_4] = -1;
	
	arr_enemy[enemy.pillow_baby, character.text_1] = "AGOOGOO";
	arr_enemy[enemy.pillow_baby, character.text_2] = "TAATA BOO GOO";
	arr_enemy[enemy.pillow_baby, character.text_3] = "BWEEH BOOBOO GOOGOO";
	
	arr_enemy[enemy.pillow_baby, character.special] = -1;
	
	//BOOKWORM
	arr_enemy[enemy.pillow_savvy, character.name] = "PILLOW BOOKWORM"
	arr_enemy[enemy.pillow_savvy, character.sprite] = spr_savvy;
	arr_enemy[enemy.pillow_savvy, character.damage] = 20;
	arr_enemy[enemy.pillow_savvy, character.hp] = 60;
	arr_enemy[enemy.pillow_savvy, character.defense] = -3;
	
	arr_enemy[enemy.pillow_savvy, character.skill_1] = -1;
	arr_enemy[enemy.pillow_savvy, character.skill_2] = -1;
	arr_enemy[enemy.pillow_savvy, character.skill_3] = -1;
	arr_enemy[enemy.pillow_savvy, character.skill_4] = -1;
	
	arr_enemy[enemy.pillow_savvy, character.text_1] = "BOOKWORM FEELS LIKE DEMONSTRATING HIS SUPERIORITY!";
	arr_enemy[enemy.pillow_savvy, character.text_2] = "COME ON DO IT OPEN A BOOK";
	arr_enemy[enemy.pillow_savvy, character.text_3] = "BOOKWORM LOOKS DOWN ON YOU";
	
	arr_enemy[enemy.pillow_savvy, character.special] = -1;
	
	//BABY COUNCIL
	arr_enemy[enemy.pillow_elder, character.name] = "PILLOW ELDER"
	arr_enemy[enemy.pillow_elder, character.sprite] = spr_old;
	arr_enemy[enemy.pillow_elder, character.damage] = 25;
	arr_enemy[enemy.pillow_elder, character.hp] = 40;
	arr_enemy[enemy.pillow_elder, character.defense] = 10;
	
	arr_enemy[enemy.pillow_elder, character.skill_1] = normal.nap;
	arr_enemy[enemy.pillow_elder, character.skill_2] = -1;
	arr_enemy[enemy.pillow_elder, character.skill_3] = -1;
	arr_enemy[enemy.pillow_elder, character.skill_4] = -1;
	
	arr_enemy[enemy.pillow_elder, character.text_1] = "PILLOW ELDER FEELS LIKE RETIRING";
	arr_enemy[enemy.pillow_elder, character.text_2] = "WHO AM I WHAT'S THIS";
	arr_enemy[enemy.pillow_elder, character.text_3] = "HUH??";
	
	arr_enemy[enemy.pillow_elder, character.special] = -1;
	
	//HEAD COUNCIL
	arr_enemy[enemy.head_council, character.name] = "HEAD COUNCIL"
	arr_enemy[enemy.head_council, character.sprite] = spr_head;
	arr_enemy[enemy.head_council, character.damage] = 20;
	arr_enemy[enemy.head_council, character.hp] = 100;
	arr_enemy[enemy.head_council, character.defense] = 0;
	
	arr_enemy[enemy.head_council, character.skill_1] = -1;
	arr_enemy[enemy.head_council, character.skill_2] = -1;
	arr_enemy[enemy.head_council, character.skill_3] = -1;
	arr_enemy[enemy.head_council, character.skill_4] = -1;
	
	arr_enemy[enemy.head_council, character.text_1] = "HEAD COUNCIL TELLS YOU TO MIND YOUR OWN BUSSINESS";
	arr_enemy[enemy.head_council, character.text_2] = "HEAD COUNCIL JUST GOT PROMOTED";
	arr_enemy[enemy.head_council, character.text_3] = "HEAD COUNCIL FEELS NOTHING";
	
	arr_enemy[enemy.head_council, character.special] = -1;
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
	arr_enemy[enemy.rat_king, character.hp] = 100;
	arr_enemy[enemy.rat_king, character.defense] = 0;
	
	arr_enemy[enemy.rat_king, character.skill_1] = -1;
	arr_enemy[enemy.rat_king, character.skill_2] = -1;
	arr_enemy[enemy.rat_king, character.skill_3] = -1;
	arr_enemy[enemy.rat_king, character.skill_4] = -1;
	
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
	
	arr_stageEnemies[stage.incinerator, 0] = enemy.feudent;
	arr_stageEnemies[stage.incinerator, 1] = enemy.smokey;
	arr_stageEnemies[stage.incinerator, 2] = enemy.guard;
	
	arr_stageEnemies[stage.sewer, 0] = enemy.skelly;
	arr_stageEnemies[stage.sewer, 1] = enemy.plumber;
	arr_stageEnemies[stage.sewer, 2] = enemy.toothfrog;
	
	arr_stageEnemies[stage.circus, 0] = enemy.clown;
	arr_stageEnemies[stage.circus, 1] = enemy.ghost;
	arr_stageEnemies[stage.circus, 2] = enemy.mime;
	
	arr_stageEnemies[stage.shaft, 0] = enemy.muncher;
	arr_stageEnemies[stage.shaft, 1] = enemy.eraser;
	arr_stageEnemies[stage.shaft, 2] = enemy.thief;
	
	arr_stageEnemies[stage.cloud, 0] = enemy.outlet;
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
	arr_stageEnemies[stage.council, 2] = enemy.pillow_savvy;
	
	arr_stageEnemies[stage.fridge, 0] = enemy.cat;
	arr_stageEnemies[stage.fridge, 1] = enemy.skimo;
	arr_stageEnemies[stage.fridge, 2] = enemy.ice_cube;
	
	arr_bossList[stage.city] = enemy.rat_king;
	arr_bossList[stage.tunnel] = enemy.cerberus;
	arr_bossList[stage.lemon_stand] = enemy.kid;
	arr_bossList[stage.shortcut] = enemy.mega_bat;
	arr_bossList[stage.incinerator] = enemy.queen;
	arr_bossList[stage.sewer] = enemy.slug;
	arr_bossList[stage.circus] = enemy.clown_car;
	arr_bossList[stage.shaft] = enemy.papa_soul;
	arr_bossList[stage.ashtray] = enemy.omar;
	arr_bossList[stage.cloud] = enemy.electrolotl;
	arr_bossList[stage.breach] = enemy.michael;
	arr_bossList[stage.strip] = enemy.tito;
	arr_bossList[stage.council] = enemy.head_council;
	arr_bossList[stage.fridge] = enemy.eggplant;
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
		
		/*st_skillUses[0] = ini_read_real("skillUses", "1", arr_skill[st_skills[0], skills.uses]);
		st_skillUses[1] = ini_read_real("skillUses", "2", arr_skill[st_skills[1], skills.uses]);
		st_skillUses[2] = ini_read_real("skillUses", "3", arr_skill[st_skills[2], skills.uses]);
		st_skillUses[3] = ini_read_real("skillUses", "4", arr_skill[st_skills[3], skills.uses]);*/
		
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