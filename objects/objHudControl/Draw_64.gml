draw_set_font(UIFont) 

draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 20, objPlayer.maxHP/50, 1, 0, c_white, 1)
draw_sprite_ext(sprHPFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 20, objPlayer.totalHealth/50, 1, 0, c_white, 1)

if(global.character == pChar.mage)
{
	draw_sprite_ext(sprHPBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.maxMana/50, 1, 0, c_white, 1)
	draw_sprite_ext(sprManaFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.mana/50, 1, 0, c_white, 1)
	draw_text(view_get_xport(0) + 120, view_get_yport(0) + 65, string(objPlayer.mana) + " / " + string(objPlayer.maxMana))
}

if(global.character == pChar.knight and global.primaryUpgrade2)
{
	draw_sprite_ext(sprRageBorder, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, 2, 1, 0, c_white, 1)
	if(objPlayer.rage < 50)
		draw_sprite_ext(sprRageFill, 0 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.rage / 50, 1, 0, c_white, 1)
	else if(objPlayer.rage >= 50 and objPlayer.rage < 100)
		draw_sprite_ext(sprRageFill, 1 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.rage / 50, 1, 0, c_white, 1)
	else
		draw_sprite_ext(sprRageFill, 2 , view_get_xport(0) + 50, view_get_yport(0) + 50, objPlayer.rage/ 50, 1, 0, c_white, 1)
	draw_text(view_get_xport(0) + 105, view_get_yport(0) + 65, "Rage")
}

draw_text(view_get_xport(0) + 70, view_get_yport(0) + 150, "Inventory")

draw_text(view_get_xport(0) + 120, view_get_yport(0) + 35, string(objPlayer.totalHealth) + " / " + string(objPlayer.maxHP))

draw_text(view_get_xport(0) + 1750, view_get_yport(0) + 50, "Stage: " + string(global.currentLevelIndex + 1))
draw_text(view_get_xport(0) + 1750, view_get_yport(0) + 80, "Score: " + string(global.totalScore))

//draw_text(view_get_xport(0) + 120, view_get_yport(0) + 125, string(global.))

for(var i = 0; i <= 10; i++)
	{
		draw_sprite_ext(global.inventory[i], 0 , view_get_xport(0) + 60, view_get_yport(0) + 150 + (i * 70),
		2, 2, 0, c_white, 1)
	}
