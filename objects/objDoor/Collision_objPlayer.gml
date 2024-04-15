currentLevelIndex++

if(currentLevelIndex <= 4)
{
	if(global.levelArray[currentLevelIndex] == 0)
	{
		room_goto(ForestLevel1)
	}
	else if(global.levelArray[currentLevelIndex] == 1)
	{
		room_goto(ForestLevel2)
	}
	else if(global.levelArray[currentLevelIndex] == 2)
	{
		room_goto(ForestLevel3)
	}
	else if(global.levelArray[currentLevelIndex] == 3)
	{
		room_goto(ForestLevel4)
	}
	else
	{
		room_goto(ForestLevel5)
	}
}
else if(currentLevelIndex <= 9 and currentLevelIndex >= 5)
{
	if(global.levelArray[currentLevelIndex] == 5)
	{
		room_goto(CastleLevel1)
	}
	else if(global.levelArray[currentLevelIndex] == 6)
	{
		room_goto(CastleLevel2)
	}
	else if(global.levelArray[currentLevelIndex] == 7)
	{
		room_goto(CastleLevel3)
	}
	else if(global.levelArray[currentLevelIndex] == 8)
	{
		room_goto(CastleLevel4)
	}
	else
	{
		room_goto(CastleLevel5)
	}
}
else
{
	room_goto(WinScreen)
}

