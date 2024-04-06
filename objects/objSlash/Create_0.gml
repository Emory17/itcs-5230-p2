atkangle = point_direction(x,y,mouse_x,mouse_y)
knockbackAmt = 6 * global.knockbackMultiplier


if(global.primaryUpgrade1 = true)
	sizeModifier = 1
else
	sizeModifier = 0


image_xscale = 2.5 + sizeModifier

if(objPlayer.comboCooldown > 60 || objPlayer.comboCooldown = 0)
{
	if(atkangle < 90 || atkangle > 270)
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
	if(atkangle < 90 || atkangle > 270)
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