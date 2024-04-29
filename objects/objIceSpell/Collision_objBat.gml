other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
damageEnemy(other, 0, self, true)
if(!other.frozen)
{
	audio_play_sound(playerIceFreeze, 1, false)
	instance_create_depth(other.x,other.y,-2,objIceBlock)
	other.frozen = true
}


