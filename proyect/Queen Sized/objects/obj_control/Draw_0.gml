if(room = rm_game)
{
	if(instance_exists(obj_shop))
	{
		draw_sprite(spr_shop, global.stage, 0, 0);
	};
	else
	{
		draw_sprite(spr_backgrounds, global.stage, 0 , 0);	
	};
	
};

gpu_set_blendmode_ext(bm_dest_color, bm_zero);
draw_set_color(arr_colors[global.color]);
	draw_rectangle(-2, -2, room_width+2, room_height+2, false);
draw_set_color(c_white);
gpu_set_blendmode(bm_normal);