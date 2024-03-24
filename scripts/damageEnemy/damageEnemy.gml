function damageEnemy(enemy, damage, object){
	if(!instance_exists(enemy.hitobject))
	{
		enemy.hitobject = noone
	}
	
	if(enemy.hitobject == noone or enemy.hitobject != object)
	{
		//audio_play_sound(enemyHit,1,false);
		enemy.totalHealth -= damage
		enemy.hitobject = object
		if(enemy.totalHealth <= 0){
			//audio_play_sound(enemyDies,1,false);
			instance_destroy(enemy)
		}
	}
}