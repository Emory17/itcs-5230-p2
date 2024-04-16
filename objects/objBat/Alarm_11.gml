instance_create_depth(x,y,-2,objLightningBolt)
totalHealth -= objLightningBolt.lightningDamage
isHurt = true;
alarm[9] = 15
instance_create_depth(x,y,-3,objDamageNumber, 
		{damagePopUp: objLightningBolt.lightningDamage,
		})
