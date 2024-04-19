/// @description Insert description here
// You can write your code in this editor
speedX = 0
speedY = 0
image_speed = 0
placeHolderX = objPlayer.x 
placeHolderY = objPlayer.y
blocked = false;
//((350 mod objPlayer.y) == 0)
//((350 mod objPlayer.x) == 0)
//((850 mod objPlayer.y) == 0)
//((850 mod objPlayer.x) == 0)

if(instance_exists(objPlayer))
{
	if(objPlayer.y < objSkeleton.y and objPlayer.x < objSkeleton.x)//up
	{
		image_angle = 90
		speedY -= arrowSpeed
	}
	else if(objPlayer.y > objSkeleton.y and objPlayer.x > objSkeleton.x)//down
	{
		image_angle = 270
		speedY += arrowSpeed
	}
	else if(objPlayer.x < objSkeleton.x)//left
	{
		image_xscale = -1
		speedX -= arrowSpeed
	}
	else if(objPlayer.x > objSkeleton.x)//right
	{
		speedX += arrowSpeed
	}
	else
	{
	}
}