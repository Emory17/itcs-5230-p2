
if(secondary)
draw_text_color(x,y - 90 + decayTime, string(damagePopUp), textColor, textColor, textColor, textColor, decayTime/60)
else if(heal)
draw_text_color(x,y - 90 + decayTime, string(damagePopUp), textColor, textColor, textColor, textColor, decayTime/60)
else if(player)
draw_text_color(x,y - 90 + decayTime, string(damagePopUp), textColor, textColor, textColor, textColor, decayTime/60)
else
draw_text_color(x,y - 70 + decayTime, string(damagePopUp), textColor, textColor, textColor, textColor, decayTime/60)

