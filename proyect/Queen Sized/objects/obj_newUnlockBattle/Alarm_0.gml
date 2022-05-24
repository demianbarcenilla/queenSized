screenshake(5, 10, .2);
instance_destroy();

audio_play_sound(snd_unlock, 0, false)

repeat(20)
{
	instance_create_depth(x, y, depth, obj_confetti)
}
