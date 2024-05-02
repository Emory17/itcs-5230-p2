// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemySpawner()
{
	var extraEnemies;
	var index = 0
	var randomX
	var randomY
	var pathEnemy
	var nonPathEnemy
	var sx = 0
	var sy = 0
	
	if(global.currentLevelIndex > 4)
		extraEnemies = round(global.currentLevelIndex) - 4
	else
		extraEnemies = round(global.currentLevelIndex)
	
	while(index != 5 + extraEnemies)
	{
		if(index == 0)
		{
			randomX = irandom_range(125, 1825)
			randomY = irandom_range(95, 990)
			
			pathEnemy = global.pathEnemies[irandom_range(0, global.pathEnemyListLength)]
			if(pathEnemy = objReaper)
			{
				randomX = 128
				randomY = 128
			}
			sx = randomX
			sy = randomY
			instance_create_layer(sx,sy,"Instances",pathEnemy)
		}
		else
		{
			
			randomX = irandom_range(125, 1825)
			randomY = irandom_range(95, 990)
			
			nonPathEnemy = global.nonpathEnemies[irandom_range(0, global.nonpathEnemyListLength)]
			
			sx = randomX
			sy = randomY
			instance_create_layer(sx,sy,"Instances",nonPathEnemy)
		}
		index++
	}
	/*
	//spawn enemy 1(path)
	var randomX = irandom_range(125, 1825)
	var randomY = irandom_range(95, 990)
	var pathEnemy = global.pathEnemies[irandom_range(0, 4)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, pathEnemy)
	
	
	//spawn enemy 2(no path)
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	var nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	
	
	//spawn enemy 3(no path)
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	
	
	//spawn enemy 3(no path)
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	
	
	//spawn enemy 4(no path)
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	
	//spawn enemy 5(no path)
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	*/
}