/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and canShoot == true and canTeleport = false)
{
	if(instance_exists(objWarlockProjectile))
	{
		if(distance_to_object(objPlayer) < enemyVision)
		{
			instance_destroy(objWarlockProjectile)
			if(iterator < 91)
			{
				if(iterator == 30 or iterator == 60 or iterator == 90)
				{
					instance_create_layer(x, y, "Instances", protectileSpawn)
				}
				iterator++
			}
			if(iterator == 91)
			{
				iterator = 30
				canShoot = false
				canTeleport = true
				alarm[1]= shotFrequency
			}
			
		}
		else
		{
			alarm[3] = 120
		}
	}
	else
	{
		instance_create_layer(x, y, "Instances", objWarlockProjectile,
		{
			attachedToo : self.id
		})
	}
	
}
if(canTeleport = true)
{
	//select a random x and y within the room 
	//if the x and y collides with obstacles, etc reselect
	//move warlock to the random x and y
}

alarm[0] = 180


if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}