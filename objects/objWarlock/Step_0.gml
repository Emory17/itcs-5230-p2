/// @description Insert description here
// You can write your code in this editor
tpFrame++

if(instance_exists(objPlayer) and canShoot == true and canTeleport = false)
{
	
		if(distance_to_object(objPlayer) < enemyVision)
		{
			firing = true
		}
		else
		{
			firing = false
		}
}

if(canTeleport = true)
{
	if(distance_to_object(objPlayer) < enemyVision)
		audio_play_sound(warlockTeleport, 1, false)
	previousX = x
	previousY = y
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	x = randomX
	y = randomY
	firing = false
	canShoot = false
	alarm[0] = 1
	tpFrame = 0
}




if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}
