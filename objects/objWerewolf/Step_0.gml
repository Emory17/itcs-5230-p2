/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) < enemyVision)
	{
		//if(objPlayer.x > x)
		//{
		//	image_xscale = 1
		//}
		//else
		//{
		//	image_xscale = -1
		//}
		if(canCharge)
		{
			makeSound = irandom(2)
			audio_stop_sound(werewolfGrowl)
			if(makeSound == 1)
				audio_play_sound(werewolfGrowl,1,false)
			
			directionToPlayer = point_direction(x, y, objPlayer.x, objPlayer.y)
			canCharge = false
			stars = false
			if(directionToPlayer >= 45 and directionToPlayer <= 135)//up
			{
				path_end()
				direction = point_direction(x, y, x, y - defaultSpeed)
				speed = defaultSpeed * 3
				image_speed = 2
				alarm[1] = 180
			}
			else if(directionToPlayer >= 225 and directionToPlayer <= 315)//down
			{
				
				path_end()
				direction = point_direction(x, y, x, y + defaultSpeed)
				speed = defaultSpeed * 3
				image_speed = 2
				alarm[1] = 180
			}
			else if(directionToPlayer >= 135 and directionToPlayer <= 225)//left
			{
				path_end()
				image_xscale = -1
				direction = point_direction(x, y, x - defaultSpeed, y)
				speed = defaultSpeed * 3
				image_speed = 2
				alarm[1] = 180
			}
			else// if(directionToPlayer >= 315 and directionToPlayer <= 45)//right
			{
				path_end()
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed * 3
				alarm[1] = 180
				image_speed = 1
			}
			
		}
			
	}
	if(canCharge = true and distance_to_object(objPlayer) > enemyVision)
	{
		direction = point_direction(x, y, objPlayer.x, objPlayer.y)
		speed = defaultSpeed
	}
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}


if(direction > 270 || direction < 90)
	image_xscale = 1.5
else
	image_xscale = -1.5


/*
if(canCharge)
		{
			directionToPlayer = point_direction(x, y, objPlayer.x, objPlayer.y)
			canCharge = false
			show_debug_message(directionToPlayer)
			
			if(directionToPlayer >= 45 and directionToPlayer <= 135)//up
			{
				path_end()
				image_angle = 90
				direction = point_direction(x, y, x, y - defaultSpeed)
				speed = defaultSpeed * 3
				alarm[1] = 180
			}
			else if(directionToPlayer >= 225 and directionToPlayer <= 315)//down
			{
				
				path_end()
				image_angle = 270
				direction = point_direction(x, y, x, y + defaultSpeed)
				speed = defaultSpeed * 3
				alarm[1] = 180
			}
			else if(directionToPlayer >= 135 and directionToPlayer <= 225)//left
			{
				path_end()
				image_xscale = -1
				direction = point_direction(x, y, x - defaultSpeed, y)
				speed = defaultSpeed * 3
				alarm[1] = 180
			}
			else// if(directionToPlayer >= 315 and directionToPlayer <= 45)//right
			{
				path_end()
				direction = point_direction(x, y, x + defaultSpeed, y)
				speed = defaultSpeed * 3
				alarm[1] = 180
			}
			
			
		}
*/
