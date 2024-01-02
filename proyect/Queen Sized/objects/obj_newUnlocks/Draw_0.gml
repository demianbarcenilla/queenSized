draw_set_font(global.invertedFont);
draw_set_color(c_white);
var _text = "YOU FINISHED THE GAME! STOP COMING BACK!";
if(global.newUnlocks)
{
	_text = "YOU UNLOCKED NEW STUFF!";
};

if(instance_exists(obj_video))
{
	_text = "";
};

draw_text(room_width/2, room_height/2, _text);