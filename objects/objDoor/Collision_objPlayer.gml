global.currentLevelIndex++

global.persistentHealth = objPlayer.totalHealth

if(global.hasMoreHealing)
{
	global.persistentHealth += round((100 * global.maxHPMultiplier) * .4)
}
else
{
	global.persistentHealth += round((100 * global.maxHPMultiplier) * .2)
}

if(global.currentLevelIndex == 5)
	{
	global.pathEnemyListLength = 4
	global.nonpathEnemyListLength = 7
	global.pathEnemies = [objGolem, objWerewolf, objZombie, objSkeletonVanguard, objReaper]
	global.nonpathEnemies = [objBat, objSkeleton, objGhost, objGhost, objEnt, objVampire, objDarkCleric, objWarlock]
	}
	
room_goto(PowerUpScreen)

