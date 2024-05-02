function applyPowerUp(pval){
	switch (pval)
	{
	    case 0:
	        global.damageMultiplier *= 1.2
	    break;

	    case 1:
			previousHP = global.maxHPMultiplier
	        global.maxHPMultiplier *= 1.2
			tempHP = round(global.maxHPMultiplier - previousHP)
			global.persistentHealth += tempHP
	    break;

	    case 2:
	        global.critChance += 15
	    break;
		
		case 3:
	        global.speedMultiplier *= 1.2
	    break;
		
		case 4:
	        global.knockbackMultiplier *= 1.15
	    break;

	    case 5:
	        global.bowChargeMultiplier *= 1.2
	    break;
		
		case 6:
	        global.maxManaMultiplier *= 1.2
	    break;
		
		case 7:
			global.primaryUpgrade1 = true
		break;
		
		case 8:
			global.primaryUpgrade1 = true
		break;
		
		case 9:
			global.primaryUpgrade1 = true
		break;
		
		case 10:
			global.primaryUpgrade2 = true
		break;
		
		case 11:
			global.primaryUpgrade2 = true
		break;
		
		case 12:
			global.primaryUpgrade2 = true
		break;
		
		case 13:
			global.secondaryUpgrade1 = true
		break;
		
		case 14:
			global.secondaryUpgrade1 = true
		break;
		
		case 15:
			global.secondaryUpgrade1 = true
		break;
		
		case 16:
			global.secondaryUpgrade2 = true
		break;
		
		case 17:
			global.secondaryUpgrade2 = true
		break;
		
		case 18:
			global.secondaryUpgrade2 = true
		break;
		
		case 19:
			global.bombDash = true;
		break;
		
		case 20:
			global.dashIframes = true;
		break;
		
		case 21:
			global.critsHeal = true;
		break;
		
		case 22:
			global.hasMoreHealing = true;
		break;
		
		case 23:
			global.enemyDeathrattle = true;
		break;
		
		
			
	}
}