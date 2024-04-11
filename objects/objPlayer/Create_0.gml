atkangle = 0
atkObj = objSlash
comboCooldown = 0;
attacking = false;
alarm[2] = 3
moving = false;
hchange = 0
vchange = 0
dashing = false;
dashingSpeed = mspeed * 2;
canDash = false;
alarm[4] = 5;
lastSpeedX = 0;
lastSpeedY = 0;
shieldUp = false;

alarm[1] = atkcooldown

if(!variable_global_exists("character"))
{
	global.character = pChar.knight
}

if(global.character == pChar.knight){
	sprite_index = sprKnight
	atkObj = objSlash
}
else if(global.character == pChar.archer){
	sprite_index = sprArcher
	atkObj = objArrow
}
else if(global.character == pChar.mage){
	sprite_index = sprMage
	atkObj = objFireball
}

instance_create_depth(x,y,-1,objBow)
instance_create_depth(x,y,-1,objWand)
instance_create_depth(x,y,0,objPointer)
instance_create_depth(x,y,0,objShield)