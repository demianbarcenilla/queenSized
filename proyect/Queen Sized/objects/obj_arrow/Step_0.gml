t = (t + inc) mod 360;
shift = amp * dsin(t);
y = ystart + shift; //vertical wave motion

if(mouse_check_button_pressed(mb_left)) and (place_meeting(x, y, obj_mouse))
{
	with(obj_player)
	{
		initializeSkills(_self, _other);
	};
	if(global.stage = stage.ratlantis /*or global.stage = stage.cloud*/) and (global.battleCount % 10 = 0)
	{
		global.battleCount = 0;
		global.stage = stage.incinerator
		global.mult++;
	}
	else if(global.stage = stage.fridge) and (global.battleCount % 10 = 0)
	{
		global.battleCount = 0;
		global.stage = stage.shortcut
		global.mult++;
	}
	else if(global.battleCount % 10 = 0)//Change stages after shopping
	{
		global.stage ++;
		global.mult++;
	};
	
	var _newEnemy = instance_create_depth(obj_shop.xx, obj_shop.yy, obj_shop._depth, obj_enemy);
		_newEnemy.newX = 400;
	
	instance_activate_all();
	if(instance_exists(obj_stats))
	{
		obj_stats.alarm[0] = 1;
	};
	
	screenshake(10, 5, .05);

	with(obj_shop)
	{
		instance_destroy();
	};
	
	instance_destroy();
};