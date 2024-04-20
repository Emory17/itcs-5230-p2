
angle = 0
if(global.enemyDeathrattle)
{
	while(angle != 360)
	{
	angle += 45
	instance_create_depth(x,y,0,objDeathrattle,
		{atkangle: angle})
	}
	
}
objPlayer.totalScore += points