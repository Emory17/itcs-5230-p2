//Cardinal Projectiles
audio_play_sound(vampireShot, 1, false)
nx = objNecrolich.x
ny = objNecrolich.y

instance_create_layer(nx + 100, ny, "Instances", objNecrolichDirect,
{
	direction: 0
})

instance_create_layer(nx, ny - 100, "Instances", objNecrolichDirect,
{
	direction: 90
})

instance_create_layer(nx - 100, ny, "Instances", objNecrolichDirect,
{
	direction: 180
})

instance_create_layer(nx, ny + 100, "Instances", objNecrolichDirect,
{
	direction: 270
})