function damageEnemy(enemy, damage, object, canCrit){
	didCrit = false
	if(!instance_exists(enemy.hitobject))
	{
		enemy.hitobject = noone
	}
	
	if(enemy.hitobject == noone or enemy.hitobject != object)
	{
		//audio_play_sound(enemyHit,1,false);
		if(canCrit && irandom(100) > (100 - global.critChance))
		{
			didCrit = true;
			damage = round(damage * 1.5)
		}
		enemy.totalHealth -= damage
		enemy.hitobject = object
		enemy.isHurt = true;
		enemy.alarm[9] = 15
		enemy.knockedBack = true
		objPlayer.rage += 5
		instance_create_depth(enemy.x,enemy.y,-3,objDamageNumber, 
		{damagePopUp: damage,
		 crit: didCrit
		})
		enemy.alarm[10] = 8
		if(enemy.totalHealth <= 0){
			//audio_play_sound(enemyDies,1,false);
			instance_destroy(enemy)
		}
	}
}