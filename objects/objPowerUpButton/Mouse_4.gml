applyPowerUp(pvalue)
global.inventory[global.currentLevelIndex] = picon
audio_play_sound(powerupGet, 1, false)

global.enemyDamageMultiplier *= 1.03
global.enemyHealthMultiplier *= 1.1

if(global.currentLevelIndex == 5)
{
	room_goto(CutsceneRoom2)
}
else if(global.currentLevelIndex <= 4)
{
	if(global.levelArray[global.currentLevelIndex] == 0)
	{
		room_goto(ForestLevel1)
	}
	else if(global.levelArray[global.currentLevelIndex] == 1)
	{
		room_goto(ForestLevel2)
	}
	else if(global.levelArray[global.currentLevelIndex] == 2)
	{
		room_goto(ForestLevel3)
	}
	else if(global.levelArray[global.currentLevelIndex] == 3)
	{
		room_goto(ForestLevel4)
	}
	else
	{
		room_goto(ForestLevel5)
	}
}
else if(global.currentLevelIndex <= 9 and global.currentLevelIndex >= 5)
{
	if(global.levelArray[global.currentLevelIndex] == 5)
	{
		room_goto(CastleLevel1)
	}
	else if(global.levelArray[global.currentLevelIndex] == 6)
	{
		room_goto(CastleLevel2)
	}
	else if(global.levelArray[global.currentLevelIndex] == 7)
	{
		room_goto(CastleLevel3)
	}
	else if(global.levelArray[global.currentLevelIndex] == 8)
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
	room_goto(BossLevel)
}