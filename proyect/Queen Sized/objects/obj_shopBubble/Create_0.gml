image_speed = 0;

var _hpDoubled = obj_player.maxHp >= 200 ? true : false,
	_dmgDoubled = obj_player.st_damage >= 35,
	_pick;

if(_hpDoubled) and (!_dmgDoubled)
{
	_pick = choose(0, 2, 3); //exclude hp from the equation if you got double your hp
};

else if(_hpDoubled) and (_dmgDoubled)
{
	_pick = choose(0, 1, 2); //exclude dmg from the equation if you got 1.5 your dmg
};

var_holding = irandom_range(0, 3); //0=regen, 1= health, 2=def, 3=dmg



image_index = var_holding;

//wave
t = 0;
inc = choose(3, -3); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

//corresponding text
text = "";

discount = false;
if(global.player = enemy.phish) //ALLWAYS discount with phish
{
	discount = true;
}
ini_open("unlocks.ini") //Ocasional discount
	if(ini_read_real("unlocks", "14", false))
	{
		var r = irandom_range(0, 50);
		if(r > 25)
		{
			discount = true;
		};
	};
ini_close()
cost = 10;
switch(var_holding)
{
	case 0:
		text = "REGENERATES 1/4 OF YOUR HEALTH";
		cost = 5 + 10 * global.mult;
	break;
		
	case 1:
		text = "INCREASES YOUR TOTAL HP BY 25"
		cost = 15 + (15 * global.mult);
	break;
		
	case 2:
		text = "INCREASES YOUR DEFENSE BY 2"
		cost = 10 + (10 * global.mult);
	break;
	
	case 3:
		text = "INCREASES YOUR DAMAGE BY 2"
		cost = 15 +(10 * global.mult);
	break;
};

if(discount)
{
	alarm[0] = 3;
};
var_soundPlay = snd_heal;
checked = false;