/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	
	if(objPlayer.x > x)
	{
		image_xscale = 1.5
	}
	else
	{
		image_xscale = -1.5
	}
	
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
