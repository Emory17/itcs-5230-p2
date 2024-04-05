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
		direction = point_direction(x,y,objPlayer.x, objPlayer.y)
		speed = defaultSpeed
		
	}
}
alarm[0] = 180

