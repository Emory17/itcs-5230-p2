volleyCount++

if(volleyCount > 3)
	instance_destroy()
else
{
	audio_play_sound(playerIcicleLaunch,1,false);
	instance_create_depth(x, y, 1, objIcicle, {direction: icicleAngle - 15})
	instance_create_depth(x, y, 1, objIcicle, {direction: icicleAngle})
	instance_create_depth(x, y, 1, objIcicle, {direction: icicleAngle + 15})
	alarm[0] = volleyDelay
}
