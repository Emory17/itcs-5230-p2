draw_self()

if(objPlayer.windCharge > 74 && objPlayer.windCharge <= 79)
	draw_sprite_ext(sprWindCharge, 0, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)
else if(objPlayer.windCharge > 79 && objPlayer.windCharge <= 84)
	draw_sprite_ext(sprWindCharge, 1, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)
else if(objPlayer.windCharge > 84 && objPlayer.windCharge <= 89)
	draw_sprite_ext(sprWindCharge, 2, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)