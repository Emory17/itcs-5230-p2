//Diagonal Projectiles
audio_play_sound(vampireShot, 1, false)
nx = objNecrolich.x
ny = objNecrolich.y

instance_create_layer(nx + 75, ny - 75, "Instances", objNecrolichDirect,
{
	direction: 45
})

instance_create_layer(nx - 75, ny - 75, "Instances", objNecrolichDirect,
{
	direction: 135
})

instance_create_layer(nx - 75, ny + 75, "Instances", objNecrolichDirect,
{
	direction: 225
})

instance_create_layer(nx + 75, ny + 75, "Instances", objNecrolichDirect,
{
	direction: 315
})