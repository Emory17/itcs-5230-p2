if(instance_exists(attachedToo))
{
	if(attachedToo.firing)
	{
		instance_create_depth(x,y,-1,objWarlockFireball)
		audio_play_sound(warlockFire, 1, false)
	}
}
	

