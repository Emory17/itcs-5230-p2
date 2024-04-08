/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	
	if(objPlayer.x > x)
	{
		image_xscale = 1
	}
	else
	{
		image_xscale = -1
	}
	
	if(invincible)
	{
		alarm[1] = 90
	}
	if(!invincible)
	{
		
		alarm[2]= 60
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
