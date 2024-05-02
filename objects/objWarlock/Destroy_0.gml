angle = 0
if(global.enemyDeathrattle)
{
	audio_play_sound(playerDeathRattle, 1, false)
	while(angle != 360)
	{
	angle += 45
	instance_create_depth(x,y,0,objDeathrattle,
		{atkangle: angle})
	}
	
}
global.totalScore += points
instance_create_depth(x,y,2,objEnemyDeath, 
{image_xscale : image_xscale, image_yscale: image_yscale})
audio_play_sound(enemyDie, 1, false)