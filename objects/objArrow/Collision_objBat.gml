other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;


if((other.hitobject == noone or other.hitobject != self) && global.primaryUpgrade2)
{
	other.alarm[11] = lightningTimer
	if(charged)
		other.lightningOrigin = true
	else
		other.lightningOrigin = false
	
}

damageEnemy(other, arrowDamage, self, true)

if(!global.primaryUpgrade1)
	instance_destroy()


