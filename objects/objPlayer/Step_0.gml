//Up
if(keyboard_check(ord("W")) and !instance_place(x, y-mspeed, objWall))
{
	y += -mspeed
}

//Down
if(keyboard_check(ord("S")) and !instance_place(x, y+mspeed, objWall))
{
	y += mspeed
}

//Left
if(keyboard_check(ord("A")) and !instance_place(x-mspeed, y, objWall))
{
	x += -mspeed
	image_xscale = -1
}

//Right
if(keyboard_check(ord("D")) and !instance_place(x+mspeed, y, objWall))
{
	x += mspeed
	image_xscale = 1
}

if(mouse_check_button(mb_left) and canAttack){
	atkangle = point_direction(x,y,mouse_x,mouse_y)
	
	instance_create_layer(x + (dcos(atkangle) * 75), y - (dsin(atkangle) * 75), "Instances", atkObj)
	
	canAttack = false
	alarm[1] = atkcooldown
}