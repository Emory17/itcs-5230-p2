/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and canShoot == true and canTeleport = false)
{
	
		if(distance_to_object(objPlayer) < enemyVision)
		{
			if(instance_exists(objWarlockProjectile))
			{
			
				if(iterator < 181)
				{
					if(iterator == 120 or iterator == 150 or iterator == 180)
					{
						if(!frozen)
						{
							firing = true;
						}
					}
					iterator++
				}
				if(iterator == 181)
				{
					iterator = 0
					//canShoot = false
					alarm[3] = 30
					alarm[1]= shotFrequency
					firing = true
				}
			}
			else
			{
				instance_create_layer(x + (dcos(0) * 50) + 35, y - (dsin(0) * 50) + 50, "Instances", objWarlockProjectile,
				{
					attachedToo : self.id
				})
				
				instance_create_layer(x + (dcos(120) * 50) + 35, y - (dsin(120) * 50) + 50, "Instances", objWarlockProjectile,
				{
					attachedToo : self.id,
					positionAngle : 120
				})
				
				instance_create_layer(x + (dcos(240) * 50) + 35, y - (dsin(240) * 50) + 50, "Instances", objWarlockProjectile,
				{
					attachedToo : self.id,
					positionAngle : 240
				})
				//canShoot = false
				alarm[1]= shotFrequency
			}
		}
		else
		{
			alarm[3] = 240
		}	
}

if(canTeleport = true)
{
	canTeleport = false
	canShoot = false
	firing = false
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
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
