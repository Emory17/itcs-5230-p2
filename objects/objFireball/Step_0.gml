
fireballTime++

if(global.primaryUpgrade2 && instance_exists(target))
{
	
		
	angleDifference = direction - point_direction(x, y, target.x, target.y)
	
	if(fireballTime > 10)
	target = instance_nearest(x,y,objBat)
	{
		if(angleDifference < 0 && angleDifference > -90)
			direction += 2
		else if(angleDifference > 0 && angleDifference < 90)
			direction -= 2
	}
	
	image_angle = direction
}

