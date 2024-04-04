atkangle = point_direction(x,y,mouse_x,mouse_y)


image_xscale = 5

if(objPlayer.comboCooldown > 60)
{
	if(atkangle < 90 || atkangle > 270)
	{
		image_yscale = 5
	}
	else
	{
		image_yscale = -5
	}
	objPlayer.comboCooldown = 0;
}
else
{
	if(atkangle < 90 || atkangle > 270)
	{
		image_yscale = -5
	}
	else
	{
		image_yscale = 5
	}
	
}


image_angle = atkangle
image_speed = 1.5

alarm[0] = atime
alarm[1] = 8