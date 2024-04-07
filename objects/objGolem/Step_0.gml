/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) < enemyVision)
	{
		path_end()
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
			
			direction = point_direction(x, y, x, y + defaultSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall))
			{
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed
			}
			
		}
		else if(instance_place(x-hsp, y, objInnerWall))
		{
			
			direction = point_direction(x, y, x, y + defaultSpeed)
			speed = defaultSpeed
			if(instance_place(x, y-hsp, objInnerWall) or instance_place(x, y+hsp, objInnerWall))
			{
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y-hsp, objInnerWall))
		{
			
			direction = point_direction(x, y, x + defaultSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall))
			{
				direction = point_direction(x, y, x, y + defaultSpeed)
				speed = defaultSpeed
			}
		}
		else if(instance_place(x, y+hsp, objInnerWall))
		{
			
			direction = point_direction(x, y, x + defaultSpeed, y)
			speed = defaultSpeed
			if(instance_place(x+hsp, y, objInnerWall) or instance_place(x-hsp, y, objInnerWall))
			{
				direction = point_direction(x, y, x, y + defaultSpeed)
				speed = defaultSpeed
			}
		}
		else
		{
			direction = point_direction(x,y,objPlayer.x, objPlayer.y)
			speed = defaultSpeed
			lastDirection = direction
			
		}
		
	}
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}