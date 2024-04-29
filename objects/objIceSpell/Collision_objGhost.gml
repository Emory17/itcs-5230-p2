if(!other.invincible)
{
other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
audio_play_sound(playerIceFreeze, 1, false)
damageEnemy(other, 0, self, true)
}
