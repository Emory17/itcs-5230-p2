/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
randomX = 0
randomY = 0
instance_create_layer(x, y, "Instances", objWarlockProjectile,
{
	attachedToo : self.id
})
canTeleport = false