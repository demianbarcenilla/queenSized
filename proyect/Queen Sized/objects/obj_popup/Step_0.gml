if(place_meeting(x, y, obj_mouse)) and (mouse_check_button_pressed(mb_left))
{
	var _action = irandom_range(0, 5)
	switch (_action)
	{
		case 0:
			createdBy.tempDmg += 3;
			audio_play_sound(snd_defenseUp, 0, 0)
		break;
			
		case 1:
			createdBy.tempDef += 15;
			audio_play_sound(snd_defenseUp, 0, 0)
		break;
			
		case 2:
			createdBy.hp += 30;
			audio_play_sound(snd_heal, 0, 0)
		break;
		
		case 3:
			_other.tempDmg -= 3;
			audio_play_sound(snd_defenseDown, 0, 0)
		break;
			
		case 4:
			_other.tempDef -= 15;
			audio_play_sound(snd_defenseDown, 0, 0)
		break;
			
		case 5:
			_other.hp -= 30;
			audio_play_sound(snd_hit, 0, 0)
		break;
	}
	
	var _obj = _other = obj_player ? obj_glass : obj_confetti;
	repeat(5)
	{
		instance_create_depth(x, y, depth, _obj)
	};
	instance_destroy();
}