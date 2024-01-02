/// @description Draw!
draw_self();

var val = 2;
 
if(var_rechargeable) and (global.player!= enemy.phish)
{
	drawRecharge(obj_player.st_skillRecharge[val], false);
}
else if(global.player = enemy.phish)
{
	var _skill = obj_player.st_skills[2];
	if(_skill != -1)
	{
		drawPrice(obj_player.arr_price[_skill])
	};
}