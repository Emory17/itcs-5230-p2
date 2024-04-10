if(instance_exists(objPlayer))
{
	
	if(objPlayer.x > x)
	{
		image_xscale = -1
	}
	else
	{
		image_xscale = 1
	}
	direction = point_direction(x,y,objPlayer.x, objPlayer.y)
	speed = defaultSpeed
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
