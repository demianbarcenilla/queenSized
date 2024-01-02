draw_self()

//health

var _xdisplace = 20, _ydisplace = 40;
if(target = obj_player)
{
	draw_set_halign(fa_left);
}
else if(target = obj_enemy)
{
	_xdisplace *= -1;
	draw_set_halign(fa_right);
};


draw_set_font(global.invertedFont)
draw_set_color(c_white);

if(place_meeting(x, y, obj_mouse))
{
	switch(image_index)
	{
		case 0: //HP
			draw_text(x +_xdisplace, 120+5, string(target.hp) + "/" + string(target.maxHp));
		break;
	
		case 1:	//DMG
			//Colors
			if(target.tempDmg != 0)
			{
				if(target.tempDmg > 0){draw_set_color(c_lime)}
				else{draw_set_color(c_red)};
			}
			else
			{
				draw_set_color(c_white);
			};
			
			//Text
			if(target.tempDmg != 0) and (target != obj_enemy)
			{
				var _tempString = statText(target.st_damage, target.tempDmg);
				draw_text(x +_xdisplace, 120 +5+ _ydisplace, _tempString)
			}
			else
			{
				
				draw_text(x +_xdisplace, 120 +5+ _ydisplace, string(target.st_damage + target.tempDmg));
			};
			
			draw_set_color(c_white);
		break;
	
		case 2: //DEF
		
			//Colors
			if(target.arr_status[status.rotten])
			{
				draw_set_color(c_red);
			}
			else
			{
				if(target.tempDef != 0)
				{
					if(target.tempDef > 0){draw_set_color(c_lime)}
					else{draw_set_color(c_red)};
				}
				else
				{
					draw_set_color(c_white);
				}
			}
			
			var _tempString = "";
			//Text
			if(target.arr_status[status.rotten])
			{
				_tempString = string(min(target.st_defense + target.tempDef, 0));
				draw_text(x +_xdisplace, 120 +5+_ydisplace*2, _tempString);
			}
			
			else if(target.tempDef != 0) and (target != obj_enemy)
			{
				_tempString = statText(target.st_defense, target.tempDef);
				draw_text(x +_xdisplace, 120 +5+_ydisplace*2, _tempString);
			}
			else
			{
				draw_text(x +_xdisplace, 120 +5+_ydisplace*2, string(target.st_defense + target.tempDef));
			};
			
			draw_set_color(c_white);
		break;
	};
};