picons = [sprAttackIcon,sprHealthIcon,sprCritIcon,sprSpeedIcon,
		sprKnockbackIcon,sprBowChargeIcon,sprManaIcon,
		sprP1KnightIcon,sprP1ArcherIcon,sprP1MageIcon,
		sprP2KnightIcon,sprP2ArcherIcon,sprP2MageIcon,
		sprS1KnightIcon,sprS1ArcherIcon,sprS1MageIcon,
		sprS2KnightIcon,sprS2ArcherIcon,sprS2MageIcon, 
		sprBombDashIcon, sprDashIframesIcon, 
		sprCritsHealIcon, sprMoreHealIcon, sprDeathrattleIcon]

ptext = ["Increase Attack","Increase Health","Increase Crit Rate","Increase Speed",
		"Increase Knockback","Increase Bow Charge","Increase Max Mana",
		"Tripower Beam","Storm Arrow","Spellcasting Focus",
		"Helmet of Rage","Magic Arrow","Seeking Flame",
		"Shield Bash","Thunderous Gale","Cone of Cold",
		"Mirror Shield","Wall of Wind","Winter's Embrace", 
		"Trick Bomb", "Boots of Quickness",
		"Dagger of Lifesteal", "Light's Blessing", "Staff of Blight"]

pnum = array_length(picons)

prands = [0,1,2,3]
array_resize(prands,15)
plen = 4

for(i = 0; i < pnum; i++){
	if(global.character == pChar.knight){
		prands[plen] = 4
		plen++
		
		if(!global.primaryUpgrade1){
			prands[plen] = 7
			plen++
		}
		if(!global.primaryUpgrade2){
			prands[plen] = 10
			plen++
		}
		if(!global.secondaryUpgrade1){
			prands[plen] = 13
			plen++
		}
		if(!global.secondaryUpgrade2){
			prands[plen] = 16
			plen++
		}
	}
	else if(global.character == pChar.archer){
		prands[plen] = 5
		plen++
		
		if(!global.primaryUpgrade1){
			prands[plen] = 8
			plen++
		}
		if(!global.primaryUpgrade2){
			prands[plen] = 11
			plen++
		}
		if(!global.secondaryUpgrade1){
			prands[plen] = 14
			plen++
		}
		if(!global.secondaryUpgrade2){
			prands[plen] = 17
			plen++
		}
	}
	else if(global.character == pChar.mage){
		prands[plen] = 6
		plen++
		
		if(!global.primaryUpgrade1){
			prands[plen] = 9
			plen++
		}
		if(!global.primaryUpgrade2){
			prands[plen] = 12
			plen++
		}
		if(!global.secondaryUpgrade1){
			prands[plen] = 15
			plen++
		}
		if(!global.secondaryUpgrade2){
			prands[plen] = 18
			plen++
		}
	}
	
	if(!global.bombDash){
			prands[plen] = 19
			plen++
	}
	if(!global.dashIframes){
			prands[plen] = 20
			plen++
	}
	if(!global.critsHeal){
			prands[plen] = 21
			plen++
	}
	if(!global.hasMoreHealing){
			prands[plen] = 22
			plen++
	}
	if(!global.enemyDeathrattle){
			prands[plen] = 23
			plen++
	}
}

plen -= 1
pvals = [0,1,2]

for(i = 0; i < 3; i++){
	rvalid = false
	while(!rvalid){
		pvals[i] = prands[irandom(plen)]
	
		//Validate Value
		rvalid = true
		
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