/// @description Particles
for(i=0; i <= 10; i++)
{
	if(arr_status[i]= true)
	{
		var _obj = instance_create_depth(x, y, depth-1, obj_statusFX);
		_obj.image_index = i;
	};
};