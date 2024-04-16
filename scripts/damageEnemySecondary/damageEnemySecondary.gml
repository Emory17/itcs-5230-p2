//similar code but for secondary objects that should not override hitobject

function damageEnemySecondary(enemy, damage, object, canCrit){
	didCrit = false
	if(!instance_exists(enemy.hitobject2))
	{
		enemy.hitobject2 = noone
	}
	
	if(enemy.hitobject2 == noone or enemy.hitobject2 != object)
	{
		//audio_play_sound(enemyHit,1,false);
		if(canCrit && irandom(100) > (100 - global.critChance))
		{
			didCrit = true;
			damage = round(damage * 1.5)
		}
		enemy.totalHealth -= damage
		enemy.hitobject2 = object
		enemy.isHurt = true;
		enemy.alarm[9] = 15
		enemy.knockedBack = true
		objPlayer.rage += 2
		instance_create_depth(enemy.x,enemy.y,-3,objDamageNumber, 
		{damagePopUp: damage,
		 crit: didCrit,
		 secondary: true
		})
		enemy.alarm[10] = 8
		if(enemy.totalHealth <= 0){
			//audio_play_sound(enemyDies,1,false);
			instance_destroy(enemy)
		}
	}
}