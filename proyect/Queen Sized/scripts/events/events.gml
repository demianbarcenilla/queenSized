function eventValues()
{
	//Rat Flute Event
	arr_event[0, 0] = normal.cheese;//Left Choice
	arr_event[0, 1] = function(){ //Consecuences of event
		with(obj_player)
		{
			var hasCheese = false;
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.cheese)
				{
					st_skills[i] = normal.rat_flute;
					st_skillUses[i] = arr_skill[normal.rat_flute, skills.uses];
					hasCheese = true
					break;
				}
				else if(st_skills[i] = normal.rat_flute)
				{
					break;
				};
			};
			
			if(!hasCheese)
			{
				for(i=0; i < 4; i++)
				{
					if(st_skills[i] = -1)
					{
						st_skills[i] = normal.rat_flute;
						st_skillUses[i] = arr_skill[normal.rat_flute, skills.uses];
						break;
					};
				};
			}
		}
	};
	arr_event[0, 2] = "RAT WANTS SOME OF YOUR CHEESE. GIVE CHEESE?"//Text
	arr_event[0, 3] = "RAT LEAVES YOU A PRESENT IN RETURN!"//Text for when you accept
	arr_event[0, 4] = "RAT GOT SAD..."//Text for when you decline
	
	//Rat King Event
	arr_event[1, 0] = normal.rat_flute;//Left Choice
	arr_event[1, 1] = function(){ //Consecuences of event
		
		//UNLOCK RAT KING
		var _newUnlock = false;
		ini_open("unlocks.ini")
			if(ini_read_real("unlocks", "6", false) = false)
			{
				_newUnlock = true;
				instance_create_depth(0, 0, depth, obj_newUnlockBattle);
			}
			ini_write_real("unlocks", "6", true);
		ini_close();
		
		with(obj_player)
		{
			for(i=0; i < 4; i++)
			{
				if(st_skills[i] = normal.rat_flute)
				{
					st_skills[i] = -1;
					st_skillUses[i] = -1;
					break;
				};
			};
		}
		
		global.battleCount = 0;
		global.turn = 0;
		
		global.stage = stage.sewer;
		
		obj_player.hp = obj_player.maxHp;
		if(global.player = enemy.tito) or (global.player = enemy.bondiola)
		{
			if(obj_player.playerSelected = enemy.tito)
			{
				ini_open("tempBONDIOLA.ini")
			}
			else
			{
				ini_open("tempTITO.ini")
			};
				ini_write_real("stats", "hp", maxHp);
				
			ini_close();
		};
	
	};
	arr_event[1, 2] = "RAT KING ASKS FOR THE RAT FLUTE, HE WILL TAKE YOU SOMEWHERE IN RETURN!"//Text
	arr_event[1, 3] = "RAT KING TAKES YOU TO A DEEPER PLACE"//Text for when you accept
	arr_event[1, 4] = "RAT KING SAYS YOU'RE MAKING A MISTAKE!"//Text for when you decline
	
	//Bitter Lemonade Event
	arr_event[2, 0] = normal.wait;//Left Choice
	arr_event[2, 1] = function(){ //Consecuences of event
		global.battleCount = 0;
		global.turn = 0;
		
		global.stage = stage.fridge;
		
		obj_player.hp = obj_player.maxHp;
		
		if(global.player = enemy.tito) or (global.player = enemy.bondiola)
		{
			if(obj_player.playerSelected = enemy.tito)
			{
				ini_open("tempBONDIOLA.ini")
			}
			else
			{
				ini_open("tempTITO.ini")
			};
				ini_write_real("stats", "hp", maxHp);
				
			ini_close();
		};
	
	};
	arr_event[2, 2] = "LEMONADE KID IS FEELING BITTER AND WANTS TO GO SOMEWHERE ELSE TO COOL OFF"//Text
	arr_event[2, 3] = "LEMONADE KID TAKES YOU TO A COOLER PLACE!"//Text for when you accept
	arr_event[2, 4] = "LEMONADE KID WILL CONTINUE TO BE BITTER"//Text for when you decline
};

