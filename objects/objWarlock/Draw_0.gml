if(isHurt){
	shader_set(shdrRed)
	
}

draw_self()
shader_reset()

if(tpFrame < 4)
	draw_sprite(sprWarlockTeleport, tpFrame, previousX, previousY)