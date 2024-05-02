image_xscale = 2.5
image_yscale = 1.5
direction = point_direction(x,y,mouse_x,mouse_y)
image_speed = 0
image_angle = direction
image_index = chargePower - 1 
speed = pspeed
atkangle = direction
knockbackAmt = 0 * global.knockbackMultiplier
fireballDamage = (15 * chargePower) * global.damageMultiplier

alarm[0] = 30;

depth = -1