function eventStart(_value)
{
	if(instance_exists(obj_stats))
	{
		obj_stats.alarm[0] = 1;
	};
	
	if(obj_enemy.playerSelected = enemy.rat) and (_value = normal.cheese) //RAT FLUTE EVENT
	{
		var _flute = false;
		for(i=0; i < 4; i++)
		{
			if(st_skills[i] = normal.rat_flute)
			{
				_flute = true;
				break;
			};
		};
		
		if(!_flute)
		{
			global.event = true;
			global.eventType = 0;
			nextTurn();
		};
	}
	else if(obj_enemy.playerSelected = enemy.rat_king) and (_value = normal.rat_flute) //KING+FLUTE EVENT
	{
		global.event = true;
		global.eventType = 1;
		nextTurn();
	};
	else if(obj_enemy.playerSelected = enemy.kid) and (_value = normal.bitter) //BITTER LEMONADE KID EVENT
	{
		global.event = true;
		global.eventType = 2;
		nextTurn();
	};
};

function chatValues()
{
	ini_open("unlocks.ini");
		var _gameFinished = ini_read_real("other","timesFinished", 0) > 0,
			_timesFinished = ini_read_real("other","timesFinished", 0);
	ini_close();
	//PILLOW DIALOGUES
	if(obj_player.playerSelected = enemy.pillow)
	{
		if(_gameFinished)
		{
			//Rat Queen
			arr_chat[0, 0] = "Welcome again Ms. PILLOW!";
			arr_chat[0, 1] = "DO YOU WISH TO FIGHT?";
			
			//Queen
			arr_chat[1, 0] = "YOU AGAIN?";
			arr_chat[1, 1] = "YOU DIDN'T LEARN THE LESSON DID YOU?";
			arr_chat[1, 2] = "WE'VE BEEN OVER THIS OVER AND OVER AGAIN HUN!";
			arr_chat[1, 3] = "IT DOESN'T MATTER IF YOU DEFEAT ME LIKE, " + string(_timesFinished) + " TIMES OR SO";
			arr_chat[1, 4] = "THIS WILL ALLWAYS END WITH ME GETTING UP AND KICKING YOU OUT OF MY CASTLE";
			arr_chat[1, 5] = "SO YEAH, I'LL LET YOU START YOUR LITTLE ATTEMPT TO DETHRONE ME";
			
			//Queen (Flaming)
			arr_chat[2, 0] = "AWW YOU'VE BEEN PLAYING WITH THE RATS AGAIN HAVEN'T YOU?"
			arr_chat[2, 1] = "BUT THIS WON'T END LIKE IT ENDED LAST TIME NO, NOW IT'S GONNA CHANGE"
			arr_chat[2, 2] = "HAHAHAH! POOR BABY"
		};
		else
		{
			//Rat Queen
			arr_chat[0, 0] = "Welcome to ratlantis! We like to fight for fun";
			arr_chat[0, 1] = "If you beat me in a battle i will enhance your special skill with my rat powers";
			arr_chat[0, 2] = "If you lose i steal ALL OF your belongings. Deal?";
			
			//Queen
			arr_chat[1, 0] = "OH MY GOD, YOU REALLY CAME!";
			arr_chat[1, 1] = "I COULDN'T BELIEVE IT WHEN I HEARD A TALKING PILLOW HAD THE LAST MATRESS IN THE WORLD";
			arr_chat[1, 2] = "BUT YOU ARE HERE! YOU BRANG IT RIGHT TO ME!";
			arr_chat[1, 3] = "DID YOU REALLY BUY THE WHOLE ''MATRESS IS SO BIG IT CAN'T FIT IN THE INCINERATOR'' STORY?";
			arr_chat[1, 4] = "THAT'S LITERALLY WHAT THE INCINERATOR IS FOR!";
			arr_chat[1, 5] = "SO YEAH, I'LL LET YOU START YOUR LITTLE ATTEMPT TO DETHRONE ME";
			
			arr_chat[2, 0] = "AWW DID YOU GET YOUR LITTLE SKILLS ALL FIRED UP?"
			arr_chat[2, 1] = "LIKE YOU'RE UNIQUE!"
			arr_chat[2, 2] = "JUST GIVE UP, I'VE BEEN THROUGH THIS ENOUGH TIMES TO KNOW HOW IT ENDS"
		};
	};
	
	//RAT KING DIALOGUES
	else if(obj_player.playerSelected = enemy.rat_king)
	{
		if(_gameFinished)
		{
			//Rat Queen
			arr_chat[0, 0] = "YOU AGAIN!?";
			arr_chat[0, 1] = "COME ON MAN JUST GO AWAY";
			
			//Queen
			arr_chat[1, 0] = "YOU AGAIN?";
			arr_chat[1, 1] = "YOU DIDN'T LEARN THE LESSON DID YOU?";
			arr_chat[1, 2] = "WE'VE BEEN OVER THIS OVER AND OVER AGAIN HUN!";
			arr_chat[1, 3] = "IT DOESN'T MATTER IF YOU DEFEAT ME LIKE, " + string(_timesFinished) + " TIMES OR SO";
			arr_chat[1, 4] = "THIS WILL ALLWAYS END WITH ME GETTING UP AND KICKING YOU OUT OF MY CASTLE";
			arr_chat[1, 5] = "SO YEAH, I'LL LET YOU START YOUR LITTLE ATTEMPT TO DETHRONE ME";
			
			//Flaming Queen
			arr_chat[2, 0] = "AWW YOU GOT THE PWEETY COLORS IN YOUR PWEETY LITTLE SKILLS?"
			arr_chat[2, 1] = "THAT'S SO CUTE! IT GIVES YOU ALMOST ENOUGH POWER TO LICK MY SHOES!"
			arr_chat[2, 2] = "DAMN... KIDS THESE DAYS"
		};
		else
		{
			//Rat Queen
			arr_chat[0, 0] = "Welcome to ratlantis! We like to...";
			arr_chat[0, 1] = "UH... HANG ON...";
			arr_chat[0, 2] = "AREN'T YOU THAT FAKE RAT KING FROM THE CITY?";	
			
			//Queen Dialogue
			arr_chat[1, 0] = "OH MY GOD, YOU REALLY CAME!";
			arr_chat[1, 1] = "AND I THOUGHT RATS WERE SMART. AS IF!";
			arr_chat[1, 2] = "I GUESS YOU'RE TIRED OF BEING A LIAR, A CROOK";
			arr_chat[1, 3] = "YOU WANT MY SWEET, SHINY CROWN DON'T YOU?";
			arr_chat[1, 4] = "...";
			arr_chat[1, 5] = "I GUESS WE'RE FIGHTING THEN!";
		};
	};
	else
	{
		//Rat Queen
		arr_chat[0, 0] = "Welcome to ratlantis! We like to fight for fun";
		arr_chat[0, 1] = "If you beat me in a battle i will enhance your special skill with my rat powers";
		arr_chat[0, 2] = "If you lose i steal your cheese. Deal?"
		
		//Normal Queen
		arr_chat[1, 0] = "OH MY GOD, YOU REALLY CAME!";
		arr_chat[1, 1] = "I COULDN'T BELIEVE IT WHEN I HEARD A TALKING PILLOW HAD THE LAST MATRESS IN THE WORLD";
		arr_chat[1, 2] = "BUT YOU ARE HERE! YOU BRANG IT RIGHT TO ME!";
		arr_chat[1, 3] = "DID YOU REALLY BUY THE WHOLE ''MATRESS IS SO BIG IT CAN'T FIT IN THE INCINERATOR'' STORY?";
		arr_chat[1, 4] = "THAT'S LITERALLY WHAT THE INCINERATOR IS FOR!";
		arr_chat[1, 5] = "SO YEAH, I'LL LET YOU START YOUR LITTLE ATTEMPT TO DETHRONE ME";
		
		//Flaming Queen
		arr_chat[2, 0] = "AWW DID YOU GET YOUR LITTLE SKILLS ALL FIRED UP?"
		arr_chat[2, 1] = "LIKE YOU'RE UNIQUE!"
		arr_chat[2, 2] = "JUST GIVE UP, I'VE BEEN THROUGH THIS ENOUGH TIMES TO KNOW HOW IT ENDS"
	}
};

