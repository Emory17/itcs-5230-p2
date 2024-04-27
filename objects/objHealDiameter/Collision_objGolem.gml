/// @description Insert description here
// You can write your code in this editor
show_debug_message(objGolem.totalHealth)
if(objGolem.totalHealth + healAmount > objGolem.totalHealth.maxHealth)
{
	objGolem.totalHealth = objGolem.maxHealth
}
else
{
	objGolem.totalHealth += healAmount
}
show_debug_message(objGolem.totalHealth)