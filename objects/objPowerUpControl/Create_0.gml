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
		"Tripower Beam","Magic Arrow","Spellcasting Focus",
		"Helmet of Rage","Storm Arrow","Seeking Flame",
		"Shield Bash","Thunderous Gale","Icicle Barrage",
		"Mirror Shield","Wall of Wind","Winter's Embrace", 
		"Trick Bomb", "Boots of Quickness",
		"Dagger of Lifesteal", "Light's Blessing", "Staff of Blight"]
	
pLine1 = ["Increases Damage by 20%","Increases Health by 20% and heals you",
		"Increases Critical Hit Rate by 10%","Increases Speed by 20%",
		"Increases Knockback by 15%","20% faster bow charge","Increases Max Mana by 20%",
		"Sword slashes fire piercing sword beams","Arrows pierce targets","Fire 3 Fireballs instead of 1",
		"Build rage by slashing enemies and","Arrows strikes enemies with lightning after","Fireballs automatically seek enemies",
		"Dash while shielding to perform a shield","Hold right click then release to ","Ice spell is followed up by a barrage",
		"Absorb projectiles with you shield, then","Fire 3 wind gusts instead of 1 that","Ice spell costs 65 mana instead of 80.", 
		"Leave behind a bomb when dashing", "Briefly become invincible while dashing",
		"Critical hits heal you for a small amount", "Heal for 40% of max HP between rooms", "Enemies create damaging projectiles on "]

pLine2 = ["","","","",
		"","","",
		"","","",
		"blocking projectiles. More rage increases","a short delay. Charged shots create an","",
		"bash attack, protecting you, knocking back","create a large tornado that sucks up","of damaging icicles 3 times",
		"press left click while shielding to fire","sit in place and act as cover","Deal more damage to frozen enemies", 
		"", "",
		"", "instead of 20%", "death"]

pLine3 = ["","","","",
		"","","",
		"","","",
		"damage and very high rage heals you.","electric discharge AOE.","",
		"enemies and dealing damage","enemies and deals damage","",
		"a piercing blast of energy","","with any attack", 
		"", "",
		"", "", ""]

prands = [0,1,2,3]

plen = 4

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
button0.descriptionLine1 = pLine1[pvals[0]]
button0.descriptionLine2 = pLine2[pvals[0]]
button0.descriptionLine3 = pLine3[pvals[0]]

button1 = instance_create_layer(960,750,"Instances",objPowerUpButton)
button1.pvalue = pvals[1]
button1.picon = picons[pvals[1]]
button1.textval = ptext[pvals[1]]
button1.descriptionLine1 = pLine1[pvals[1]]
button1.descriptionLine2 = pLine2[pvals[1]]
button1.descriptionLine3 = pLine3[pvals[1]]

button2 = instance_create_layer(1440,750,"Instances",objPowerUpButton)
button2.pvalue = pvals[2]
button2.picon = picons[pvals[2]]
button2.textval = ptext[pvals[2]]
button2.descriptionLine1 = pLine1[pvals[2]]
button2.descriptionLine2 = pLine2[pvals[2]]
button2.descriptionLine3 = pLine3[pvals[2]]