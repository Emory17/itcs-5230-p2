/// @description Insert description here
// You can write your code in this editor
if(instance_exists(attachedToEnemy))
{
	x = attachedToEnemy.x
	y = attachedToEnemy.y
	image_angle += 1
}
else
{
	instance_destroy()
}