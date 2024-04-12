/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and canShoot == true and canTeleport = false)
{
	
		if(distance_to_object(objPlayer) < enemyVision)
		{
			if(instance_exists(objWarlockProjectile))
			{
			
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
					instance_destroy(objWarlockProjectile)
				}
			}
			else
			{
				instance_create_layer(x, y, "Instances", objWarlockProjectile,
				{
					attachedToo : self.id
				})
				canShoot = false
				alarm[1]= shotFrequency
			}
		}
		else
		{
			alarm[3] = 120
		}	
}

if(canTeleport = true)
{
	canTeleport = false
	canShoot = false
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	show_debug_message(randomX)
	show_debug_message(randomY)
	x = randomX
	y = randomY
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