atkangle = 0
atkObj = objSlash
comboCooldown = 0;
attacking = false;

hchange = 0
vchange = 0

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