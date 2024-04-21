if(objPlayer.shieldUp)
{
	blocked = true;
	instance_destroy()
	objPlayer.rage += 5
	other.mirrorCharge++
	other.chargeAnimation = true
}
