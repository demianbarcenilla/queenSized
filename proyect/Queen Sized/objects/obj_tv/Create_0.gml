image_speed = 0;
image_index = 0;
selected = false;
text = "Enhances your Special Skill... At a COST!"
switch(global.player)
{
	case enemy.pillow: 
		text = "HEAL+! ( HEALS LESS HP BUT APPLIES REGEN )"
	break;
	
	case enemy.rat_king:
		text = "STEAL+! ( STEALS AN ENHANCED ENEMY SKILL )"
	break;
	
	case enemy.eggplant:
		text = "SNEEZE+! ( DEALS FULL DAMAGE INSTEAD OF ONLY HALF )"
	break;
	
	default:
		text = "Enhances your Special Skill... At a COST!"
	break;
}
