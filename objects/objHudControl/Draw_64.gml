draw_set_font(UIFont) 

draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 20, objPlayer.maxHP/50, 1, 0, c_white, 1)
draw_sprite_ext(sprHPFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 20, objPlayer.totalHealth/50, 1, 0, c_white, 1)

if(global.character == pChar.mage)
{
	draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.maxMana/50, 1, 0, c_white, 1)
	draw_sprite_ext(sprManaFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.mana/50, 1, 0, c_white, 1)
	draw_text(view_get_xport(0) + 120, view_get_yport(0) + 65, string(objPlayer.mana) + " / " + string(objPlayer.maxMana))
}



draw_text(view_get_xport(0) + 120, view_get_yport(0) + 35, string(objPlayer.totalHealth) + " / " + string(objPlayer.maxHP))

draw_text(view_get_xport(0) + 120, view_get_yport(0) + 115, "Rage: " + string(objPlayer.rage))

draw_text(view_get_xport(0) + 120, view_get_yport(0) + 95, "Score: " + string(objPlayer.totalScore))

//draw_text(view_get_xport(0) + 120, view_get_yport(0) + 125, string(global.))

