// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemySpawner(currentRoom)
{
	var randomX = irandom_range(125, 1825)
	var randomY = irandom_range(95, 990)
	var pathEnemy = global.pathEnemies[irandom_range(0, 4)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, pathEnemy)
	
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	var nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
	
	randomX = irandom_range(125, 1825)
	randomY = irandom_range(95, 990)
	nonPathEnemy = global.nonpathEnemies[irandom_range(0, 5)]
	x = randomX
	y = randomY
	room_instance_add(currentRoom, x, y, nonPathEnemy)
}