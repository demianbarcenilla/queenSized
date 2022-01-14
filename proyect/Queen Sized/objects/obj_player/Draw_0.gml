/// @description Draw self and healthbar
if(!instance_exists(obj_shop))
{
	if(playerSelected = enemy.tito)
	{
		draw_sprite(spr_darkTB, 1, x -40, y-5)
	};
	else if(playerSelected = enemy.bondiola)
	{
		draw_sprite(spr_darkTB, 0, x -40, y-5)
	};
	
	hp = clamp(hp, 0, maxHp);
	
	draw_healthBar(x + healthbarDisplace, 120, hp, maxHp);
	draw_self();
};