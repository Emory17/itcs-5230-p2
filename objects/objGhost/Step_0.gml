/// @description Insert description here
// You can write your code in this editor
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
	
	
	direction = point_direction(x,y,objPlayer.x, objPlayer.y)
	speed = defaultSpeed
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
