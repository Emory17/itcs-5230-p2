if(instance_exists(objPlayer) && !iceSpell)
{
	instance_create_layer(x + (dcos(objPlayer.atkangle) * 30), y - (dsin(objPlayer.atkangle) * 30), "Instances", objFireball)
	image_index = 0
	image_speed = 0
	objPlayer.canAttack = true;
	objPlayer.attacking = false;
	alarm[0] = 5
	audio_play_sound(playerFireball,1,false);
}

if(instance_exists(objPlayer) && iceSpell)
{
	instance_create_layer(x + (dcos(objPlayer.atkangle) * 10), y - (dsin(objPlayer.atkangle) * 10), "Instances", objIceSpell)
	image_index = 0
	image_speed = 0
	objPlayer.canAttack = true;
	objPlayer.attacking = false;
	sprite_index = sprWand
	iceSpell = false
	if(global.secondaryUpgrade1)
		instance_create_depth(x, y, 0, objIcicleOrigin, {icicleAngle: objPlayer.atkangle})
	audio_play_sound(playerIceSpell,1,false);
}