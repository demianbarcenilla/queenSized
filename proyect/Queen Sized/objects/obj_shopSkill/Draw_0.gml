/// @description Discount
draw_self();
if(discount)
{
	cost = (arr_skill[var_holding, skills.shop] + (10 * global.mult))/2;
	cost = floor(cost);
	draw_sprite(spr_discount, 0, x-sprite_width/2, y+sprite_height/2);
};