/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(objPlayer) < enemyVision)
	audio_play_sound(warlockSummon, 1, false)
instance_create_layer(x + (dcos(0) * 50), y - (dsin(0) * 50), "Instances", objWarlockProjectile,
{
	attachedToo : self.id
})

instance_create_layer(x + (dcos(120) * 50), y - (dsin(120) * 50), "Instances", objWarlockProjectile,
{
	attachedToo : self.id,
	positionAngle : 120
})

instance_create_layer(x + (dcos(240) * 50), y - (dsin(240) * 50), "Instances", objWarlockProjectile,
{
	attachedToo : self.id,
	positionAngle : 240
})

alarm[1] = 120
image_speed = 0