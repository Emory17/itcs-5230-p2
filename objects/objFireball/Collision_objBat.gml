other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
if(other.frozen && global.secondaryUpgrade2)
	damageEnemyTertiary(other, round(fireballDamage * 1.5), self, true)
else
	damageEnemyTertiary(other, fireballDamage, self, true)
instance_destroy()



