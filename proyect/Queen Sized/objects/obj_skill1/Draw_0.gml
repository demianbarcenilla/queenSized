/// @description Draw!
draw_self();

var val = 0, _dontShow = false;

//CONDITION: last use AND recharge time = 0
 if(obj_player.st_skillUses[val] = 1) and (obj_player.st_skillRecharge[val] = 0)
 {
	_dontShow = true;
 };
 
if(var_rechargeable) and (!_dontShow)
{
	drawRecharge(obj_player.st_skillRecharge[val]);
};