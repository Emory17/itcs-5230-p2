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
	room_goto(CutsceneRoom)
}
