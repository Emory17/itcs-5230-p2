if(position_meeting(mouse_x,mouse_y,id)){
	if(value = "knight"){
		global.character = pChar.knight
		room_goto(TestRoom)
	}
	else if(value = "archer"){
		global.character = pChar.archer
		room_goto(TestRoom)
	}
	else if(value = "mage"){
		global.character = pChar.mage
		room_goto(TestRoom)
	}
}
