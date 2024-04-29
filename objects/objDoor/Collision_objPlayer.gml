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

room_goto(PowerUpScreen)



