if(!objPlayer.bashing)
{
	atkangle = objPointer.direction
	image_angle = atkangle
}

if(instance_exists(objPlayer))
	{
	x = objPointer.x + (dcos(atkangle) * 72)
	y = objPointer.y - (dsin(atkangle) * 72)
	}
	
if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = 1.5
	}
	else
	{
		image_yscale = -1.5
	}

if(!objPlayer.bashing)
{
	instance_destroy()
}