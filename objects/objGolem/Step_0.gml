/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) < enemyVision)
	{
		path_end()
		if(agro == false)
		{
			agro = true
			alarm[0] = 27
		}
		image_speed = .5

		if(objPlayer.x > x)
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1
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
	else
	{
		image_speed = 0
		audio_stop_sound(bigEnemyThump)
		speed = 0
	}
}


if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick / 2))
	y += -(dsin(hitAngle) * (knockbackPerTick / 2))
}


