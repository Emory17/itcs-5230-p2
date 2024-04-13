if(!other.invincible)
{
	other.hitAngle = atkangle
	other.knockbackPerTick = knockbackAmt;

	damageEnemy(other, arrowDamage, self, true)
	instance_destroy()
}
