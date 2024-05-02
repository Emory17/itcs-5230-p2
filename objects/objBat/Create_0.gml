hitobject = noone
hitobject2 = noone
hitobject3 = noone
isHurt = false;
knockedBack = false;
lightning = false;
depth = 0

while(place_meeting(x,y,objInnerWall) || place_meeting(x,y,objPlayer) 
|| place_meeting(x,y,objHole) || place_meeting(x,y,objBox))
{
	x = irandom_range(125, 1825)
	y = irandom_range(95, 990)
}

