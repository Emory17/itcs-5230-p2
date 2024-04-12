/// @description Insert description here
// You can write your code in this editor
/*
x += speedX
y += speedY
*/
if(instance_exists(objPlayer))
{
	direction = point_direction(x,y,objPlayer.x, objPlayer.y)
	speed = defaultSpeed
}