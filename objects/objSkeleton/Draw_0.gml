if(isHurt){
	shader_set(shdrRed)
	
}

draw_self()
shader_reset()

draw_sprite_ext(sprSkeletonBow, image_index, x, y, 1, .75, direction, c_white, 1)