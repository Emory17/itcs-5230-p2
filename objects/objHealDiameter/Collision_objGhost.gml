/// @description Insert description here
// You can write your code in this editor
show_debug_message(objGhost.totalHealth)
if(objGhost.totalHealth + healAmount > objGhost.totalHealth.maxHealth)
{
	objGhost.totalHealth = objGhost.maxHealth
}
else
{
	objGhost.totalHealth += healAmount
}
show_debug_message(objGhost.totalHealth)