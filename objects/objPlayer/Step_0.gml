//Up
if(keyboard_check(ord("W")) and !instance_place(x, y-mspeed, objWall))
{
	vchange += -mspeed
}

//Down
if(keyboard_check(ord("S")) and !instance_place(x, y+mspeed, objWall))
{
	vchange += mspeed
}

//Left
if(keyboard_check(ord("A")) and !instance_place(x-mspeed, y, objWall))
{
	hchange += -mspeed
	image_xscale = -1
}

//Right
if(keyboard_check(ord("D")) and !instance_place(x+mspeed, y, objWall))
{
	hchange += mspeed
	image_xscale = 1
}

if(vchange != 0){
	if(hchange != 0){
		vchange *= sqrt(0.5)
	}
	
	y += vchange
}

if(hchange != 0){
	if(vchange != 0){
		hchange *= sqrt(0.5)
	}
	
	x += hchange
}

vchange = 0
hchange = 0

if(mouse_check_button(mb_left) and canAttack){
	atkangle = point_direction(x,y,mouse_x,mouse_y)
	
	instance_create_layer(x + (dcos(atkangle) * 75), y - (dsin(atkangle) * 75), "Instances", atkObj)
	
	canAttack = false
	alarm[1] = atkcooldown
}