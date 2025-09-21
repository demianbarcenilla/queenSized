if(!instance_exists(obj_player))
{
	instance_destroy()
}

angle += 2;

if(angle > 360)
{
	angle = 0
};

xx = lengthdir_x(64, angle);
yy = lengthdir_y(32, angle);

zz = sin(degtorad(angle));

image_xscale = clamp(zz, .2, 1);
image_yscale = image_xscale;

depth = obj_player.depth -(zz*10);

x = xstart + xx;
y = ystart + yy;