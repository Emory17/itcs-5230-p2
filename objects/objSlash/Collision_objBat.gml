other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;

if((other.hitobject == noone or other.hitobject != self) and rageLevel = 2)
{
	objPlayer.totalHealth += 2
	instance_create_depth(objPlayer.x,objPlayer.y,-3,objDamageNumber, 
		{damagePopUp: 2,
		 heal: true
		})
}
damageEnemy(other, swordDamage, self, true)



