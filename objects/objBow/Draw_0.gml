draw_self()

if(objPlayer.windCharge > 73 && objPlayer.windCharge <= 78)
	draw_sprite_ext(sprWindCharge, 0, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)
else if(objPlayer.windCharge > 78 && objPlayer.windCharge <= 83)
	draw_sprite_ext(sprWindCharge, 1, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)
else if(objPlayer.windCharge > 83 && objPlayer.windCharge <= 88)
	draw_sprite_ext(sprWindCharge, 2, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
	0, c_white, 1)
	
if(objPlayer.canGust && global.secondaryUpgrade1)
{
	if(objPlayer.superWindCharge > 10 && objPlayer.superWindCharge <= 35)
		draw_sprite_ext(sprSuperWindCharge, 0, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
		0, c_white, 1)
	else if(objPlayer.superWindCharge > 35 && objPlayer.superWindCharge <= 60)
		draw_sprite_ext(sprSuperWindCharge, 1, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
		0, c_white, 1)
	else if(objPlayer.superWindCharge > 60 && objPlayer.superWindCharge <= 85)
		draw_sprite_ext(sprSuperWindCharge, 2, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
		0, c_white, 1)
	else if(objPlayer.superWindCharge > 85 && objPlayer.superWindCharge <= 90)
		draw_sprite_ext(sprSuperWindCharge, 3, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
		0, c_white, 1)
	else if(objPlayer.superWindCharge > 90)
		draw_sprite_ext(sprSuperWindCharge, 4, objPlayer.x, objPlayer.y , objPlayer.image_xscale, 1, 
		0, c_white, 1)
	
}