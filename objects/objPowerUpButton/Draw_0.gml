draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_sprite_ext(picon,0,x,y-48, 2, 2, 0, c_white, 1)

draw_set_font(pButtonFont)
draw_text(x,y+48,textval)
