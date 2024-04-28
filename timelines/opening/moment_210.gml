//room_goto(TestRoom)
randomize()
global.levelArray = [irandom_range(0, 4), irandom_range(0, 4), irandom_range(0, 4), 
		 irandom_range(0, 4), irandom_range(0, 4), irandom_range(5, 9),
		 irandom_range(5, 9), irandom_range(5, 9), irandom_range(5, 9), 
		 irandom_range(5, 9)]
							 
	if(global.levelArray[0] == 0)
	{
		enemySpawner(ForestLevel1)
		room_goto(ForestLevel1)
	}
	else if(global.levelArray[0] == 1)
	{
		enemySpawner(ForestLevel2)
		room_goto(ForestLevel2)
	}
	else if(global.levelArray[0] == 2)
	{
		enemySpawner(ForestLevel3)
		room_goto(ForestLevel3)
	}
	else if(global.levelArray[0] == 3)
	{
		enemySpawner(ForestLevel4)
		room_goto(ForestLevel4)
	}
	else
	{
		enemySpawner(ForestLevel5)
		room_goto(ForestLevel5)
	}
