/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
path_start(pathName, hsp, path_action_reverse, false)
instance_create_layer(x, y, "Instances", objScythe,
{
	attachedTo : self.id
})