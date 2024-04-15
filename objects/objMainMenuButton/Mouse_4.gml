if(position_meeting(mouse_x,mouse_y,id)){
	if(value = "knight"){
		global.character = pChar.knight
		randomize()//allows for the numbers to randomize below
		global.levelArray = [irandom_range(0, 4), irandom_range(0, 4), irandom_range(0, 4), 
							 irandom_range(0, 4), irandom_range(0, 4), irandom_range(5, 9),
							 irandom_range(5, 9), irandom_range(5, 9), irandom_range(5, 9), 
							 irandom_range(5, 9)]
		show_debug_message(global.levelArray[0])
	}
	else if(value = "archer"){
		global.character = pChar.archer 
		randomize()
		global.levelArray = [irandom_range(0, 4), irandom_range(0, 4), irandom_range(0, 4), 
							 irandom_range(0, 4), irandom_range(0, 4), irandom_range(5, 9),
							 irandom_range(5, 9), irandom_range(5, 9), irandom_range(5, 9), 
							 irandom_range(5, 9)]
	}
	else if(value = "mage"){
		global.character = pChar.mage
		randomize()
		global.levelArray = [irandom_range(0, 4), irandom_range(0, 4), irandom_range(0, 4), 
							 irandom_range(0, 4), irandom_range(0, 4), irandom_range(5, 9),
							 irandom_range(5, 9), irandom_range(5, 9), irandom_range(5, 9), 
							 irandom_range(5, 9)]
	}
	if(global.levelArray[0] == 0)
	{
		room_goto(ForestLevel1)
	}
	else if(global.levelArray[0] == 1)
	{
		room_goto(ForestLevel2)
	}
	else if(global.levelArray[0] == 2)
	{
		room_goto(ForestLevel3)
	}
	else if(global.levelArray[0] == 3)
	{
		room_goto(ForestLevel4)
	}
	else
	{
		room_goto(ForestLevel5)
	}
	//room_goto(CutsceneRoom)
}
