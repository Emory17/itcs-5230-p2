/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	if(distance_to_object(objPlayer) < enemyVision)
	{
		path_end()
		//if(objPlayer.x > x)
		//{
		//	image_xscale = 1.5
		//}
		//else
		//{
		//	image_xscale = -1.5
		//}
		if(canWander)
		{
			canWander = false
			image_speed = 0
			alarm[1] = 180
			direction = point_direction(x,y,objPlayer.x, objPlayer.y)
			speed = defaultSpeed
		}
		else
			image_speed = 2
			
		
	}

}

alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}

if(direction > 270 || direction < 90)
	image_xscale = 1.5
else
	image_xscale = -1.5