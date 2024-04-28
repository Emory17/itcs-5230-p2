/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(throwing)
	draw_sprite_ext(sprSkeletonVanguardThrow, throwingFrame, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
else
	draw_sprite_ext(sprSkeletonVanguardArm, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
