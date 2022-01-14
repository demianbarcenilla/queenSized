if(instance_exists(obj_optionsMenu))
{
	
	if(obj_sfx.selected = true)
	{
		global.text = obj_sfx.text;
	};
	else if(obj_sound.selected = true)
	{
		global.text = obj_sound.text;
	};
	else if(obj_fullScreen.selected = true)
	{
		global.text = obj_fullScreen.text;
	};
	else if(obj_backMenu.selected = true)
	{
		global.text = obj_backMenu.text;
	};
	else if(obj_colorPal.selected = true)
	{
		global.text = obj_colorPal.text;
	};
	else
	{
		global.text = "CHANGE THE GAME OPTIONS!";
	};
};

scribble("[wave]"+ string_upper(global.text) +"[/wave]")
.typewriter_in(2, 10)
.align(fa_center, fa_middle)
.animation_wave(1, 1, .5)
.wrap(440, 39, false)
.typewriter_sound(snd_text, 100, .5, 1.5)
.draw(xx, yy);

if(room = rm_game) and (!instance_exists(obj_shop)) and (global.stage != stage.incinerator)
{
	draw_set_font(global.invertedFont)
	draw_set_halign(fa_center)
	draw_set_color(c_white);
	draw_text(ROOMWIDTH+((room_width-ROOMWIDTH)/2), room_height-30, "NEW SHOP IN " +string(5 -(global.battleCount%5)));
};