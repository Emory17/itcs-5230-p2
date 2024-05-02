if(invincible){
	shader_set(shdrBW)
}



draw_self()
shader_reset()

if(image_alpha = .4 || startProtection)
{
	draw_sprite_ext(sprDashIframes, 0, x, y, 2, 2, 0, c_aqua,.5)
}

draw_sprite_ext(sprReticle, 1, x + (dcos(atkangle) * 75), y - (dsin(atkangle) * 75), 1, 1, point_direction(x,y,mouse_x,mouse_y), c_white, .5)