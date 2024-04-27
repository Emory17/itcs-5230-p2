/// @description Insert description here
// You can write your code in this editor
show_debug_message(objWerewolf.totalHealth)
if(objWerewolf.totalHealth + healAmount > objWerewolf.totalHealth.maxHealth)
{
	objWerewolf.totalHealth = objWerewolf.maxHealth
}
else
{
	objWerewolf.totalHealth += healAmount
}
show_debug_message(objWerewolf.totalHealth)