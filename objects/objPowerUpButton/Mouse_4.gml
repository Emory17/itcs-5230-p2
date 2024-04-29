applyPowerUp(pvalue)

global.enemyDamageMultiplier *= 1.05
global.enemyHealthMultiplier *= 1.1

if(global.currentLevelIndex <= 4)
{
	if(global.levelArray[global.currentLevelIndex] == 0)
	{
		enemySpawner(ForestLevel1)
		room_goto(ForestLevel1)
	}
	else if(global.levelArray[global.currentLevelIndex] == 1)
	{
		enemySpawner(ForestLevel2)
		room_goto(ForestLevel2)
	}
	else if(global.levelArray[global.currentLevelIndex] == 2)
	{
		enemySpawner(ForestLevel3)
		room_goto(ForestLevel3)
	}
	else if(global.levelArray[global.currentLevelIndex] == 3)
	{
		enemySpawner(ForestLevel4)
		room_goto(ForestLevel4)
	}
	else
	{
		enemySpawner(ForestLevel5)
		room_goto(ForestLevel5)
	}
}
else if(global.currentLevelIndex <= 9 and global.currentLevelIndex >= 5)
{
	if(global.levelArray[global.currentLevelIndex] == 5)
	{
		enemySpawner(CastleLevel1)
		room_goto(CastleLevel1)
	}
	else if(global.levelArray[global.currentLevelIndex] == 6)
	{
		enemySpawner(CastleLevel2)
		room_goto(CastleLevel2)
	}
	else if(global.levelArray[global.currentLevelIndex] == 7)
	{
		enemySpawner(CastleLevel3)
		room_goto(CastleLevel3)
	}
	else if(global.levelArray[global.currentLevelIndex] == 8)
	{
		enemySpawner(CastleLevel4)
		room_goto(CastleLevel4)
	}
	else
	{
		enemySpawner(CastleLevel5)
		room_goto(CastleLevel5)
	}
}
else
{
	room_goto(BossLevel)
}