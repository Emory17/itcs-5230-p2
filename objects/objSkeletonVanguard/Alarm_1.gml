/// @description Insert description here
// You can write your code in this editor
throwing = false
direction = point_direction(x,y,objPlayer.x, objPlayer.y)
if(!frozen)
{
	audio_play_sound(vanguardSpearThrow, 1, false)
	instance_create_layer(x, y, "Instances", protectileSpawn, {direction: direction})
}
