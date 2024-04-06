x = objPlayer.x
y = objPlayer.y
image_angle = point_direction(x,y,mouse_x,mouse_y)

if((global.character == pChar.mage))
	visible = true
else
	visible = false


if(objPlayer.atkangle < 90 || objPlayer.atkangle > 270)
	{
		image_yscale = 3
	}
	else
	{
		image_yscale = -3
	}
	
image_xscale = 3