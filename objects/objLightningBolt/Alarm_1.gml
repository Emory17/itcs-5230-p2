visible = false

if(willDischarge)
{
	instance_create_depth(x,y,0,objLightningDischarge)
	audio_play_sound(playerLightningDischarge,1,false);
}
depth = -1
