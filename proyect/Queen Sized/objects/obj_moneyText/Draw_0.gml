draw_set_font(global.invertedFont)
draw_set_halign(fa_center)
draw_set_color(c_white);
draw_text(x, y, string_upper("MONEY:" + string(global.money)));

if(instance_exists(obj_shop))
{
	draw_text(x, y+40, "HP: " +string(obj_player.hp)+"/"+string(obj_player.maxHp)); //Tell me how much life do i have
	
	if(obj_shop.canChangeText > 0) //COST of stuff
	{
		if(discount){draw_set_color(c_lime)}
			draw_text(x, room_height-20, "COST: " +string(costDisplay));
		draw_set_color(c_white);
	}
	
};