image_xscale = 1
image_yscale = 1
image_speed = 6
speed = pspeed
atkangle = direction
depth= 2

if(bigWind)
	alarm[0] = 80;
else if(global.secondaryUpgrade2)
	alarm[0] = 100
else
	alarm[0] = 15;

if(bigWind)
{
	sprite_index = sprBigWindGust
	image_xscale = 1.5
	image_yscale = 1.5
	speed = 5
	alarm[1] = 5
	knockbackAmt = 0
	windDamage = round(2 * global.damageMultiplier)
}
