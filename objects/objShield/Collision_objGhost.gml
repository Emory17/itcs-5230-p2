if(objPlayer.shieldUp && !other.invincible)
{
	other.x += (dcos(atkangle) * (knockbackAmt))
	other.y += -(dsin(atkangle) * (knockbackAmt))
}
