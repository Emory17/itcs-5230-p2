if(!objPlayer.bashing)
{
	atkangle = objPointer.direction
	image_angle = atkangle
}

if(objPlayer.shieldUp)
{
	visible = true
}
else
{
	visible = false
}


if(instance_exists(objPlayer))
	{
	x = objPointer.x + (dcos(atkangle) * 70)
	y = objPointer.y - (dsin(atkangle) * 70)
	}
	
if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = 1.5
	}
	else
	{
		image_yscale = -1.5
	}
	
if(objPlayer.bashing)
{
	knockbackAmt = 20
}
else
{
	knockbackAmt = 10
}

if(mirrorCharge > 3)
	mirrorCharge = 3
	
if(chargeAnimation = true && global.secondaryUpgrade2)
	image_speed = 1