hp = clamp(hp, 0, maxHp)
if(hp > 0)
{
	draw_healthBar(x + healthbarDisplace, 120, hp, maxHp);
};

draw_self();
