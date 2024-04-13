other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
damageEnemy(other, 0, self, true)
if(!other.frozen)
	instance_create_depth(other.x,other.y,-2,objIceBlock)
	other.frozen = true


