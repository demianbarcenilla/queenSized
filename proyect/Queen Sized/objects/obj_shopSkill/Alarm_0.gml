if(holdingPlus){text = arr_skill[var_holding, skills.descPlus]}
else{text = arr_skill[var_holding, skills.desc]};

cost = arr_skill[var_holding, skills.shop] + 25 * global.mult;

if(discount)
{
	cost = (arr_skill[var_holding, skills.shop] + 25 * global.mult)/2;
	cost = floor(cost);
}

image_speed = 0;
image_index = var_holding; //Display the corresponding image