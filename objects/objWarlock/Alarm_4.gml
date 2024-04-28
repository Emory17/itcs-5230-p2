/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x + (dcos(0) * 50) + 35, y - (dsin(0) * 50) + 50, "Instances", objWarlockProjectile,
{
	attachedToo : self.id
})

instance_create_layer(x + (dcos(120) * 50) + 35, y - (dsin(120) * 50) + 50, "Instances", objWarlockProjectile,
{
	attachedToo : self.id,
	positionAngle : 120
})

instance_create_layer(x + (dcos(240) * 50) + 35, y - (dsin(240) * 50) + 50, "Instances", objWarlockProjectile,
{
	attachedToo : self.id,
	positionAngle : 240
})