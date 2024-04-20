picons = [sprAttackIcon,sprHealthIcon,sprCritIcon,sprSpeedIcon,
		sprKnockbackIcon,sprBowChargeIcon,sprManaIcon,
		sprP1KnightIcon,sprP1ArcherIcon,sprP1MageIcon,
		sprP2KnightIcon,sprP2ArcherIcon,sprP2MageIcon,
		sprS1KnightIcon,sprS1ArcherIcon,sprS1MageIcon,
		sprS2KnightIcon,sprS2ArcherIcon,sprS2MageIcon]

ptext = ["Increase Attack","Increase Health","Increase Crit Rate","Increase Speed",
		"Increase Knockback","Increase Bow Charge","Increase Max Mana",
		"Greatsword","Storm Arrow","Spellcasting Focus",
		"Tripower","Magic Arrow","Seeking Flame",
		"Shield Bash","Trick Bomb","Cone of Cold",
		"Mirror Shield","Boots of Quickness","Winter's Embrace"]

pnum = array_length(picons) - 1

pvals = [0,1,2]

for(i = 0; i < 3; i++){
	rvalid = false
	while(!rvalid){
		pvals[i] = irandom(pnum)
	
		//Validate Value
		rvalid = true
		
		//Normalize Character Stat Boosts
		if(pvals[i] == 4 || pvals[i] == 5 || pvals[i] == 6)
		{
			switch(global.character){
				case pChar.knight:
					pvals[i] = 4
				break;
				
				case pChar.archer:
					pvals[i] = 5
				break;
				
				case pChar.mage:
					pvals[i] = 6
				break;
			}
		}
	
		//Normalize Character Primary 1
		if(pvals[i] == 7 || pvals[i] == 8 || pvals[i] == 9)
		{
			if(global.primaryUpgrade1){
				rvalid = false;
			}
			else{
				switch(global.character){
					case pChar.knight:
						pvals[i] = 7
					break;
				
					case pChar.archer:
						pvals[i] = 8
					break;
				
					case pChar.mage:
						pvals[i] = 9
					break;
				}
			}
		}
		
		//Normalize Character Primary 2
		if(pvals[i] == 10 || pvals[i] == 11 || pvals[i] == 12)
		{
			if(global.primaryUpgrade2){
				rvalid = false;
			}
			else{
				switch(global.character){
					case pChar.knight:
						pvals[i] = 10
					break;
				
					case pChar.archer:
						pvals[i] = 11
					break;
				
					case pChar.mage:
						pvals[i] = 12
					break;
				}
			}
		}
		
		//Normalize Character Secondary 1
		if(pvals[i] == 13 || pvals[i] == 14 || pvals[i] == 15)
		{
			if(global.secondaryUpgrade1){
				rvalid = false;
			}
			else{
				switch(global.character){
					case pChar.knight:
						pvals[i] = 13
					break;
				
					case pChar.archer:
						pvals[i] = 14
					break;
				
					case pChar.mage:
						pvals[i] = 15
					break;
				}
			}
		}
		
		//Normalize Character Secondary 2
		if(pvals[i] == 16 || pvals[i] == 17 || pvals[i] == 18)
		{
			if(global.secondaryUpgrade2){
				rvalid = false;
			}
			else{
				switch(global.character){
					case pChar.knight:
						pvals[i] = 16
					break;
				
					case pChar.archer:
						pvals[i] = 17
					break;
				
					case pChar.mage:
						pvals[i] = 18
					break;
				}
			}
		}
		
		if(rvalid){
			for(j = i - 1; j >= 0; j--)
			{
				if(pvals[i] == pvals[j])
				{
					rvalid = false
					break;
				}
			}
		}
	}
}

button0 = instance_create_layer(480,750,"Instances",objPowerUpButton)
button0.pvalue = pvals[0]
button0.picon = picons[pvals[0]]
button0.textval = ptext[pvals[0]]

button1 = instance_create_layer(960,750,"Instances",objPowerUpButton)
button1.pvalue = pvals[1]
button1.picon = picons[pvals[1]]
button1.textval = ptext[pvals[1]]

button2 = instance_create_layer(1440,750,"Instances",objPowerUpButton)
button2.pvalue = pvals[2]
button2.picon = picons[pvals[2]]
button2.textval = ptext[pvals[2]]