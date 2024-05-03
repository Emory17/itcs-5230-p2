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
		room_goto(ForestLevel2)
	}
	if(keyboard_check_pressed(ord("3")))
	{
		room_goto(ForestLevel3)
	}
	if(keyboard_check_pressed(ord("4")))
	{
		room_goto(ForestLevel4)
	}
	if(keyboard_check_pressed(ord("5")))
	{
		room_goto(ForestLevel5)
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
	if(keyboard_check_pressed(vk_return))
	{
		room_goto(BossLevel)
	}
}

//Give power ups to player
if(instance_exists(objPlayer))
{
	if(global.character == pChar.knight)
	{
		///all classes
		if(keyboard_check_pressed(ord("K")))
		{
			applyPowerUp(0)
		}
		if(keyboard_check_pressed(ord("L")))
		{
			applyPowerUp(1)
		}
		if(keyboard_check_pressed(ord("M")))
		{
			applyPowerUp(2)
		}
		if(keyboard_check_pressed(ord("N")))
		{
			applyPowerUp(3)
		}
		if(keyboard_check_pressed(ord("T")))
		{
			applyPowerUp(4)
		}
		if(keyboard_check_pressed(ord("U")))
		{
			if(global.bombDash = false)
			{
				applyPowerUp(19)
			}
		}
		if(keyboard_check_pressed(ord("V")))
		{
			if(global.dashIframes = false)
			{
				applyPowerUp(20)
			}
		}
		if(keyboard_check_pressed(ord("X")))
		{
			if(global.critsHeal = false)
			{
				applyPowerUp(21)
			}
		}
		if(keyboard_check_pressed(ord("Y")))
		{
			if(global.hasMoreHealing = false)
			{
				applyPowerUp(22)
			}
		}
		if(keyboard_check_pressed(ord("Z")))
		{
			if(global.enemyDeathrattle = false)
			{
				applyPowerUp(23)
			}
		}
		
		//class specific
		if(keyboard_check_pressed(ord("B")))
		{
			if(global.primaryUpgrade1 = false)
			{
				applyPowerUp(7)
			}
		}
		if(keyboard_check_pressed(ord("C")))
		{
			if(global.primaryUpgrade2 = false)
			{
				applyPowerUp(10)
			}
		}
		if(keyboard_check_pressed(ord("E")))
		{
			if(global.secondaryUpgrade1 = false)
			{
				applyPowerUp(13)
			}
		}
		if(keyboard_check_pressed(ord("Q")))
		{
			if(global.secondaryUpgrade2 = false)
			{
				applyPowerUp(16)
			}
		}

	}
	if(global.character == pChar.archer)
	{
		///all classes
		if(keyboard_check_pressed(ord("K")))
		{
			applyPowerUp(0)
		}
		if(keyboard_check_pressed(ord("L")))
		{
			applyPowerUp(1)
		}
		if(keyboard_check_pressed(ord("M")))
		{
			applyPowerUp(2)
		}
		if(keyboard_check_pressed(ord("N")))
		{
			applyPowerUp(3)
		}
		if(keyboard_check_pressed(ord("T")))
		{
			applyPowerUp(5)
		}
		if(keyboard_check_pressed(ord("U")))
		{
			if(global.bombDash = false)
			{
				applyPowerUp(19)
			}
		}
		if(keyboard_check_pressed(ord("V")))
		{
			if(global.dashIframes = false)
			{
				applyPowerUp(20)
			}
		}
		if(keyboard_check_pressed(ord("X")))
		{
			if(global.critsHeal = false)
			{
				applyPowerUp(21)
			}
		}
		if(keyboard_check_pressed(ord("Y")))
		{
			if(global.hasMoreHealing = false)
			{
				applyPowerUp(22)
			}
		}
		if(keyboard_check_pressed(ord("Z")))
		{
			if(global.enemyDeathrattle = false)
			{
				applyPowerUp(23)
			}
		}
		
		//class specific
		if(keyboard_check_pressed(ord("B")))
		{
			if(global.primaryUpgrade1 = false)
			{
				applyPowerUp(8)
			}
		}
		if(keyboard_check_pressed(ord("C")))
		{
			if(global.primaryUpgrade2 = false)
			{
				applyPowerUp(11)
			}
		}
		if(keyboard_check_pressed(ord("E")))
		{
			if(global.secondaryUpgrade1 = false)
			{
				applyPowerUp(14)
			}
		}
		if(keyboard_check_pressed(ord("Q")))
		{
			if(global.secondaryUpgrade2 = false)
			{
				applyPowerUp(17)
			}
		}
	}
	if(global.character == pChar.mage)
	{
		///all classes
		if(keyboard_check_pressed(ord("K")))
		{
			applyPowerUp(0)
		}
		if(keyboard_check_pressed(ord("L")))
		{
			applyPowerUp(1)
		}
		if(keyboard_check_pressed(ord("M")))
		{
			applyPowerUp(2)
		}
		if(keyboard_check_pressed(ord("N")))
		{
			applyPowerUp(3)
		}
		if(keyboard_check_pressed(ord("T")))
		{
			applyPowerUp(6)
		}
		if(keyboard_check_pressed(ord("U")))
		{
			if(global.bombDash = false)
			{
				applyPowerUp(19)
			}
		}
		if(keyboard_check_pressed(ord("V")))
		{
			if(global.dashIframes = false)
			{
				applyPowerUp(20)
			}
		}
		if(keyboard_check_pressed(ord("X")))
		{
			if(global.critsHeal = false)
			{
				applyPowerUp(21)
			}
		}
		if(keyboard_check_pressed(ord("Y")))
		{
			if(global.hasMoreHealing = false)
			{
				applyPowerUp(22)
			}
		}
		if(keyboard_check_pressed(ord("Z")))
		{
			if(global.enemyDeathrattle = false)
			{
				applyPowerUp(23)
			}
		}
		
		//class specific
		if(keyboard_check_pressed(ord("B")))
		{
			if(global.primaryUpgrade1 = false)
			{
				applyPowerUp(9)
			}
		}
		if(keyboard_check_pressed(ord("C")))
		{
			if(global.primaryUpgrade2 = false)
			{
				applyPowerUp(12)
			}
		}
		if(keyboard_check_pressed(ord("E")))
		{
			if(global.secondaryUpgrade1 = false)
			{
				applyPowerUp(15)
			}
		}
		if(keyboard_check_pressed(ord("Q")))
		{
			if(global.secondaryUpgrade2 = false)
			{
				applyPowerUp(18)
			}
		}
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

if(instance_exists(objPlayer))
{
	if(keyboard_check_pressed(vk_lshift)){
		objPlayer.invincible = true
	}
}

//kill all room enemies
if(keyboard_check_pressed(vk_backspace)){
		instance_destroy(objBat)
	}


