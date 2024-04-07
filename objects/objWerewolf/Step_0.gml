/// @description Insert description here
// You can write your code in this editor
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
		directionToPlayer = point_direction(x, y, objPlayer.x, objPlayer.y)
		
		if(isChargingLeft = false and isChargingRight = false and isChargingDown = false)
		{
			if(objPlayer.y < objWerewolf.y and objPlayer.x < objWerewolf.x)//up
			{
				isChargingUp = true
				image_angle = 90
				objWerewolf.y -= hsp
				alarm[3] = 180
			}
		}
		
		if(isChargingLeft = false and isChargingRight = false and isChargingUp = false)
		{
			if(objPlayer.y > objWerewolf.y and objPlayer.x > objWerewolf.x)//down
			{
				isChargingDown = true
				image_angle = 270
				objWerewolf.y += hsp
				alarm[4] = 180
			}
		}
		
		if(isChargingDown = false and isChargingRight = false and isChargingUp = false)
		{
			if(objPlayer.x < objWerewolf.x)//left
			{
				isChargingLeft = true
				image_xscale = -1
				objWerewolf.x -= hsp
				alarm[1] = 180
			}
		}
		
		if(isChargingDown = false and isChargingDown = false and isChargingUp = false)
		{
			if(objPlayer.x > objWerewolf.x)//right
			{
				isChargingRight = true
				objWerewolf.x += hsp
				alarm[2] = 180
			}
		}
	
	}

}

alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
