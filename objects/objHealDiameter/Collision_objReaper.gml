/// @description Insert description here
// You can write your code in this editor
show_debug_message(objReaper.totalHealth)
if(objReaper.totalHealth + healAmount > objReaper.totalHealth.maxHealth)
{
	objReaper.totalHealth = objReaper.maxHealth
}
else
{
	objReaper.totalHealth += healAmount
}
show_debug_message(objReaper.totalHealth)