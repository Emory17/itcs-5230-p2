//Cheat Codes

//Restart

//room restart
if(keyboard_check_pressed(ord("H")))
{
	room_restart()
}

//game restart
if(keyboard_check_pressed(ord("G")))
{
	game_restart()
}

//Testing

//Switch to Knight
if(keyboard_check_pressed(ord("I")))
{
	global.character = pChar.knight
	
	if(instance_exists(objPlayer)){
		objPlayer.sprite_index = sprKnight
		objPlayer.atkObj = objSlash
	}
}

//Switch to Archer
if(keyboard_check_pressed(ord("O")))
{
	global.character = pChar.archer
	
	if(instance_exists(objPlayer)){
		objPlayer.sprite_index = sprArcher
		objPlayer.atkObj = objArrow
	}
}

//Switch to Mage
if(keyboard_check_pressed(ord("P")))
{
	global.character = pChar.mage
	
	if(instance_exists(objPlayer)){
		objPlayer.sprite_index = sprMage
		objPlayer.atkObj = objFireball
	}
}



