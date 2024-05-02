draw_self()
if(distance_to_object(objPlayer) > 500)
	draw_sprite_ext(sprPointArrow, image_index, objPlayer.x + 400, objPlayer.y,1.5,1.5, 
	point_direction(objPlayer.x + 400, objPlayer.y, x, y), c_white, .7)

