if(!other.invincible)
{
	other.hitAngle = atkangle
	other.knockbackPerTick = knockbackAmt;
	if(other.frozen && global.secondaryUpgrade2)
		damageEnemyTertiary(other, round(deathrattleDamage * 1.5), self, true)
	else
		damageEnemyTertiary(other, deathrattleDamage, self, true)
	instance_destroy()
}
