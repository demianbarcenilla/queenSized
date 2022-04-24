#macro PINK make_color_rgb(255, 128, 128) 
#macro PURPLE make_color_rgb(146, 77, 249) 
#macro BLUE make_color_rgb(0, 128, 255) 
#macro ORANGE make_color_rgb(255, 100, 0) 
#macro RED make_color_rgb(255, 0, 0) 
#macro YELLOW make_color_rgb(255, 205, 89) 
#macro LIGHT_BLUE make_color_rgb(82, 186, 193) 
#macro GREEN make_color_rgb(109, 178, 6) 
#macro CYAN make_color_rgb(0, 128, 128) 
#macro GRAY make_color_rgb(128, 128, 128)

#macro ROOMWIDTH 460

color();
randomize();

//INTI ENUMS
initEnum();

//sets a cooldown for purchasing in the shops when it just spawns
global.canPurchase = false;

//Set font
scribble_font_add_from_sprite("spr_font", "ABCDEFGHIJKLMNOPQRSTUVWXYZÑ1234567890.,:!+-_/=$<()'?", 0, 4, true)
global.invertedFont = font_add_sprite_ext(fnt_generalWhite, "ABCDEFGHIJKLMNOPQRSTUVWXYZÑ1234567890.,:!+-_/=$<()'?", true, 1);

depth = 999;

global.enemyPrev = 0;

global.mult = 0;
global.event = false;
global.eventType = 0;

ini_open("unlocks.ini")
	global.timesFinished = ini_read_real("other", "timesFinished", 0);
ini_close()

global.newUnlocks = false;

//Set room up
instance_create_depth(x, y, 0, obj_mouse);
instance_create_depth(0, 0, depth, obj_setWindowPos);
instance_create_depth(x, y, 0, obj_pause);

//Current turn
global.turn = 0;

global.canAct = true;
global.battleCount = 0;

global.primaryUI = true;
global.bossFight = false;
global.stage = stage.city;

//Current Dialogue
global.text = "";
global.textPrev = global.text;
global.michaelMode = -1;
stopCinematics = 30;

//Screenshake
shaking = false;
shakeTime = 0;
shakeAmmount = 0;
shakeFade = .25;

music = mus_silent;
global.money = 0;


ini_open("options.ini");
	global.musVol = ini_read_real("volume", "mus", 1);
	global.sfxVol = ini_read_real("volume", "sfx", .5);
	global.color = ini_read_real("misc", "color", 0);
ini_close();

audio_group_load(ag_music);
audio_group_load(ag_sfx);

audio_group_set_gain(ag_music, global.musVol, 0);
audio_group_set_gain(ag_sfx, global.sfxVol, 0);

pause = false;

//wave
t = 0;
inc = 5; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 50; //pixels of peak oscillation
shift = 0;

anim_x[0]=0;
anim_x[1]=0;
var_calledNope = obj_player;
global.player = enemy.pillow;
