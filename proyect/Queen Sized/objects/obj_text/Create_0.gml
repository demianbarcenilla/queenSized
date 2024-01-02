/// @description vars
depth = -100;

xx = 230;
yy = 20;

i=0;

if(room = rm_intro) or (room = rm_outro)
{
	xx = room_width/2;
	yy = 260;
}
else if(room = rm_options) or (room = rm_characterSelect) or (obj_pause.pause = true)
{
	xx = room_width/2;
}
else
{
	xx = ROOMWIDTH/2;
};

canChangeText = true;
eventText = false; //like canChangeText, but for event text
var_text = global.text;