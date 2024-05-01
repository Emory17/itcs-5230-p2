other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;

if((other.hitobject == noone or other.hitobject != self) and rageLevel = 2)
{
	audio_play_sound(playerSuperRageAttack, 1, false)
	audio_play_sound(playerHeal, 1, false)
	objPlayer.totalHealth += 2
	instance_create_depth(objPlayer.x,objPlayer.y,-3,objDamageNumber, 
		{damagePopUp: 2,
		 heal: true
		})
}
damageEnemy(other, swordDamage, self, true)



