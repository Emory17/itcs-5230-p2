/// @description Insert description here
// You can write your code in this editor
if(instance_exists(attachedToo))
{
	x = attachedToo.x + (dcos(positionAngle) * 50) + 35
	y = attachedToo.y - (dsin(positionAngle) * 50) + 50
	positionAngle += 4
}
else
{
	x = 10000
	y = 10000
	instance_destroy()
}
depth= -1

if(instance_exists(attachedToo))
{
	
	if(attachedToo.firing && positionAngle == 92)
		{
		instance_destroy()
		}
}
else
{
	x = 10000
	y = 10000
	instance_destroy()
}
	
if(positionAngle > 360)
	positionAngle = 0