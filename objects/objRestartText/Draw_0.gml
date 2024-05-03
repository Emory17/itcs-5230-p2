draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(ButtonFont)
if(room == WinScreen){
	draw_text(960, 600, " Final Score: " + string(global.totalScore))
	draw_text(960, 750, "Press R to restart")
	draw_text(960, 825, "or Escape to quit.")
}
else{
	draw_text(960, 600, " Score: " + string(global.totalScore))
	draw_text(960, 750, "Press R to restart or Escape to quit")
}