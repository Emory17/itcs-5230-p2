/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
canShoot = false
image_yscale = 4
image_xscale = 4
throwing = false
throwingFrame = 0
alarm[2] = 140

while(place_meeting(x,y,objInnerWall) || place_meeting(x,y,objPlayer))
{
	x = irandom_range(125, 1825)
	y = irandom_range(95, 990)
}