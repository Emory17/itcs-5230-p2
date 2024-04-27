/// @description Insert description here
// You can write your code in this editor
show_debug_message(objVampire.totalHealth)
if(objVampire.totalHealth + healAmount > objVampire.totalHealth.maxHealth)
{
	objVampire.totalHealth = objVampire.maxHealth
}
else
{
	objVampire.totalHealth += healAmount
}
show_debug_message(objVampire.totalHealth)