if(objPlayer.shieldUp)
{
	blocked = true;
	instance_destroy()
	objPlayer.rage += 5
	other.mirrorCharge++
	other.chargeAnimation = true
	if(global.secondaryUpgrade2)
		audio_play_sound(playerShieldAbsorb, 1, false)
	else
		audio_play_sound(playerShieldBlock, 1, false)
}
