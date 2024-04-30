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
			if(iterator == 60)
				image_speed = 1
			if(iterator == 90)
			{
				if(!frozen)
				{
					audio_play_sound(vampireShot, 1, false)
					instance_create_layer(x, y, "Instances", protectileSpawn, {
						direction : direction})
					instance_create_layer(x, y, "Instances", protectileSpawn, {
						direction : direction + 20})
					instance_create_layer(x, y, "Instances", protectileSpawn, {
						direction : direction - 20})
					alarm[2] = 30
				}
			}
			iterator++
		}
		if(iterator == 91)
		{
			iterator = 0
			canShoot = false
			alarm[1]= shotFrequency
		}
			
		

	}
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}

if(image_index = 2)
	image_speed = 0
	
direction = point_direction(x,y, objPlayer.x, objPlayer.y)
	

if(direction > 270 || direction < 90)
	image_xscale = -1
else
	image_xscale = 1
