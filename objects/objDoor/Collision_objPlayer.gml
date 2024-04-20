global.currentLevelIndex++

global.persistentHealth = objPlayer.totalHealth

if(global.hasMoreHealing)
{
	global.persistentHealth += round((100 * global.maxHPMultiplier) * .2)
}
else
{
	global.persistentHealth += round((100 * global.maxHPMultiplier) * .1)
}

room_goto(PowerUpScreen)



