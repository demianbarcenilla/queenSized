image_speed = 0;
image_index = 0;
selected = false;
text = "Enhances your Special Skill... At a COST!"
switch(global.player)
{
	case enemy.pillow: 
		text = "HEAL+! AT THE COST OF YOUR DEFENSE"
	break;
	
	case enemy.rat_king:
		text = "STEAL+! AT THE COST OF YOUR DAMAGE"
	break;
	
	default:
		text = "Enhances your Special Skill... At a COST!"
	break;
}
