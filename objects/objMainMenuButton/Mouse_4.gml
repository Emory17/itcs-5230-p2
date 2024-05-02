audio_play_sound(powerupGet, 1, false)
if(position_meeting(mouse_x,mouse_y,id)){
	if(value = "knight"){
		global.character = pChar.knight
	}
	else if(value = "archer"){
		global.character = pChar.archer 
	}
	else if(value = "mage"){
		global.character = pChar.mage
	}

//I moved all that other stuff to objCutsceneKnight for now since it controls the cutscene

if(position_meeting(mouse_x,mouse_y,id)){
if(value = "knight"){
	global.character = pChar.knight
}
else if(value = "archer"){
	global.character = pChar.archer 
}
else if(value = "mage"){
	global.character = pChar.mage
}
room_goto(ControlScreen)
	}
}