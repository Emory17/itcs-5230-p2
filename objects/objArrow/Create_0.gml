image_xscale = 2
image_yscale = 1
direction = point_direction(x,y,mouse_x,mouse_y)
image_angle = direction
speed = pspeed
atkangle = direction
knockbackAmt = 3 * global.knockbackMultiplier
image_speed = 0;

if(charged)
 speed = pspeed * 2
 
 
 if(charged)
 {
	arrowDamage = 35
	knockbackAmt = 10 * global.knockbackMultiplier
	image_index = 1;
 }