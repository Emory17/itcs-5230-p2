image_xscale = 2
image_yscale = 1
direction = point_direction(x,y,mouse_x,mouse_y)
image_angle = direction
speed = pspeed
atkangle = direction

image_speed = 0;

if(charged)
 speed = pspeed * 2
 
 
 if(charged)
 {
	arrowDamage = round(30 * global.damageMultiplier)
	knockbackAmt = 10 * global.knockbackMultiplier
	image_index = 1;
	if(global.primaryUpgrade2)
		image_index = 2
 }
 depth = 0