draw_self();
var _rechargeX = x+80, _displace = 7;
var _subimage  = obj_player.st_specialRecharge > 0 ? 0 : 1;

draw_set_color(c_white)

draw_sprite(spr_rechargeTime, _subimage, _rechargeX, y)

if(_subimage = 0)
{
	draw_text(_rechargeX, y-_displace, string(obj_player.st_specialRecharge))
};