if(instance_exists(objPlayer))
{
	instance_create_layer(x + (dcos(objPlayer.atkangle) * 30), y - (dsin(objPlayer.atkangle) * 30), "Instances", objFireball)
	image_index = 0
	image_speed = 0
	objPlayer.canAttack = true;
	objPlayer.attacking = false;
}