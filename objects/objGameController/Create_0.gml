enum pChar{
	knight,
	archer,
	mage
}


//declare every varaible that can be changed
global.maxHPMultiplier = 1
global.damageMultiplier = 1;
global.speedMultiplier = 1;
global.critChance = 10;

global.knockbackMultiplier = 1;
global.bowChargeMultiplier = 1;
global.maxManaMultiplier= 1;

global.hasMoreHealing = false;
global.critsHeal = false;
global.enemiesExplode = false;
global.bombDash = false;
global.dashIFrames = false

//controls if player has greatsword, stormarrow or spellcasting focus
global.primaryUpgrade1 = true; //false
//controls if player has tripower blade, magic tipped arrows or death seeking flame
global.primaryUpgrade2 = true; //false
//controls if player has shield of bashing, trick bomb or cone of cold
global.secondaryUpgrade1 = false;
//controls if player has mirror shield, boots of quickness or winter's embrace
global.secondaryUpgrade2 = false;

global.enemyDamageMultiplier = 1
global.enemyHealthMultiplier = 10

global.currentStage = 1

cleared = false
global.currentLevelIndex = 0

global.levelArray = []