if(tpass && timeline_position > 210){
	tpass = false
	timeline_position = 0
}

if(tpass2 && timeline_position > 540){
	tpass2 = false
	tpass = true
	timeline_position = 0
}

if(timeline_position > 690){
	tpass = true
	tpass2 = true
	timeline_position = 0
}

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick/4))
	y += -(dsin(hitAngle) * (knockbackPerTick/4))
}


if(sprite_index == sprNecrolichTeleport)
	 image_speed = 3
else
	image_speed = 1