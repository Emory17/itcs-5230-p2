other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
if(other.frozen && global.primaryUpgrade2)
	damageEnemyTertiary(other, round(deathrattleDamage * 1.5), self, true)
else
	damageEnemyTertiary(other, deathrattleDamage, self, true)
instance_destroy()
