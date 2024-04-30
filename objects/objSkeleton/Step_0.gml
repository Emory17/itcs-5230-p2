/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < enemyVision)
	{
		if(objPlayer.y < y - shotDetectionSize)//up
		{
			direction = 90
		}
		else if(objPlayer.y > y + shotDetectionSize)//down
		{
			direction = 270
		}
		else if(objPlayer.x < x)//left
		{
			image_xscale = -1
			direction = 180
		}
		else if(objPlayer.x > x)//right
		{
			image_xscale = 1
			direction = 0
		}
		else
		{
		}
		canShoot = false
		alarm[1]= shotFrequency
		alarm[2] = shotFrequency - 60
		if(!frozen)
		{
			audio_play_sound(skeletonFire, 1, false)
			instance_create_layer(x, y, "Instances", protectileSpawn, {direction: direction})
		}
	
	}
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
