// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findTarget(){
	
	px = 540
	py = 540
	
	cx = x
	cy = y
	
	tint = 32
	
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
		cy -= dsin(cdirect) * tint
		if(place_meeting(cx,cy,objInnerWall) || place_meeting(cx,cy,objHole))
		{
			found = false
			break
		}
	}
	
	if(!found){
		cdirect += 75
	}
	
	direction = cdirect
}