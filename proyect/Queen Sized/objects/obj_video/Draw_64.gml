var _videoData = video_draw();
var _videoStatus = _videoData[0];
if(_videoStatus == 0)
{
	draw_surface(_videoData[1], 0, 0);
};

if(mouse_check_button(mb_left)) or (room != rm_newUnlocks) or (video_get_position() >= video_get_duration())
{
	video_close();
	
	if(!global.newUnlocks)
	{
		alarm[0] = 20;
	};
};