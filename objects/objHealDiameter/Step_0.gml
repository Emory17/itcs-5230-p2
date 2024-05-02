/// @description Insert description here
// You can write your code in this editor
if(instance_exists(attachedToCorrectEnemy))
{
	x = attachedToCorrectEnemy.x
	y = attachedToCorrectEnemy.y
	image_angle += 1
}
else
{
	instance_destroy()
}
depth = 0