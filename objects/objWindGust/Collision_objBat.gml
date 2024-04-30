other.hitAngle = atkangle
other.knockbackPerTick = knockbackAmt;
damageEnemy(other, 0, self, false)

if(bigWind)
{
	other.x = x - 20 + irandom(40)
	other.y = y - 20 + irandom(40)
}

if(bigWindTime % 5 = 0)
{
	other.totalHealth -= windDamage
	other.isHurt = true;
	other.alarm[9] = 4
	instance_create_depth(x,y,-2,objDamageNumber, 
		{damagePopUp: windDamage,
		})
	audio_stop_sound(playerHitEnemy);
	audio_play_sound(playerHitEnemy,1,false);
}

