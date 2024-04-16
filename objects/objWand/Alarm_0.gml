if(global.primaryUpgrade1 and global.character == pChar.mage)
	{
		instance_create_layer(x + (dcos(objPlayer.atkangle) * 30), y - (dsin(objPlayer.atkangle) * 30), "Instances", objFireball, 
		{fireballAngle: 15})
		instance_create_layer(x + (dcos(objPlayer.atkangle) * 30), y - (dsin(objPlayer.atkangle) * 30), "Instances", objFireball,
		{fireballAngle: -15})
	}
