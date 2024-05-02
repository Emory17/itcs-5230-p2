image_xscale = 1.5
image_yscale = 1.5
direction = point_direction(x,y,mouse_x,mouse_y) + fireballAngle
image_speed = 8
image_angle = direction
speed = 8 
atkangle = direction
knockbackAmt = 8 * global.knockbackMultiplier
depth = 0
alarm[0] = 60;

target = instance_nearest(x,y,objBat)
