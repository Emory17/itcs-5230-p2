/// @description Insert description here
// You can write your code in this editor
if(instance_exists(attachedTo))
{
	x = attachedTo.x
	y = attachedTo.y
	image_angle += 1
}
else
{
	instance_destroy()
}
