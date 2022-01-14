//Draw black side on the right
draw_set_color(c_black);
draw_rectangle(460, 0, room_width, room_height, false)//Black rectangle
	
if(!instance_exists(obj_shop))
{	
	var rectangleSizeX = abs(460 -room_width),
	rectangleSizeY = abs(0 -room_height);
	draw_sprite(spr_stage, global.stage, 460 +rectangleSizeX/2, 0+rectangleSizeY/2)
};

//Draw textline
draw_sprite(spr_textLine, 0, 0, 0);