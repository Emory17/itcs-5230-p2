/// @description Insert description here
// You can write your code in this editor
speedX = 0
speedY = 0
placeHolderX = objPlayer.x 
placeHolderY = objPlayer.y
//((350 mod objPlayer.y) == 0)
//((350 mod objPlayer.x) == 0)
//((850 mod objPlayer.y) == 0)
//((850 mod objPlayer.x) == 0)

if(instance_exists(objPlayer))
{
	if(objPlayer.y < objSkeletonVanguard.y and objPlayer.x < objSkeletonVanguard.x)//up
	{
		image_angle = 90
		speedY -= arrowSpeed
	}
	else if(objPlayer.y > objSkeletonVanguard.y and objPlayer.x > objSkeletonVanguard.x)//down
	{
		image_angle = 270
		speedY += arrowSpeed
	}
	else if(objPlayer.x < objSkeletonVanguard.x)//left
	{
		image_xscale = -1
		speedX -= arrowSpeed
	}
	else if(objPlayer.x > objSkeletonVanguard.x)//right
	{
		speedX += arrowSpeed
	}
	else
	{
	}
}