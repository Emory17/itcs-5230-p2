/// @description Insert description here
// You can write your code in this editor
show_debug_message(objWarlock.totalHealth)
if(objWarlock.totalHealth + healAmount > objWarlock.totalHealth.maxHealth)
{
	objWarlock.totalHealth = objWarlock.maxHealth
}
else
{
	objWarlock.totalHealth += healAmount
}
show_debug_message(objWarlock.totalHealth)