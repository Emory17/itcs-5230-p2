show_debug_message("~")

if(canAttack){
	show_debug_message("~~~")
	atkangle = point_direction(x,y,mouse_x,mouse_y)
	
	instance_create_layer(x, y, "Instances", objSlash)
	
	canAttack = false
	alarm[1] = atkcooldown
}