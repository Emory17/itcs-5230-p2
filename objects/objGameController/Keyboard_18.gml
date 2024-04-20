//Cheat Codes

//Switch Between Rooms
if(instance_exists(objPlayer))
{
	if(keyboard_check_pressed(ord("1")))
	{
		room_goto(ForestLevel1)
	}
	if(keyboard_check_pressed(ord("2")))
	{
		room_goto(ForestLevel1)
	}
	if(keyboard_check_pressed(ord("3")))
	{
		room_goto(ForestLevel1)
	}
	if(keyboard_check_pressed(ord("4")))
	{
		room_goto(ForestLevel1)
	}
	if(keyboard_check_pressed(ord("5")))
	{
		room_goto(ForestLevel1)
	}
	if(keyboard_check_pressed(ord("6")))
	{
		room_goto(CastleLevel1)
	}
	if(keyboard_check_pressed(ord("7")))
	{
		room_goto(CastleLevel2)
	}
	if(keyboard_check_pressed(ord("8")))
	{
		room_goto(CastleLevel3)
	}
	if(keyboard_check_pressed(ord("9")))
	{
		room_goto(CastleLevel4)
	}
	if(keyboard_check_pressed(ord("0")))
	{
		room_goto(CastleLevel5)
	}
}

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
		objPlayer.sprite_index = sprWindCharge
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



