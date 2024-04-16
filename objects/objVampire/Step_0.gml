/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < enemyVision)
	{
		if(iterator < 91)
		{
			if(iterator == 30 or iterator == 60 or iterator == 90)
			{
				instance_create_layer(x, y, "Instances", protectileSpawn)
			}
			iterator++
		}
		if(iterator == 91)
		{
			iterator = 30
			canShoot = false
			alarm[1]= shotFrequency
		}
			
		

	}
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
