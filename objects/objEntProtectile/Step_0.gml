/// @description Insert description here
// You can write your code in this editor

timeTillDestroy++
trackingTime++

if(instance_exists(objPlayer) and trackingTime < 60)
{
	direction = point_direction(x,y,objPlayer.x, objPlayer.y)
	speed = defaultSpeed
}

if(timeTillDestroy == 200)
{
	timeTillDestroy = 0
	instance_destroy()
}

blocked = false;