if(isHurt){
	shader_set(shdrRed)
	
}

draw_self()
shader_reset()

if(visualHealDecay > 0)
	draw_sprite_ext(sprHealDiameter, 0, x,y,1,1,0,c_white, .1)
	
if(shockwaveFrames < 7)
	draw_sprite_ext(sprDarkClericShockWave, shockwaveFrames,x,y,image_xscale,image_yscale, image_angle,c_white, 1)