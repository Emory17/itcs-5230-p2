//Orbiting Fireballs

audio_play_sound(warlockSummon, 1, false)
nx = objNecrolich.x
ny = objNecrolich.y

instance_create_layer(nx + (dcos(0) * 100), ny - (dsin(0) * 100), "Instances", objNecrolichOrbiting,
{
	attachedToo : objNecrolich.id,
	positionAngle : 0,
	chargetime: 60
})

instance_create_layer(nx + (dcos(72) * 100), ny - (dsin(72) * 100), "Instances", objNecrolichOrbiting,
{
	attachedToo : objNecrolich.id,
	positionAngle : 72,
	chargetime: 70
})

instance_create_layer(nx + (dcos(0) * 100), ny - (dsin(0) * 100), "Instances", objNecrolichOrbiting,
{
	attachedToo : objNecrolich.id,
	positionAngle : 144,
	chargetime: 80
})

instance_create_layer(nx + (dcos(0) * 100), ny - (dsin(0) * 100), "Instances", objNecrolichOrbiting,
{
	attachedToo : objNecrolich.id,
	positionAngle : 216,
	chargetime: 90
})

instance_create_layer(nx + (dcos(0) * 100), ny - (dsin(0) * 100), "Instances", objNecrolichOrbiting,
{
	attachedToo : objNecrolich.id,
	positionAngle : 288,
	chargetime: 100
})

