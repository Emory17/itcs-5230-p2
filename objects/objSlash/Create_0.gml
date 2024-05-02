atkangle = objPointer.direction

depth = -1


sizeModifier = 0


image_xscale = 2.5 + sizeModifier

if(objPlayer.comboCooldown > 60 || objPlayer.comboCooldown = 0)
{
	if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = 3 + sizeModifier
	}
	else
	{
		image_yscale = -3 - sizeModifier
	}
	objPlayer.comboCooldown = 1;
}
else
{
	if(atkangle <= 90 || atkangle >= 270)
	{
		image_yscale = -3 - sizeModifier
	}
	else
	{
		image_yscale = 3 + sizeModifier
	}
	objPlayer.comboCooldown = 0;
}


image_angle = atkangle
image_speed = 1.5

alarm[0] = atime
alarm[1] = 5

if(global.primaryUpgrade2)
	{
		if(objPlayer.rage > 100)
		{
			rageLevel = 2
			sprite_index = sprSlashSuperRage
			swordDamage = round(20 * global.damageMultiplier)
		}
		else if(objPlayer.rage > 50)
		{
			rageLevel = 1
			sprite_index = sprSlashRage
			swordDamage = round(20 * global.damageMultiplier)
		}
	}
	
	
