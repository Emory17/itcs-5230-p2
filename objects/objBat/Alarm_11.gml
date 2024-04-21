instance_create_depth(x,y,-2,objLightningBolt)
totalHealth -= round(objLightningBolt.lightningDamage)
isHurt = true;
alarm[9] = 15
instance_create_depth(x,y,-3,objDamageNumber, 
		{damagePopUp: round(objLightningBolt.lightningDamage),
		})
