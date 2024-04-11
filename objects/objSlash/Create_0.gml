atkangle = objPointer.direction




sizeModifier = 0


image_xscale = 2.5 + sizeModifier

if(objPlayer.comboCooldown > 60 || objPlayer.comboCooldown = 0)
{
	if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = 3 + sizeModifier
	}
	else
	{
		image_yscale = -3 - sizeModifier
	}
	objPlayer.comboCooldown = 1;
}
else
{
	if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = -3 - sizeModifier
	}
	else
	{
		image_yscale = 3 + sizeModifier
	}
	objPlayer.comboCooldown = 0;
}


image_angle = atkangle
image_speed = 1.5

alarm[0] = atime
alarm[1] = 5