/// @description Insert description here
// You can write your code in this editor
if(instance_exists(attachedTo))
{
	x = attachedTo.x + (dcos(positionAngle) * 100) 
	y = attachedTo.y - (dsin(positionAngle) * 100) 
	
	image_angle -= 10
}
else
{
	instance_destroy()
}

positionAngle += 2