function execute_chat()
{
	chatValues(); //REFRESH CHAT VALUES JUST IN CASE
	if(global.turn = 0)
	{
		if(obj_enemy.playerSelected = enemy.rat_queen)
		{
			global.chat = true;
			global.primaryUI = false;
			obj_player.var_specialPlus = true;
			
			global.queenType = 1;
			chatFunctions(0);
		};
		else if(obj_enemy.playerSelected = enemy.queen)
		{
			global.chat = true;
			global.primaryUI = false;
			if(global.queenType = 0){chatFunctions(1)};
			else if(global.queenType = 1){ chatFunctions(2)};
		};
	};
};

function chatFunctions(_chat)
{
	if(instance_exists(obj_uiAttack))
	{
		instance_destroy(obj_uiAttack);
		instance_destroy(obj_uiSkills);
		instance_destroy(obj_uiGuard);
		instance_destroy(obj_uiSpecial);
	};
	if(instance_exists(obj_back))
	{
		instance_destroy(obj_back);
	};
	obj_control.music = mus_silent;
	//Create YAY!
	if(!instance_exists(obj_uiYay))
	{
		instance_create_depth(190, 240, depth, obj_uiYay);
		obj_uiYay.image_index = normal.wait+1;
	};
	
	global.text = arr_chat[_chat, var_chatNumber];
	
	if(mouse_check_button_pressed(mb_left))
	{
		if(obj_uiYay.selected)
		{
			if(var_chatNumber < array_length(arr_chat[_chat]) -1)
			{
				var_chatNumber ++;
				global.text = arr_chat[_chat, var_chatNumber];
				
				global.turn--;
				
				obj_uiYay.y += 40;
				audio_play_sound(snd_select, 0, false);
			};
			
			else
			{
				global.chat = false;
				global.primaryUI = true;
			
				resetToPrimary();
				global.turn = 1;
				
				if(global.queenType = 1) and (obj_enemy.playerSelected = enemy.queen)
				{
					with(obj_enemy) //MORPH
					{
						arr_enemy[enemy.queen, character.sprite] = spr_queen2
						sprite_index = arr_enemy[enemy.queen, character.sprite]
						
						screenshake(10, 10, .1)
						audio_play_sound(snd_queenFire, 1, false);
						repeat(50)
						{
							instance_create_depth(x, y-40, -1000, obj_smokeParts)
						}
					};
				}
			};
			
			nextTurn();
		};
	};
};

