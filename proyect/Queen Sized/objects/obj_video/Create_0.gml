var _vid = "vid_pillow.mp4"

switch(global.player)
{
	case enemy.pillow: _vid = "vid_pillow.mp4"
	break;
	
	case enemy.rat_king: _vid = "vid_rk.mp4"
	break;
	
	case enemy.eggplant: _vid = "vid_jean.mp4"
	break;
	
	case enemy.cookie: _vid = "vid_cookie.mp4"
	break;
	
	case enemy.phish: _vid = "vid_phish.mp4"
	break;
	
	default: instance_destroy();
	break;
};

video = video_open(_vid);
video_enable_loop(false);