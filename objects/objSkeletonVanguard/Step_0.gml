/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) <= enemyVision)
	{
		//path_end()
		if(objPlayer.x > x)
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1
		}
		
		if(instance_place(x+hsp, y, objInnerWall))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 359.9 and lastDirection > 270.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x, y + unstuckSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall))
			{
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed
			}
			
		}
		else if(instance_place(x-hsp, y, objInnerWall))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 269.9 and lastDirection > 180.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x, y + unstuckSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall))
			{
				direction = point_direction(x, y, x + unstuckSpeed, y)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y-hsp, objInnerWall))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 179.9 and lastDirection > 90.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x + unstuckSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall))
			{
				direction = point_direction(x, y, x, y + unstuckSpeed)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y+hsp, objInnerWall))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 269.9 and lastDirection > 179.9)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x + unstuckSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall))
			{
				direction = point_direction(x, y, x, y + unstuckSpeed)
				speed = defaultSpeed
			}
		}
		else
		{
			direction = point_direction(x,y,objPlayer.x, objPlayer.y)
			speed = defaultSpeed
			
			
		}
		
	}
	else if((distance_to_object(objPlayer) < enemyVision + 200) and canShoot == true)
	{
		canShoot = false
		alarm[1]= 120
		instance_create_layer(x, y, "Instances", protectileSpawn)
	}
	else
	{
		
	}
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}