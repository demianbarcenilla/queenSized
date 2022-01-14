function draw_healthBar(x, y, hp, maxHp){
	var w_margin = 7, h_margin = 7,
		w_hb = 18, h_hb = 96, //HealthBar Filler MAX width and height
		ammount = .1;
	
	draw_sprite(spr_lifeBar, 0, x, y);
	
	draw_set_color(c_black);
	draw_rectangle(
		x+w_margin, 
		y+h_margin+h_hb,
		x+w_margin+w_hb,
		y+h_margin+h_hb -min(((prevHp/maxHp)*h_hb), h_hb),//y+h_margin+h_hb -min(((hp/maxHp)*h_hb), h_hb),
		false
	);
	
	prevHp = lerp(prevHp, hp, ammount);
	return prevHp;
};

function setHp(_hp)
{
	hp = _hp;
	maxHp = hp;
	prevHp = hp;
};

function setHp_custom(_hp, _maxHp)
{
	hp = _hp
	
	maxHp = _maxHp
};