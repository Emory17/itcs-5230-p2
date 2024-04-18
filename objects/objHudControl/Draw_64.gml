draw_set_font(UIFont) 

draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 10, objPlayer.maxHP/50, 1, 0, c_white, 1)
draw_sprite_ext(sprHPFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 10, objPlayer.totalHealth/50, 1, 0, c_white, 1)

if(global.character == pChar.mage)
{
	draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 40, objPlayer.maxMana/50, 1, 0, c_white, 1)
	draw_sprite_ext(sprManaFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 40, objPlayer.mana/50, 1, 0, c_white, 1)
	draw_text(view_get_xport(0) + 120, view_get_yport(0) + 55, string(objPlayer.mana) + " / " + string(objPlayer.maxMana))
}



draw_text(view_get_xport(0) + 120, view_get_yport(0) + 25, string(objPlayer.totalHealth) + " / " + string(objPlayer.maxHP))

//I use this to test values sometimes
draw_text(view_get_xport(0) + 120, view_get_yport(0) + 85, "Rage: " + string(objPlayer.rage))

draw_text(view_get_xport(0) + 120, view_get_yport(0) + 105, string(objPlayer.canDash))

