if(orbiting){
	if(instance_exists(attachedToo))
	{
		x = attachedToo.x + (dcos(positionAngle) * 100) 
		y = attachedToo.y - (dsin(positionAngle) * 100) 
		positionAngle += 4
	}
	else
	{
		x = 10000
		y = 10000
		instance_destroy()
	}
	depth= -1
	
	if(instance_exists(objPlayer)){
		image_angle = point_direction(x,y,objPlayer.x, objPlayer.y)
	}
	
	if(positionAngle >= 360){
		positionAngle = 0
	}
}