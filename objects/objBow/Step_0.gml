if(instance_exists(objPlayer))
{
	x = objPlayer.x
	y = objPlayer.y + 5
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

	else if(bowCharge < (90 / (global.bowChargeMultiplier * 6)))
	{
		image_index = 1
	}

	else if(bowCharge < (90 / (global.bowChargeMultiplier * 6)))
	{
		//I screwed the way I wrote this code up I know it looks redundant
		image_index = 2
		if(!mouse_check_button(mb_left))
		{
			audio_play_sound(playerBowShoot, 1, false)
			instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
		}
	
	
	}

	else if(bowCharge < (90 / (global.bowChargeMultiplier * 3)))
	{
		image_index = 3
		if(!mouse_check_button(mb_left))
		{
			audio_play_sound(playerBowShoot, 1, false)
			instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
		}
	}

	else if(bowCharge < (90 / (1.5 * global.bowChargeMultiplier)))
	{
		image_index = 4
		if(!mouse_check_button(mb_left))
		{
			audio_play_sound(playerBowShoot, 1, false)
			instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
		}
	}

	else if(bowCharge > (90 / ( 1.2 * global.bowChargeMultiplier)))
	{
		image_index = 5 
		if(bowCharge = round(90 / ( 1.2 * global.bowChargeMultiplier)) + 2)
			audio_play_sound(playerBowCharge, 1, false)
			
		if(!mouse_check_button(mb_left))
		{
			audio_play_sound(playerBowRelease, 1, false)
			instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow, {
				charged : true,
			})
		}
	}
	else if(bowCharge > 0)
	{
		if(!mouse_check_button(mb_left))
		{
			
			audio_play_sound(playerBowShoot, 1, false)
			instance_create_layer(x + (dcos(image_angle) * 10), y - (dsin(image_angle) * 10), "Instances", objArrow)
		}
	}
}

if(objPlayer.windCharge = 73)
	audio_play_sound(gustRecharge, 1, false)