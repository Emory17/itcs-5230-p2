x = objPlayer.x
y = objPlayer.y
image_angle = point_direction(x,y,mouse_x,mouse_y)

if((global.character == pChar.archer))
	visible = true
else
	visible = false
	
image_xscale = 1.5
image_yscale = 1.5

if(bowCharge < (90 * (global.bowChargeMultiplier / 9)))
{
	image_index = 0
}

else if(bowCharge < (90 * (global.bowChargeMultiplier / 6)))
{
	image_index = 1
}

else if(bowCharge < (90 * (global.bowChargeMultiplier / 6)))
{
	//I screwed the way I wrote this code up I know it looks redundant
	image_index = 2
	if(!mouse_check_button(mb_left))
	{
		instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
	}
	
	
}

else if(bowCharge < (90 * (global.bowChargeMultiplier / 3)))
{
	image_index = 3
	if(!mouse_check_button(mb_left))
	{
		instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
	}
}

else if(bowCharge < (90 * (global.bowChargeMultiplier / 1.5)))
{
	image_index = 4
	if(!mouse_check_button(mb_left))
	{
		instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
	}
}

else
{
	image_index = 5
	if(!mouse_check_button(mb_left))
	{
		instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow, {
			charged : true,
		})
	}
}
