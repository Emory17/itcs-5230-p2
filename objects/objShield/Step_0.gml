atkangle = objPointer.direction
image_angle = atkangle

if(objPlayer.shieldUp)
{
	visible = true
}
else
{
	visible = false
}


if(instance_exists(objPlayer))
	{
	x = objPointer.x + (dcos(atkangle) * 70)
	y = objPointer.y - (dsin(atkangle) * 70)
	}
	
if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = 1.5
	}
	else
	{
		image_yscale = -1.5
	}