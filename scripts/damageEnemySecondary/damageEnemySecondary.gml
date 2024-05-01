//similar code but for secondary objects that should not override hitobject

function damageEnemySecondary(enemy, damage, object, canCrit){
	didCrit = false
	if(!instance_exists(enemy.hitobject2))
	{
		enemy.hitobject2 = noone
	}
	
	if(enemy.hitobject2 == noone or enemy.hitobject2 != object)
	{
		audio_play_sound(playerHitEnemy,1,false);
		if(canCrit && irandom(100) > (100 - global.critChance))
		{
			audio_play_sound(playerCirt,1,false);
			didCrit = true;
			damage = round(damage * 1.5)
				if(global.critsHeal)
				{
				audio_play_sound(playerHeal, 1, false)
				objPlayer.totalHealth += 2
				instance_create_depth(objPlayer.x,objPlayer.y,-3,objDamageNumber, 
						{damagePopUp: 2,
				heal: true
					})
				}
		}
		enemy.totalHealth -= damage
		enemy.hitobject2 = object
		enemy.isHurt = true;
		enemy.alarm[9] = 15
		enemy.knockedBack = true
		instance_create_layer(object.x, object.y, "Instances", obj_hitspark);
		objPlayer.rage += 3
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