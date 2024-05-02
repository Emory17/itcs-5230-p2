image_xscale = 2.5
image_yscale = 2.5
direction = point_direction(x,y,mouse_x,mouse_y)
image_speed = 0
image_angle = direction
image_index = 0
speed = pspeed
atkangle = direction
knockbackAmt = 0 * global.knockbackMultiplier
depth = -1
alarm[0] = 30;

if(global.primaryUpgrade2)
{
	if(objPlayer.rage > 100)
		{
			fireballDamage = round(10 * global.damageMultiplier)
			image_index = 1
		}
	}