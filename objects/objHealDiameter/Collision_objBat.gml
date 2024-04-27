/// @description Insert description here
// You can write your code in this editor
show_debug_message(objBat.totalHealth)
if(objBat.totalHealth + healAmount > objBat.totalHealth.maxHealth)
{
	objBat.totalHealth = objBat.maxHealth
}
else
{
	objBat.totalHealth += healAmount
}
show_debug_message(objBat.totalHealth)