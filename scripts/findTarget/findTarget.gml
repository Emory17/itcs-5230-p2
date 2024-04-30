// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findTarget(){
	
	px = 540
	py = 540
	
	cx = x
	cy = y
	
	tint = 8
	
	if(instance_exists(objPlayer))
	{
		px = objPlayer.x
		py = objPlayer.y
	}
	
	cdirect = point_direction(cx,cy,px,py)
	
	found = true
	
	while(!place_meeting(cx,cy,objPlayer))
	{
		cx += dcos(cdirect) * tint
		cy -= dcos(cdirect) * tint
		if(place_meeting(cx,cy,objInnerWall) && !place_meeting(cx,cy,objBox))
		{
			found = false
			break
		}
	}
	
	if(!found)
	{
		show_debug_message("Not Found")
	}
	
	direction = cdirect
}