function execute_event(_value)
{
	if(instance_exists(obj_uiAttack))
	{
		instance_destroy(obj_uiAttack);
		instance_destroy(obj_uiSkills);
		instance_destroy(obj_uiGuard);
		instance_destroy(obj_uiSpecial);
	};
	
	if(instance_exists(obj_back))
	{
		instance_destroy(obj_back);
	};
	
	if(!instance_exists(obj_uiChoice))
	{
		instance_create_depth(140, 240, depth, obj_uiChoice);
		instance_create_depth(240, 240, depth, obj_uiChoice2);
		
		//obj_uiChoice.image_index = normal.wait+1;
		obj_uiChoice.image_index = arr_event[global.eventType, 0]+1;
		global.text = arr_event[global.eventType, 2];
	};
	
	if(mouse_check_button_pressed(mb_left))
	{
		if(obj_uiChoice.selected)
		{
			global.event = false;
			global.primaryUI = true;
			
			arr_event[global.eventType, 1]();
			global.text = arr_event[global.eventType, 3];
			obj_enemy.newX = 540;
			obj_enemy.alarm[1] = 59;
			
			global.enemyPrev = playerSelected;
			
			resetToPrimary();
		};
		else if(obj_uiChoice2.selected)
		{
			global.event = false;
			global.primaryUI = true;
			
			global.text = arr_event[global.eventType, 4];
			resetToPrimary();
		};
	};
	
};