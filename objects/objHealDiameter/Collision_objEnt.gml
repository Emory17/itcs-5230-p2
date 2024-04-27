/// @description Insert description here
// You can write your code in this editor
show_debug_message(objEnt.totalHealth)
if(objEnt.totalHealth + healAmount > objEnt.totalHealth.maxHealth)
{
	objEnt.totalHealth = objEnt.maxHealth
}
else
{
	objEnt.totalHealth += healAmount
}
show_debug_message(objEnt.totalHealth)