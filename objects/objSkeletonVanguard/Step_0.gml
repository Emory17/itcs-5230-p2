/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) <= enemyVision)
	{
		if(agro == false and !throwing)
		{
			agro = true
			alarm[0] = 20
		}
		image_speed = 1
		//path_end()
		if(objPlayer.x > x)
		{
			image_xscale = -4
		}
		else
		{
			image_xscale = 4
		}
		
		if(instance_place(x+hsp, y, objInnerWall) or instance_place(x+hsp, y, objHole))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 359.9 and lastDirection > 270.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x, y - unstuckSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall)
			or instance_place(x, y-hsp, objHole) or instance_place(x, y+hsp, objHole))
			{
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed
			}
			
		}
		else if(instance_place(x-hsp, y, objInnerWall) or instance_place(x-hsp, y, objHole))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 269.9 and lastDirection > 180.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x, y + unstuckSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall)
			or instance_place(x, y-hsp, objHole) or instance_place(x, y+hsp, objHole))
			{
				direction = point_direction(x, y, x + unstuckSpeed, y)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y-hsp, objHole))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 179.9 and lastDirection > 90.1)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x - unstuckSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall)
			or instance_place(x+hsp, y, objHole) or instance_place(x-hsp, y, objHole))
			{
				direction = point_direction(x, y, x, y + unstuckSpeed)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y+hsp, objInnerWall) or instance_place(x, y+hsp, objHole))
		{
			lastDirection = direction
			
			unstuckSpeed = defaultSpeed
			if(lastDirection < 269.9 and lastDirection > 179.9)
			{
				unstuckSpeed = defaultSpeed * -1 
			}
			
			direction = point_direction(x, y, x + unstuckSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall)
			or instance_place(x+hsp, y, objHole) or instance_place(x-hsp, y, objHole))
			{
				direction = point_direction(x, y, x, y + unstuckSpeed)
				speed = defaultSpeed
			}
		}
		else
		{
			direction = point_direction(x,y,objPlayer.x, objPlayer.y)
			findTarget()
			speed = defaultSpeed
		}
	}
	else if((distance_to_object(objPlayer) < enemyVision + 200) and canShoot == true)
	{
		canShoot = false
		throwing = true
		throwingFrame = 0
		alarm[1]= 16
		alarm[2] = 140
	}
	else
	{
		speed = 0
		image_index = 0
		image_speed = 0
		agro = false
	}
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick) / 2)
	y += -(dsin(hitAngle) * (knockbackPerTick) / 2)
}

throwingFrame += .25