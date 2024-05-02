draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(ButtonFont)
draw_text(x, y, textval)

if(hovoring == "knight"){
	draw_sprite_ext(sprPointArrow, 0, 880, 890, 1, 1, 270, c_white, 1)
}
else if(hovoring == "archer"){
	draw_sprite_ext(sprPointArrow, 0, 975, 890, 1, 1, 270, c_white, 1)
}
else if(hovoring == "mage"){
	draw_sprite_ext(sprPointArrow, 0, 1070, 890, 1, 1, 270, c_white, 1)
}