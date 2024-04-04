if(invincible){
	shader_set(shdrBW)
}

draw_self()
shader_reset()

draw_sprite_ext(sprReticle, 1, x + (dcos(atkangle) * 75), y - (dsin(atkangle) * 75), 1, 1, point_direction(x,y,mouse_x,mouse_y), c_white,.5)