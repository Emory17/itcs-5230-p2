/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < enemyVision)
	{
		if(objPlayer.y < y)//up
		{
			direction = 90
		}
		else if(objPlayer.y > y)//down
		{
			direction = 270
		}
		else if(objPlayer.x < x)//left
		{
			direction = 180
		}
		else if(objPlayer.x > x)//right
		{
			
			direction = 0
		}
		else
		{
		}
		canShoot = false
		alarm[1]= shotFrequency
		alarm[2] = shotFrequency - 70
		alarm[0] = shotFrequency - 10
		
	
	}
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick / 4))
	y += -(dsin(hitAngle) * (knockbackPerTick / 4))
}
