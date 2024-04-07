if(instance_exists(objPlayer))
{
	
	y = objPlayer.y + 5
	image_angle = point_direction(x,y,mouse_x,mouse_y)

	if((global.character == pChar.mage))
		visible = true
	else
		visible = false


	if(objPlayer.atkangle < 90 || objPlayer.atkangle > 270)
	{
		image_yscale = 3
		x = objPlayer.x + 10
	}
	else
	{
		image_yscale = -3
		x = objPlayer.x - 10
	}
	
	image_xscale = 3
}