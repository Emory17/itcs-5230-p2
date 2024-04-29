
if(totalHealth + other.healAmount > maxHealth)
	{
		totalHealth = maxHealth
	}
	else
	{
		totalHealth += other.healAmount
	}
	
	instance_create_depth(x,y,-3,objDamageNumber, 
		{damagePopUp: other.healAmount,
		heal: true})


