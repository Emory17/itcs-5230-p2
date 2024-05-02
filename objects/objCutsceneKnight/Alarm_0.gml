randomize()
global.levelArray = [irandom_range(0, 4), irandom_range(0, 4), irandom_range(0, 4), 
		 irandom_range(0, 4), irandom_range(0, 4), irandom_range(5, 9),
		 irandom_range(5, 9), irandom_range(5, 9), irandom_range(5, 9), 
		 irandom_range(5, 9)]
							 
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

//room_goto(TestRoom)