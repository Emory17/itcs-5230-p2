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

}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}